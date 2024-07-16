# kustomize changes tracked by commits 
### This file generated at Tue Jul 16 04:07:56 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 72211138 to 727b68db on Tue Jul 16 03:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f6a57560..aa1f3d94 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-72211138/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
./commit-72211138/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
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
<h3>1: Staging changes from 72211138 to 727b68db on Tue Jul 16 03:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f6a57560..aa1f3d94 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-72211138/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 72211138 to 727b68db on Tue Jul 16 03:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f6a57560..aa1f3d94 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-72211138/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
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
<h3>2: Production changes from 70d3ecbd to 72211138 on Tue Jul 16 01:41:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 961c0d80..ad85dabd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e8cb595c..e00e5ee3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -41,7 +41,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
<h3>2: Staging changes from 70d3ecbd to 72211138 on Tue Jul 16 01:41:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 961c0d80..ad85dabd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e8cb595c..e00e5ee3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -41,7 +41,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 70d3ecbd to 72211138 on Tue Jul 16 01:41:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 961c0d80..ad85dabd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e8cb595c..e00e5ee3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -41,7 +41,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
<h3>3: Production changes from 08e6f0c2 to 70d3ecbd on Mon Jul 15 18:27:05 2024 </h3>  
 
<details> 
<summary>Git Diff (128 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 87563ac4..482e67a6 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=da64420f8df634736b1aff727155e626ec832dd1
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4d5e88e9..be93a9f0 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=da64420f8df634736b1aff727155e626ec832dd1
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 45f21357..18952610 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3b1a9b5a..1edcc57f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index bffccb00..3779bd6b 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index dc82c0f2..456a2717 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps: 
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
<h3>3: Staging changes from 08e6f0c2 to 70d3ecbd on Mon Jul 15 18:27:05 2024 </h3>  
 
<details> 
<summary>Git Diff (128 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 87563ac4..482e67a6 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=da64420f8df634736b1aff727155e626ec832dd1
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4d5e88e9..be93a9f0 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=da64420f8df634736b1aff727155e626ec832dd1
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 45f21357..18952610 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3b1a9b5a..1edcc57f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index bffccb00..3779bd6b 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index dc82c0f2..456a2717 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-08e6f0c2/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1353c1353
<         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
1783c1783
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
2031d2030
<     enable-step-actions: true
./commit-08e6f0c2/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1353c1353
<         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
1783c1783
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
2031d2030
<     enable-step-actions: true
./commit-08e6f0c2/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1353c1353
<         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
1783c1783
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
2031d2030
<     enable-step-actions: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 08e6f0c2 to 70d3ecbd on Mon Jul 15 18:27:05 2024 </h3>  
 
<details> 
<summary>Git Diff (128 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 87563ac4..482e67a6 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=da64420f8df634736b1aff727155e626ec832dd1
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4d5e88e9..be93a9f0 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=da64420f8df634736b1aff727155e626ec832dd1
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 45f21357..18952610 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3b1a9b5a..1edcc57f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index bffccb00..3779bd6b 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index dc82c0f2..456a2717 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1350,7 +1350,7 @@ spec:
         - -pprof-address
         - "6060"
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1780,7 +1780,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
@@ -2028,6 +2028,7 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
+    enable-step-actions: true
     enable-tekton-oci-bundles: true
     options:
       configMaps: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-08e6f0c2/development/components/pipeline-service/development/kustomize.out.yaml
1220c1220
<         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
1790c1790
<         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
---
>         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057 
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
<h3>4: Production changes from 9d0fdc4a to 08e6f0c2 on Mon Jul 15 17:07:22 2024 </h3>  
 
<details> 
<summary>Git Diff (8848 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/README.adoc b/components/sandbox/tiers/README.adoc
new file mode 100644
index 00000000..3cb70f1e
--- /dev/null
+++ b/components/sandbox/tiers/README.adoc
@@ -0,0 +1,19 @@
+Make changes to tiers in src/ subdirectory. Once satisfied with changes run the following commands
+for each environment type, i.e. staging or production
+
+Pull build, and install the https://github.com/kubesaw/ksctl[ksctl] command-line tool
+
+Production:
+
+To apply any changes src/ run:
+```
+ksctl generate nstemplatetiers --source ./src --out-dir ./production
+
+```
+
+Staging:
+
+To apply any changes src/ run:
+```
+ksctl generate nstemplatetiers --source ./src --out-dir ./staging
+```
\ No newline at end of file
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
new file mode 100644
index 00000000..2d9a507f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio-env.yaml
+- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
new file mode 100644
index 00000000..13653115
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio-env
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+  namespaces:
+  - templateRef: appstudio-env-env-1575256421-1575256421
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: appstudio-env-admin-4171108837-4171108837
+    contributor:
+      templateRef: appstudio-env-contributor-297495683-297495683
+    maintainer:
+      templateRef: appstudio-env-maintainer-1039478644-1039478644
+    viewer:
+      templateRef: appstudio-env-viewer-617892940-617892940
+status: {}
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
new file mode 100644
index 00000000..d1a8e1b5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-admin-4171108837-4171108837
+  namespace: toolchain-host-operator
+spec:
+  revision: 4171108837-4171108837
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-admin
+    objects: []
+  tierName: appstudio-env
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
new file mode 100644
index 00000000..1c598813
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -0,0 +1,142 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-2916842387-2916842387
+  namespace: toolchain-host-operator
+spec:
+  revision: 2916842387-2916842387
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "30"
+            count/routes.route.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
new file mode 100644
index 00000000..f74f6c43
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-contributor-297495683-297495683
+  namespace: toolchain-host-operator
+spec:
+  revision: 297495683-297495683
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-contributor
+    objects: []
+  tierName: appstudio-env
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
new file mode 100644
index 00000000..f11fed14
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -0,0 +1,233 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-env-1575256421-1575256421
+  namespace: toolchain-host-operator
+spec:
+  revision: 1575256421-1575256421
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-env
+        name: ${SPACE_NAME}-env
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      rules:
+      - apiGroups:
+        - authorization.openshift.io
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - networking.k8s.io
+        resources:
+        - ingressclasses
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - persistentvolumes
+        verbs:
+        - view
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: additional-argocd-read
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: edit
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          cpu: 0
+          memory: 0
+          pods: 0
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          count/persistentvolumeclaims: "12"
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: 50Gi
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-env
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: MEMORY_BUILD_LIMIT
+      value: 64Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 32Gi
+  tierName: appstudio-env
+  type: env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
new file mode 100644
index 00000000..f2cc0507
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-maintainer-1039478644-1039478644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1039478644-1039478644
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-maintainer
+    objects: []
+  tierName: appstudio-env
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
new file mode 100644
index 00000000..29081764
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-viewer-617892940-617892940
+  namespace: toolchain-host-operator
+spec:
+  revision: 617892940-617892940
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-viewer
+    objects: []
+  tierName: appstudio-env
+  type: viewer
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
new file mode 100644
index 00000000..aa09f7a6
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-221167138-221167138.yaml
+- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+- tiertemplate-appstudio-viewer-210715919-210715919.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
new file mode 100644
index 00000000..244d324a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-clusterresources-750679343-750679343
+  namespaces:
+  - templateRef: appstudio-tenant-1252037388-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudio-admin-221167138-221167138
+    contributor:
+      templateRef: appstudio-contributor-3696782055-3696782055
+    maintainer:
+      templateRef: appstudio-maintainer-98574726-98574726
+    viewer:
+      templateRef: appstudio-viewer-210715919-210715919
+status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
new file mode 100644
index 00000000..301a8d5d
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-221167138-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 221167138-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
new file mode 100644
index 00000000..dd2e72c5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-750679343-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 750679343-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "30"
+    - name: DEPLOYMENT_QUOTA
+      value: "30"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "30"
+    - name: SERVICE_QUOTA
+      value: "30"
+    - name: CONFIGMAP_QUOTA
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
new file mode 100644
index 00000000..38f77053
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-contributor-3696782055-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 3696782055-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
new file mode 100644
index 00000000..b8bc41a9
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-98574726-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 98574726-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
new file mode 100644
index 00000000..9390957f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-1252037388-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1252037388-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
new file mode 100644
index 00000000..353d94e8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-viewer-210715919-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 210715919-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: viewer
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
new file mode 100644
index 00000000..917073d2
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
new file mode 100644
index 00000000..6c89688f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudiolarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+  namespaces:
+  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudiolarge-admin-1884308846-221167138
+    contributor:
+      templateRef: appstudiolarge-contributor-1884308846-3696782055
+    maintainer:
+      templateRef: appstudiolarge-maintainer-1884308846-98574726
+    viewer:
+      templateRef: appstudiolarge-viewer-1884308846-210715919
+status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
new file mode 100644
index 00000000..98ba5595
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
new file mode 100644
index 00000000..5d180a9a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1884308846-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "100"
+    - name: DEPLOYMENT_QUOTA
+      value: "100"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "100"
+    - name: SERVICE_QUOTA
+      value: "100"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
new file mode 100644
index 00000000..184cd3ed
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1884308846-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
new file mode 100644
index 00000000..45be6e56
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1884308846-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
new file mode 100644
index 00000000..2ac21095
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1884308846-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
new file mode 100644
index 00000000..8203734e
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1884308846-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
new file mode 100644
index 00000000..1b4cff51
--- /dev/null
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- appstudio
+- appstudio-env
+- appstudiolarge
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
new file mode 100644
index 00000000..460e9a1f
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -0,0 +1,128 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-cluster-resources
+objects:
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-deployments
+  spec:
+    quota:
+      hard:
+        count/deployments.apps: "30"
+        count/deploymentconfigs.apps: "30"
+        count/pods: "150"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-replicas
+  spec:
+    quota:
+      hard:
+        count/replicasets.apps: "30"
+        count/replicationcontrollers: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-routes
+  spec:
+    quota:
+      hard:
+        count/ingresses.extensions: "30"
+        count/routes.route.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-jobs
+  spec:
+    quota:
+      hard:
+        count/jobs.batch: "30"
+        count/daemonsets.apps: "30"
+        count/cronjobs.batch: "30"
+        count/statefulsets.apps: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-services
+  spec:
+    quota:
+      hard:
+        count/services: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-bc
+  spec:
+    quota:
+      hard:
+        count/buildconfigs.build.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-secrets
+  spec:
+    quota:
+      hard:
+        count/secrets: "100"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-cm
+  spec:
+    quota:
+      hard:
+        count/configmaps: "100"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}-env
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
diff --git a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
new file mode 100644
index 00000000..f801a266
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
@@ -0,0 +1,231 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-env
+      argocd.argoproj.io/managed-by: gitops-service-argocd
+      # billing labels ref: https://github.com/redhat-appstudio/book/blob/main/ADR/0010-namespace-metadata.md
+      appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+    # The ${SPACE_NAME} here is actually the space (aka workspace) name that is going to be provisioned as environment sub-space (aka sub-workspace).
+    # It's a legacy parameter that needs to be renamed
+    # related story https://issues.redhat.com/browse/CRT-1766
+    name: ${SPACE_NAME}-env
+
+# ServiceAccount to be used by the deployer (eg. ArgoCD) to manage the content of the namespace
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    namespace: ${SPACE_NAME}-env
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    name: additional-argocd-read
+    namespace: ${SPACE_NAME}-env
+  rules:
+  - apiGroups:
+    - authorization.openshift.io
+    - rbac.authorization.k8s.io
+    resources:
+    - roles
+    verbs:
+    - view
+    - list
+    - watch
+  - apiGroups:
+    - networking.k8s.io
+    resources:
+    - ingressclasses
+    verbs:
+    - view
+    - list
+    - watch
+  - apiGroups:
+    - ""
+    resources:
+    - persistentvolumes
+    verbs:
+    - view
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: additional-argocd-read
+    namespace: ${SPACE_NAME}-env
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: additional-argocd-read
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: namespace-manager
+    namespace: ${SPACE_NAME}-env
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: edit
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+
+# Quotas and default limits for not-terminating containers (regular long-running containers)
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-deploy
+    namespace: ${SPACE_NAME}-env
+  spec:
+    scopes:
+    - NotTerminating
+    hard:
+      limits.cpu: "20"
+      limits.memory: ${MEMORY_LIMIT}
+      requests.cpu: 1750m
+      requests.memory: ${MEMORY_REQUEST}
+# and terminating (short-lived containers like build) containers
+# since builds are not supposed to be created in an environment namespace, then the limits are set to zero
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-build
+    namespace: ${SPACE_NAME}-env
+  spec:
+    scopes:
+    - Terminating
+    hard:
+      cpu: 0
+      memory: 0
+      pods: 0
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: storage
+    namespace: ${SPACE_NAME}-env
+  spec:
+    hard:
+      limits.ephemeral-storage: 50Gi
+      requests.storage: 50Gi
+      requests.ephemeral-storage: 50Gi
+      count/persistentvolumeclaims: "12"
+- apiVersion: v1
+  kind: LimitRange
+  metadata:
+    name: resource-limits
+    namespace: ${SPACE_NAME}-env
+  spec:
+    limits:
+    - type: "Container"
+      default:
+        cpu: 2000m
+        memory: 2Gi
+      defaultRequest:
+        cpu: 10m
+        memory: 256Mi
+
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-same-namespace
+    namespace: ${SPACE_NAME}-env
+  spec:
+    podSelector: {}
+    ingress:
+    - from:
+      - podSelector: {}
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-ingress
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: ingress
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-monitoring
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: monitoring
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-codeready-workspaces-operator
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: codeready-workspaces
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-olm-namespaces
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            openshift.io/scc: anyuid
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-console-namespaces
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: console
+    podSelector: {}
+    policyTypes:
+    - Ingress
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: MEMORY_LIMIT
+  value: "32Gi"
+- name: MEMORY_REQUEST
+  value: "32Gi"
+- name: MEMORY_BUILD_LIMIT
+  value: "64Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "32Gi"
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
new file mode 100644
index 00000000..f1c42317
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-admin
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
new file mode 100644
index 00000000..b392cfea
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-contributor
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
new file mode 100644
index 00000000..d9db7266
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-maintainer
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
new file mode 100644
index 00000000..b3ab2182
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-viewer
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/tier.yaml b/components/sandbox/tiers/src/appstudio-env/tier.yaml
new file mode 100644
index 00000000..20a5f968
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/tier.yaml
@@ -0,0 +1,34 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: appstudio-env
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${ENV_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+    spaceRequestConfig:
+      serviceAccountName: namespace-manager
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: ENV_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
new file mode 100644
index 00000000..c387158c
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -0,0 +1,143 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-cluster-resources
+objects:
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-deployments
+  spec:
+    quota:
+      hard:
+        count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+        count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+        count/pods: ${{POD_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-replicas
+  spec:
+    quota:
+      hard:
+        count/replicasets.apps: ${{REPLICASET_QUOTA}}
+        count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-routes
+  spec:
+    quota:
+      hard:
+        count/ingresses.extensions: ${{ROUTE_QUOTA}}
+        count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-jobs
+  spec:
+    quota:
+      hard:
+        count/jobs.batch: "30"
+        count/daemonsets.apps: "30"
+        count/cronjobs.batch: "30"
+        count/statefulsets.apps: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-services
+  spec:
+    quota:
+      hard:
+        count/services: ${{SERVICE_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-bc
+  spec:
+    quota:
+      hard:
+        count/buildconfigs.build.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-secrets
+  spec:
+    quota:
+      hard:
+        count/secrets: ${{SECRET_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-cm
+  spec:
+    quota:
+      hard:
+        count/configmaps: ${{CONFIGMAP_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
+# Quota
+- name: REPLICASET_QUOTA
+  value: "30"
+- name: DEPLOYMENT_QUOTA
+  value: "30"
+- name: POD_QUOTA
+  value: "600"
+- name: ROUTE_QUOTA
+  value: "30"
+- name: SERVICE_QUOTA
+  value: "30"
+- name: CONFIGMAP_QUOTA
+  value: "100"
+- name: SECRET_QUOTA
+  value: "300"
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
new file mode 100644
index 00000000..8de7cf5b
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -0,0 +1,291 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-tenant
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-tenant
+      argocd.argoproj.io/managed-by: gitops-service-argocd
+      # billing labels ref: https://github.com/redhat-appstudio/book/blob/main/ADR/0010-namespace-metadata.md
+      appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+    name: ${SPACE_NAME}-tenant
+
+# Built-n developer environment is available for all users OOTB
+- apiVersion: appstudio.redhat.com/v1alpha1
+  kind: Environment
+  metadata:
+    name: development
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    deploymentStrategy: AppStudioAutomated
+    displayName: Development
+    type: Non-POC
+
+# Quotas and default limits for not-terminating containers (regular long-running containers)
+# and terminating (short-lived containers like build) containers
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-deploy
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    scopes:
+    - NotTerminating
+    hard:
+      limits.cpu: "20"
+      limits.memory: ${MEMORY_LIMIT}
+      requests.cpu: 1750m
+      requests.memory: ${MEMORY_REQUEST}
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-build
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    scopes:
+    - Terminating
+    hard:
+      limits.cpu: ${CPU_BUILD_LIMIT}
+      limits.memory: ${MEMORY_BUILD_LIMIT}
+      requests.cpu: ${CPU_BUILD_REQUEST}
+      requests.memory: ${MEMORY_BUILD_REQUEST}
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: storage
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      limits.ephemeral-storage: 50Gi
+      requests.storage: ${REQUEST_STORAGE}
+      requests.ephemeral-storage: 50Gi
+      count/persistentvolumeclaims: "${COUNT_PVC}"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: toolchain-crds
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/spacerequests.toolchain.dev.openshift.com: "32"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/applications.appstudio.redhat.com: "512"
+      count/componentdetectionqueries.appstudio.redhat.com: "512"
+      count/components.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-build
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/buildpipelineselectors.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-gitops
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/environments.appstudio.redhat.com: "512"
+      count/promotionruns.appstudio.redhat.com: "512"
+      count/deploymenttargetclaims.appstudio.redhat.com: "32"
+      count/deploymenttargetclasses.appstudio.redhat.com: "32"
+      count/deploymenttargets.appstudio.redhat.com: "32"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-integration
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/integrationtestscenarios.appstudio.redhat.com: "512"
+      count/snapshots.appstudio.redhat.com: "1024"
+      count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-release
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/releaseplanadmissions.appstudio.redhat.com: "512"
+      count/releaseplans.appstudio.redhat.com: "512"
+      count/releases.appstudio.redhat.com: "512"
+      count/releasestrategies.appstudio.redhat.com: "512"
+      count/internalrequests.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-enterprisecontract
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-spi
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/spiaccesschecks.appstudio.redhat.com: "512"
+      count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+      count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+      count/spiaccesstokens.appstudio.redhat.com: "512"
+      count/spifilecontentrequests.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: LimitRange
+  metadata:
+    name: resource-limits
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    limits:
+    - type: "Container"
+      default:
+        cpu: 2000m
+        memory: 2Gi
+      defaultRequest:
+        cpu: 10m
+        memory: 256Mi
+
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-same-namespace
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    podSelector: {}
+    ingress:
+    - from:
+      - podSelector: {}
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-ingress
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: ingress
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-monitoring
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: monitoring
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-codeready-workspaces-operator
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: codeready-workspaces
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-olm-namespaces
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            openshift.io/scc: anyuid
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-console-namespaces
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: console
+    podSelector: {}
+    policyTypes:
+    - Ingress
+# ServiceAccount and RoleBindings for running Pipelines.
+# appstudio-pipelines-runner-clusterrole is deployed by the pipeline-service component.
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    name: appstudio-pipeline
+    namespace: ${SPACE_NAME}-tenant
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: appstudio-pipelines-runner-rolebinding
+    namespace: ${SPACE_NAME}-tenant
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: appstudio-pipelines-runner
+  subjects:
+  - kind: ServiceAccount
+    namespace: ${SPACE_NAME}-tenant
+    name: appstudio-pipeline
+- apiVersion: v1
+  data: {}
+  kind: ConfigMap
+  metadata:
+    labels:
+      config.openshift.io/inject-trusted-cabundle: "true"
+    name: trusted-ca
+    namespace: ${SPACE_NAME}-tenant
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: MEMORY_LIMIT
+  value: "32Gi"
+- name: MEMORY_REQUEST
+  value: "32Gi"
+- name: CPU_BUILD_LIMIT
+  value: "120"
+- name: CPU_BUILD_REQUEST
+  value: "60"
+- name: MEMORY_BUILD_LIMIT
+  value: "128Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "64Gi"
+- name: COUNT_PVC
+  value: "90"
+- name: REQUEST_STORAGE
+  value: "200Gi"
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
new file mode 100644
index 00000000..3f588984
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -0,0 +1,276 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-admin # name is used in e2e tests
+objects:
+
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-admin-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+    - deletecollection
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    - integrationtestscenarios
+    - releases
+    - releasestrategies
+    - releaseplans
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    - spiaccesstokendataupdates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - secrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow to manage pipeline ServiceAccount for linking secrets used for repositories
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts
+    resourceNames:
+    - appstudio-pipeline
+    verbs:
+    - get
+    - list
+    - watch
+    - update
+    - patch
+  # Allow to exec (rsh) to pods
+  - apiGroups:
+      - ""
+    resources:
+      - pods/exec
+    verbs:
+      - create
+  - apiGroups:
+    - toolchain.dev.openshift.com
+    resources:
+    - spacebindingrequests
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow using the project-controller
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow CRUD permissions on SecretStore and ExternalSecret CRs to the user's SA
+  - apiGroups:
+    - external-secrets.io
+    resources:
+    - secretstores
+    - externalsecrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+# RoleBinding that grants limited CRUD permissions to the User
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-admin-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-admin-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# RoleBinding that grants view permissions to the User
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
\ No newline at end of file
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
new file mode 100644
index 00000000..1486dbaa
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
@@ -0,0 +1,192 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-contributor # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-contributor-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-contributor-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-contributor-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
new file mode 100644
index 00000000..a3d9124b
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -0,0 +1,219 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-maintainer # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-maintainer-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    - spiaccesstokendataupdates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  # Allow using the project-controller
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-maintainer-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-maintainer-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
new file mode 100644
index 00000000..e743a5cd
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
@@ -0,0 +1,191 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-viewer # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-viewer-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-viewer-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-viewer-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/tier.yaml b/components/sandbox/tiers/src/appstudio/tier.yaml
new file mode 100644
index 00000000..4c5a9cc8
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/tier.yaml
@@ -0,0 +1,32 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: appstudio
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${TENANT_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: TENANT_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
new file mode 100644
index 00000000..fe55f3fd
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
@@ -0,0 +1,26 @@
+from: appstudio
+parameters:
+- name: REPLICASET_QUOTA
+  value: "100"
+- name: DEPLOYMENT_QUOTA
+  value: "100"
+- name: ROUTE_QUOTA
+  value: "100"
+- name: SERVICE_QUOTA
+  value: "100"
+- name: CONFIGMAP_QUOTA
+  value: "300"
+- name: SECRET_QUOTA
+  value: "900"
+- name: CPU_BUILD_LIMIT
+  value: "480"
+- name: CPU_BUILD_REQUEST
+  value: "240"
+- name: MEMORY_BUILD_LIMIT
+  value: "512Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "256Gi"
+- name: COUNT_PVC
+  value: "180"
+- name: REQUEST_STORAGE
+  value: "400Gi"
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
new file mode 100644
index 00000000..2d9a507f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio-env.yaml
+- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
new file mode 100644
index 00000000..13653115
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio-env
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+  namespaces:
+  - templateRef: appstudio-env-env-1575256421-1575256421
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: appstudio-env-admin-4171108837-4171108837
+    contributor:
+      templateRef: appstudio-env-contributor-297495683-297495683
+    maintainer:
+      templateRef: appstudio-env-maintainer-1039478644-1039478644
+    viewer:
+      templateRef: appstudio-env-viewer-617892940-617892940
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
new file mode 100644
index 00000000..d1a8e1b5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-admin-4171108837-4171108837
+  namespace: toolchain-host-operator
+spec:
+  revision: 4171108837-4171108837
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-admin
+    objects: []
+  tierName: appstudio-env
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
new file mode 100644
index 00000000..1c598813
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -0,0 +1,142 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-2916842387-2916842387
+  namespace: toolchain-host-operator
+spec:
+  revision: 2916842387-2916842387
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "30"
+            count/routes.route.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
new file mode 100644
index 00000000..f74f6c43
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-contributor-297495683-297495683
+  namespace: toolchain-host-operator
+spec:
+  revision: 297495683-297495683
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-contributor
+    objects: []
+  tierName: appstudio-env
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
new file mode 100644
index 00000000..f11fed14
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -0,0 +1,233 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-env-1575256421-1575256421
+  namespace: toolchain-host-operator
+spec:
+  revision: 1575256421-1575256421
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-env
+        name: ${SPACE_NAME}-env
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      rules:
+      - apiGroups:
+        - authorization.openshift.io
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - networking.k8s.io
+        resources:
+        - ingressclasses
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - persistentvolumes
+        verbs:
+        - view
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: additional-argocd-read
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: edit
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          cpu: 0
+          memory: 0
+          pods: 0
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          count/persistentvolumeclaims: "12"
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: 50Gi
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-env
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: MEMORY_BUILD_LIMIT
+      value: 64Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 32Gi
+  tierName: appstudio-env
+  type: env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
new file mode 100644
index 00000000..f2cc0507
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-maintainer-1039478644-1039478644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1039478644-1039478644
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-maintainer
+    objects: []
+  tierName: appstudio-env
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
new file mode 100644
index 00000000..29081764
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-viewer-617892940-617892940
+  namespace: toolchain-host-operator
+spec:
+  revision: 617892940-617892940
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-viewer
+    objects: []
+  tierName: appstudio-env
+  type: viewer
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
new file mode 100644
index 00000000..aa09f7a6
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-221167138-221167138.yaml
+- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+- tiertemplate-appstudio-viewer-210715919-210715919.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
new file mode 100644
index 00000000..244d324a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-clusterresources-750679343-750679343
+  namespaces:
+  - templateRef: appstudio-tenant-1252037388-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudio-admin-221167138-221167138
+    contributor:
+      templateRef: appstudio-contributor-3696782055-3696782055
+    maintainer:
+      templateRef: appstudio-maintainer-98574726-98574726
+    viewer:
+      templateRef: appstudio-viewer-210715919-210715919
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
new file mode 100644
index 00000000..301a8d5d
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-221167138-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 221167138-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
new file mode 100644
index 00000000..dd2e72c5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-750679343-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 750679343-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "30"
+    - name: DEPLOYMENT_QUOTA
+      value: "30"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "30"
+    - name: SERVICE_QUOTA
+      value: "30"
+    - name: CONFIGMAP_QUOTA
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
new file mode 100644
index 00000000..38f77053
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-contributor-3696782055-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 3696782055-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
new file mode 100644
index 00000000..b8bc41a9
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-98574726-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 98574726-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
new file mode 100644
index 00000000..9390957f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-1252037388-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1252037388-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
new file mode 100644
index 00000000..353d94e8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-viewer-210715919-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 210715919-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: viewer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
new file mode 100644
index 00000000..917073d2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
new file mode 100644
index 00000000..6c89688f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudiolarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+  namespaces:
+  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudiolarge-admin-1884308846-221167138
+    contributor:
+      templateRef: appstudiolarge-contributor-1884308846-3696782055
+    maintainer:
+      templateRef: appstudiolarge-maintainer-1884308846-98574726
+    viewer:
+      templateRef: appstudiolarge-viewer-1884308846-210715919
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
new file mode 100644
index 00000000..98ba5595
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
new file mode 100644
index 00000000..5d180a9a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1884308846-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "100"
+    - name: DEPLOYMENT_QUOTA
+      value: "100"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "100"
+    - name: SERVICE_QUOTA
+      value: "100"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
new file mode 100644
index 00000000..184cd3ed
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1884308846-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
new file mode 100644
index 00000000..45be6e56
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1884308846-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
new file mode 100644
index 00000000..2ac21095
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1884308846-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
new file mode 100644
index 00000000..8203734e
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1884308846-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
new file mode 100644
index 00000000..1b4cff51
--- /dev/null
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- appstudio
+- appstudio-env
+- appstudiolarge
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ad3e5db4..1965bcb7 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
 - network-policy.yaml
+- ../../../tiers/staging
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 9ec5f4e3..2b6ddc03 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - space-provisioner-configs.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/staging/generated-manifests/host
+- ../../../tiers/staging 
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
<h3>4: Staging changes from 9d0fdc4a to 08e6f0c2 on Mon Jul 15 17:07:22 2024 </h3>  
 
<details> 
<summary>Git Diff (8848 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/README.adoc b/components/sandbox/tiers/README.adoc
new file mode 100644
index 00000000..3cb70f1e
--- /dev/null
+++ b/components/sandbox/tiers/README.adoc
@@ -0,0 +1,19 @@
+Make changes to tiers in src/ subdirectory. Once satisfied with changes run the following commands
+for each environment type, i.e. staging or production
+
+Pull build, and install the https://github.com/kubesaw/ksctl[ksctl] command-line tool
+
+Production:
+
+To apply any changes src/ run:
+```
+ksctl generate nstemplatetiers --source ./src --out-dir ./production
+
+```
+
+Staging:
+
+To apply any changes src/ run:
+```
+ksctl generate nstemplatetiers --source ./src --out-dir ./staging
+```
\ No newline at end of file
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
new file mode 100644
index 00000000..2d9a507f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio-env.yaml
+- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
new file mode 100644
index 00000000..13653115
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio-env
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+  namespaces:
+  - templateRef: appstudio-env-env-1575256421-1575256421
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: appstudio-env-admin-4171108837-4171108837
+    contributor:
+      templateRef: appstudio-env-contributor-297495683-297495683
+    maintainer:
+      templateRef: appstudio-env-maintainer-1039478644-1039478644
+    viewer:
+      templateRef: appstudio-env-viewer-617892940-617892940
+status: {}
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
new file mode 100644
index 00000000..d1a8e1b5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-admin-4171108837-4171108837
+  namespace: toolchain-host-operator
+spec:
+  revision: 4171108837-4171108837
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-admin
+    objects: []
+  tierName: appstudio-env
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
new file mode 100644
index 00000000..1c598813
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -0,0 +1,142 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-2916842387-2916842387
+  namespace: toolchain-host-operator
+spec:
+  revision: 2916842387-2916842387
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "30"
+            count/routes.route.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
new file mode 100644
index 00000000..f74f6c43
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-contributor-297495683-297495683
+  namespace: toolchain-host-operator
+spec:
+  revision: 297495683-297495683
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-contributor
+    objects: []
+  tierName: appstudio-env
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
new file mode 100644
index 00000000..f11fed14
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -0,0 +1,233 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-env-1575256421-1575256421
+  namespace: toolchain-host-operator
+spec:
+  revision: 1575256421-1575256421
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-env
+        name: ${SPACE_NAME}-env
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      rules:
+      - apiGroups:
+        - authorization.openshift.io
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - networking.k8s.io
+        resources:
+        - ingressclasses
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - persistentvolumes
+        verbs:
+        - view
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: additional-argocd-read
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: edit
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          cpu: 0
+          memory: 0
+          pods: 0
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          count/persistentvolumeclaims: "12"
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: 50Gi
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-env
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: MEMORY_BUILD_LIMIT
+      value: 64Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 32Gi
+  tierName: appstudio-env
+  type: env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
new file mode 100644
index 00000000..f2cc0507
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-maintainer-1039478644-1039478644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1039478644-1039478644
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-maintainer
+    objects: []
+  tierName: appstudio-env
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
new file mode 100644
index 00000000..29081764
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-viewer-617892940-617892940
+  namespace: toolchain-host-operator
+spec:
+  revision: 617892940-617892940
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-viewer
+    objects: []
+  tierName: appstudio-env
+  type: viewer
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
new file mode 100644
index 00000000..aa09f7a6
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-221167138-221167138.yaml
+- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+- tiertemplate-appstudio-viewer-210715919-210715919.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
new file mode 100644
index 00000000..244d324a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-clusterresources-750679343-750679343
+  namespaces:
+  - templateRef: appstudio-tenant-1252037388-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudio-admin-221167138-221167138
+    contributor:
+      templateRef: appstudio-contributor-3696782055-3696782055
+    maintainer:
+      templateRef: appstudio-maintainer-98574726-98574726
+    viewer:
+      templateRef: appstudio-viewer-210715919-210715919
+status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
new file mode 100644
index 00000000..301a8d5d
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-221167138-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 221167138-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
new file mode 100644
index 00000000..dd2e72c5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-750679343-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 750679343-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "30"
+    - name: DEPLOYMENT_QUOTA
+      value: "30"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "30"
+    - name: SERVICE_QUOTA
+      value: "30"
+    - name: CONFIGMAP_QUOTA
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
new file mode 100644
index 00000000..38f77053
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-contributor-3696782055-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 3696782055-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
new file mode 100644
index 00000000..b8bc41a9
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-98574726-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 98574726-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
new file mode 100644
index 00000000..9390957f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-1252037388-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1252037388-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
new file mode 100644
index 00000000..353d94e8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-viewer-210715919-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 210715919-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: viewer
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
new file mode 100644
index 00000000..917073d2
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
new file mode 100644
index 00000000..6c89688f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudiolarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+  namespaces:
+  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudiolarge-admin-1884308846-221167138
+    contributor:
+      templateRef: appstudiolarge-contributor-1884308846-3696782055
+    maintainer:
+      templateRef: appstudiolarge-maintainer-1884308846-98574726
+    viewer:
+      templateRef: appstudiolarge-viewer-1884308846-210715919
+status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
new file mode 100644
index 00000000..98ba5595
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
new file mode 100644
index 00000000..5d180a9a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1884308846-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "100"
+    - name: DEPLOYMENT_QUOTA
+      value: "100"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "100"
+    - name: SERVICE_QUOTA
+      value: "100"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
new file mode 100644
index 00000000..184cd3ed
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1884308846-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
new file mode 100644
index 00000000..45be6e56
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1884308846-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
new file mode 100644
index 00000000..2ac21095
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1884308846-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
new file mode 100644
index 00000000..8203734e
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1884308846-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
new file mode 100644
index 00000000..1b4cff51
--- /dev/null
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- appstudio
+- appstudio-env
+- appstudiolarge
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
new file mode 100644
index 00000000..460e9a1f
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -0,0 +1,128 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-cluster-resources
+objects:
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-deployments
+  spec:
+    quota:
+      hard:
+        count/deployments.apps: "30"
+        count/deploymentconfigs.apps: "30"
+        count/pods: "150"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-replicas
+  spec:
+    quota:
+      hard:
+        count/replicasets.apps: "30"
+        count/replicationcontrollers: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-routes
+  spec:
+    quota:
+      hard:
+        count/ingresses.extensions: "30"
+        count/routes.route.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-jobs
+  spec:
+    quota:
+      hard:
+        count/jobs.batch: "30"
+        count/daemonsets.apps: "30"
+        count/cronjobs.batch: "30"
+        count/statefulsets.apps: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-services
+  spec:
+    quota:
+      hard:
+        count/services: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-bc
+  spec:
+    quota:
+      hard:
+        count/buildconfigs.build.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-secrets
+  spec:
+    quota:
+      hard:
+        count/secrets: "100"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-cm
+  spec:
+    quota:
+      hard:
+        count/configmaps: "100"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}-env
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
diff --git a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
new file mode 100644
index 00000000..f801a266
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
@@ -0,0 +1,231 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-env
+      argocd.argoproj.io/managed-by: gitops-service-argocd
+      # billing labels ref: https://github.com/redhat-appstudio/book/blob/main/ADR/0010-namespace-metadata.md
+      appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+    # The ${SPACE_NAME} here is actually the space (aka workspace) name that is going to be provisioned as environment sub-space (aka sub-workspace).
+    # It's a legacy parameter that needs to be renamed
+    # related story https://issues.redhat.com/browse/CRT-1766
+    name: ${SPACE_NAME}-env
+
+# ServiceAccount to be used by the deployer (eg. ArgoCD) to manage the content of the namespace
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    namespace: ${SPACE_NAME}-env
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    name: additional-argocd-read
+    namespace: ${SPACE_NAME}-env
+  rules:
+  - apiGroups:
+    - authorization.openshift.io
+    - rbac.authorization.k8s.io
+    resources:
+    - roles
+    verbs:
+    - view
+    - list
+    - watch
+  - apiGroups:
+    - networking.k8s.io
+    resources:
+    - ingressclasses
+    verbs:
+    - view
+    - list
+    - watch
+  - apiGroups:
+    - ""
+    resources:
+    - persistentvolumes
+    verbs:
+    - view
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: additional-argocd-read
+    namespace: ${SPACE_NAME}-env
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: additional-argocd-read
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: namespace-manager
+    namespace: ${SPACE_NAME}-env
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: edit
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+
+# Quotas and default limits for not-terminating containers (regular long-running containers)
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-deploy
+    namespace: ${SPACE_NAME}-env
+  spec:
+    scopes:
+    - NotTerminating
+    hard:
+      limits.cpu: "20"
+      limits.memory: ${MEMORY_LIMIT}
+      requests.cpu: 1750m
+      requests.memory: ${MEMORY_REQUEST}
+# and terminating (short-lived containers like build) containers
+# since builds are not supposed to be created in an environment namespace, then the limits are set to zero
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-build
+    namespace: ${SPACE_NAME}-env
+  spec:
+    scopes:
+    - Terminating
+    hard:
+      cpu: 0
+      memory: 0
+      pods: 0
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: storage
+    namespace: ${SPACE_NAME}-env
+  spec:
+    hard:
+      limits.ephemeral-storage: 50Gi
+      requests.storage: 50Gi
+      requests.ephemeral-storage: 50Gi
+      count/persistentvolumeclaims: "12"
+- apiVersion: v1
+  kind: LimitRange
+  metadata:
+    name: resource-limits
+    namespace: ${SPACE_NAME}-env
+  spec:
+    limits:
+    - type: "Container"
+      default:
+        cpu: 2000m
+        memory: 2Gi
+      defaultRequest:
+        cpu: 10m
+        memory: 256Mi
+
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-same-namespace
+    namespace: ${SPACE_NAME}-env
+  spec:
+    podSelector: {}
+    ingress:
+    - from:
+      - podSelector: {}
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-ingress
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: ingress
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-monitoring
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: monitoring
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-codeready-workspaces-operator
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: codeready-workspaces
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-olm-namespaces
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            openshift.io/scc: anyuid
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-console-namespaces
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: console
+    podSelector: {}
+    policyTypes:
+    - Ingress
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: MEMORY_LIMIT
+  value: "32Gi"
+- name: MEMORY_REQUEST
+  value: "32Gi"
+- name: MEMORY_BUILD_LIMIT
+  value: "64Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "32Gi"
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
new file mode 100644
index 00000000..f1c42317
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-admin
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
new file mode 100644
index 00000000..b392cfea
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-contributor
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
new file mode 100644
index 00000000..d9db7266
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-maintainer
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
new file mode 100644
index 00000000..b3ab2182
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-viewer
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/tier.yaml b/components/sandbox/tiers/src/appstudio-env/tier.yaml
new file mode 100644
index 00000000..20a5f968
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/tier.yaml
@@ -0,0 +1,34 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: appstudio-env
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${ENV_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+    spaceRequestConfig:
+      serviceAccountName: namespace-manager
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: ENV_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
new file mode 100644
index 00000000..c387158c
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -0,0 +1,143 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-cluster-resources
+objects:
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-deployments
+  spec:
+    quota:
+      hard:
+        count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+        count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+        count/pods: ${{POD_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-replicas
+  spec:
+    quota:
+      hard:
+        count/replicasets.apps: ${{REPLICASET_QUOTA}}
+        count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-routes
+  spec:
+    quota:
+      hard:
+        count/ingresses.extensions: ${{ROUTE_QUOTA}}
+        count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-jobs
+  spec:
+    quota:
+      hard:
+        count/jobs.batch: "30"
+        count/daemonsets.apps: "30"
+        count/cronjobs.batch: "30"
+        count/statefulsets.apps: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-services
+  spec:
+    quota:
+      hard:
+        count/services: ${{SERVICE_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-bc
+  spec:
+    quota:
+      hard:
+        count/buildconfigs.build.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-secrets
+  spec:
+    quota:
+      hard:
+        count/secrets: ${{SECRET_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-cm
+  spec:
+    quota:
+      hard:
+        count/configmaps: ${{CONFIGMAP_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
+# Quota
+- name: REPLICASET_QUOTA
+  value: "30"
+- name: DEPLOYMENT_QUOTA
+  value: "30"
+- name: POD_QUOTA
+  value: "600"
+- name: ROUTE_QUOTA
+  value: "30"
+- name: SERVICE_QUOTA
+  value: "30"
+- name: CONFIGMAP_QUOTA
+  value: "100"
+- name: SECRET_QUOTA
+  value: "300"
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
new file mode 100644
index 00000000..8de7cf5b
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -0,0 +1,291 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-tenant
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-tenant
+      argocd.argoproj.io/managed-by: gitops-service-argocd
+      # billing labels ref: https://github.com/redhat-appstudio/book/blob/main/ADR/0010-namespace-metadata.md
+      appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+    name: ${SPACE_NAME}-tenant
+
+# Built-n developer environment is available for all users OOTB
+- apiVersion: appstudio.redhat.com/v1alpha1
+  kind: Environment
+  metadata:
+    name: development
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    deploymentStrategy: AppStudioAutomated
+    displayName: Development
+    type: Non-POC
+
+# Quotas and default limits for not-terminating containers (regular long-running containers)
+# and terminating (short-lived containers like build) containers
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-deploy
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    scopes:
+    - NotTerminating
+    hard:
+      limits.cpu: "20"
+      limits.memory: ${MEMORY_LIMIT}
+      requests.cpu: 1750m
+      requests.memory: ${MEMORY_REQUEST}
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-build
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    scopes:
+    - Terminating
+    hard:
+      limits.cpu: ${CPU_BUILD_LIMIT}
+      limits.memory: ${MEMORY_BUILD_LIMIT}
+      requests.cpu: ${CPU_BUILD_REQUEST}
+      requests.memory: ${MEMORY_BUILD_REQUEST}
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: storage
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      limits.ephemeral-storage: 50Gi
+      requests.storage: ${REQUEST_STORAGE}
+      requests.ephemeral-storage: 50Gi
+      count/persistentvolumeclaims: "${COUNT_PVC}"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: toolchain-crds
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/spacerequests.toolchain.dev.openshift.com: "32"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/applications.appstudio.redhat.com: "512"
+      count/componentdetectionqueries.appstudio.redhat.com: "512"
+      count/components.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-build
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/buildpipelineselectors.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-gitops
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/environments.appstudio.redhat.com: "512"
+      count/promotionruns.appstudio.redhat.com: "512"
+      count/deploymenttargetclaims.appstudio.redhat.com: "32"
+      count/deploymenttargetclasses.appstudio.redhat.com: "32"
+      count/deploymenttargets.appstudio.redhat.com: "32"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-integration
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/integrationtestscenarios.appstudio.redhat.com: "512"
+      count/snapshots.appstudio.redhat.com: "1024"
+      count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-release
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/releaseplanadmissions.appstudio.redhat.com: "512"
+      count/releaseplans.appstudio.redhat.com: "512"
+      count/releases.appstudio.redhat.com: "512"
+      count/releasestrategies.appstudio.redhat.com: "512"
+      count/internalrequests.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-enterprisecontract
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-spi
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/spiaccesschecks.appstudio.redhat.com: "512"
+      count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+      count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+      count/spiaccesstokens.appstudio.redhat.com: "512"
+      count/spifilecontentrequests.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: LimitRange
+  metadata:
+    name: resource-limits
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    limits:
+    - type: "Container"
+      default:
+        cpu: 2000m
+        memory: 2Gi
+      defaultRequest:
+        cpu: 10m
+        memory: 256Mi
+
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-same-namespace
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    podSelector: {}
+    ingress:
+    - from:
+      - podSelector: {}
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-ingress
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: ingress
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-monitoring
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: monitoring
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-codeready-workspaces-operator
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: codeready-workspaces
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-olm-namespaces
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            openshift.io/scc: anyuid
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-console-namespaces
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: console
+    podSelector: {}
+    policyTypes:
+    - Ingress
+# ServiceAccount and RoleBindings for running Pipelines.
+# appstudio-pipelines-runner-clusterrole is deployed by the pipeline-service component.
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    name: appstudio-pipeline
+    namespace: ${SPACE_NAME}-tenant
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: appstudio-pipelines-runner-rolebinding
+    namespace: ${SPACE_NAME}-tenant
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: appstudio-pipelines-runner
+  subjects:
+  - kind: ServiceAccount
+    namespace: ${SPACE_NAME}-tenant
+    name: appstudio-pipeline
+- apiVersion: v1
+  data: {}
+  kind: ConfigMap
+  metadata:
+    labels:
+      config.openshift.io/inject-trusted-cabundle: "true"
+    name: trusted-ca
+    namespace: ${SPACE_NAME}-tenant
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: MEMORY_LIMIT
+  value: "32Gi"
+- name: MEMORY_REQUEST
+  value: "32Gi"
+- name: CPU_BUILD_LIMIT
+  value: "120"
+- name: CPU_BUILD_REQUEST
+  value: "60"
+- name: MEMORY_BUILD_LIMIT
+  value: "128Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "64Gi"
+- name: COUNT_PVC
+  value: "90"
+- name: REQUEST_STORAGE
+  value: "200Gi"
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
new file mode 100644
index 00000000..3f588984
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -0,0 +1,276 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-admin # name is used in e2e tests
+objects:
+
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-admin-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+    - deletecollection
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    - integrationtestscenarios
+    - releases
+    - releasestrategies
+    - releaseplans
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    - spiaccesstokendataupdates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - secrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow to manage pipeline ServiceAccount for linking secrets used for repositories
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts
+    resourceNames:
+    - appstudio-pipeline
+    verbs:
+    - get
+    - list
+    - watch
+    - update
+    - patch
+  # Allow to exec (rsh) to pods
+  - apiGroups:
+      - ""
+    resources:
+      - pods/exec
+    verbs:
+      - create
+  - apiGroups:
+    - toolchain.dev.openshift.com
+    resources:
+    - spacebindingrequests
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow using the project-controller
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow CRUD permissions on SecretStore and ExternalSecret CRs to the user's SA
+  - apiGroups:
+    - external-secrets.io
+    resources:
+    - secretstores
+    - externalsecrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+# RoleBinding that grants limited CRUD permissions to the User
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-admin-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-admin-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# RoleBinding that grants view permissions to the User
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
\ No newline at end of file
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
new file mode 100644
index 00000000..1486dbaa
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
@@ -0,0 +1,192 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-contributor # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-contributor-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-contributor-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-contributor-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
new file mode 100644
index 00000000..a3d9124b
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -0,0 +1,219 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-maintainer # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-maintainer-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    - spiaccesstokendataupdates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  # Allow using the project-controller
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-maintainer-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-maintainer-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
new file mode 100644
index 00000000..e743a5cd
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
@@ -0,0 +1,191 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-viewer # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-viewer-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-viewer-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-viewer-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/tier.yaml b/components/sandbox/tiers/src/appstudio/tier.yaml
new file mode 100644
index 00000000..4c5a9cc8
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/tier.yaml
@@ -0,0 +1,32 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: appstudio
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${TENANT_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: TENANT_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
new file mode 100644
index 00000000..fe55f3fd
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
@@ -0,0 +1,26 @@
+from: appstudio
+parameters:
+- name: REPLICASET_QUOTA
+  value: "100"
+- name: DEPLOYMENT_QUOTA
+  value: "100"
+- name: ROUTE_QUOTA
+  value: "100"
+- name: SERVICE_QUOTA
+  value: "100"
+- name: CONFIGMAP_QUOTA
+  value: "300"
+- name: SECRET_QUOTA
+  value: "900"
+- name: CPU_BUILD_LIMIT
+  value: "480"
+- name: CPU_BUILD_REQUEST
+  value: "240"
+- name: MEMORY_BUILD_LIMIT
+  value: "512Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "256Gi"
+- name: COUNT_PVC
+  value: "180"
+- name: REQUEST_STORAGE
+  value: "400Gi"
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
new file mode 100644
index 00000000..2d9a507f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio-env.yaml
+- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
new file mode 100644
index 00000000..13653115
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio-env
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+  namespaces:
+  - templateRef: appstudio-env-env-1575256421-1575256421
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: appstudio-env-admin-4171108837-4171108837
+    contributor:
+      templateRef: appstudio-env-contributor-297495683-297495683
+    maintainer:
+      templateRef: appstudio-env-maintainer-1039478644-1039478644
+    viewer:
+      templateRef: appstudio-env-viewer-617892940-617892940
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
new file mode 100644
index 00000000..d1a8e1b5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-admin-4171108837-4171108837
+  namespace: toolchain-host-operator
+spec:
+  revision: 4171108837-4171108837
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-admin
+    objects: []
+  tierName: appstudio-env
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
new file mode 100644
index 00000000..1c598813
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -0,0 +1,142 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-2916842387-2916842387
+  namespace: toolchain-host-operator
+spec:
+  revision: 2916842387-2916842387
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "30"
+            count/routes.route.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
new file mode 100644
index 00000000..f74f6c43
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-contributor-297495683-297495683
+  namespace: toolchain-host-operator
+spec:
+  revision: 297495683-297495683
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-contributor
+    objects: []
+  tierName: appstudio-env
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
new file mode 100644
index 00000000..f11fed14
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -0,0 +1,233 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-env-1575256421-1575256421
+  namespace: toolchain-host-operator
+spec:
+  revision: 1575256421-1575256421
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-env
+        name: ${SPACE_NAME}-env
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      rules:
+      - apiGroups:
+        - authorization.openshift.io
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - networking.k8s.io
+        resources:
+        - ingressclasses
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - persistentvolumes
+        verbs:
+        - view
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: additional-argocd-read
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: edit
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          cpu: 0
+          memory: 0
+          pods: 0
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          count/persistentvolumeclaims: "12"
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: 50Gi
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-env
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: MEMORY_BUILD_LIMIT
+      value: 64Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 32Gi
+  tierName: appstudio-env
+  type: env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
new file mode 100644
index 00000000..f2cc0507
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-maintainer-1039478644-1039478644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1039478644-1039478644
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-maintainer
+    objects: []
+  tierName: appstudio-env
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
new file mode 100644
index 00000000..29081764
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-viewer-617892940-617892940
+  namespace: toolchain-host-operator
+spec:
+  revision: 617892940-617892940
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-viewer
+    objects: []
+  tierName: appstudio-env
+  type: viewer
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
new file mode 100644
index 00000000..aa09f7a6
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-221167138-221167138.yaml
+- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+- tiertemplate-appstudio-viewer-210715919-210715919.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
new file mode 100644
index 00000000..244d324a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-clusterresources-750679343-750679343
+  namespaces:
+  - templateRef: appstudio-tenant-1252037388-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudio-admin-221167138-221167138
+    contributor:
+      templateRef: appstudio-contributor-3696782055-3696782055
+    maintainer:
+      templateRef: appstudio-maintainer-98574726-98574726
+    viewer:
+      templateRef: appstudio-viewer-210715919-210715919
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
new file mode 100644
index 00000000..301a8d5d
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-221167138-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 221167138-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
new file mode 100644
index 00000000..dd2e72c5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-750679343-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 750679343-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "30"
+    - name: DEPLOYMENT_QUOTA
+      value: "30"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "30"
+    - name: SERVICE_QUOTA
+      value: "30"
+    - name: CONFIGMAP_QUOTA
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
new file mode 100644
index 00000000..38f77053
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-contributor-3696782055-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 3696782055-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
new file mode 100644
index 00000000..b8bc41a9
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-98574726-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 98574726-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
new file mode 100644
index 00000000..9390957f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-1252037388-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1252037388-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
new file mode 100644
index 00000000..353d94e8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-viewer-210715919-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 210715919-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: viewer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
new file mode 100644
index 00000000..917073d2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
new file mode 100644
index 00000000..6c89688f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudiolarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+  namespaces:
+  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudiolarge-admin-1884308846-221167138
+    contributor:
+      templateRef: appstudiolarge-contributor-1884308846-3696782055
+    maintainer:
+      templateRef: appstudiolarge-maintainer-1884308846-98574726
+    viewer:
+      templateRef: appstudiolarge-viewer-1884308846-210715919
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
new file mode 100644
index 00000000..98ba5595
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
new file mode 100644
index 00000000..5d180a9a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1884308846-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "100"
+    - name: DEPLOYMENT_QUOTA
+      value: "100"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "100"
+    - name: SERVICE_QUOTA
+      value: "100"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
new file mode 100644
index 00000000..184cd3ed
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1884308846-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
new file mode 100644
index 00000000..45be6e56
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1884308846-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
new file mode 100644
index 00000000..2ac21095
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1884308846-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
new file mode 100644
index 00000000..8203734e
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1884308846-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
new file mode 100644
index 00000000..1b4cff51
--- /dev/null
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- appstudio
+- appstudio-env
+- appstudiolarge
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ad3e5db4..1965bcb7 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
 - network-policy.yaml
+- ../../../tiers/staging
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 9ec5f4e3..2b6ddc03 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - space-provisioner-configs.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/staging/generated-manifests/host
+- ../../../tiers/staging 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 9d0fdc4a to 08e6f0c2 on Mon Jul 15 17:07:22 2024 </h3>  
 
<details> 
<summary>Git Diff (8848 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/README.adoc b/components/sandbox/tiers/README.adoc
new file mode 100644
index 00000000..3cb70f1e
--- /dev/null
+++ b/components/sandbox/tiers/README.adoc
@@ -0,0 +1,19 @@
+Make changes to tiers in src/ subdirectory. Once satisfied with changes run the following commands
+for each environment type, i.e. staging or production
+
+Pull build, and install the https://github.com/kubesaw/ksctl[ksctl] command-line tool
+
+Production:
+
+To apply any changes src/ run:
+```
+ksctl generate nstemplatetiers --source ./src --out-dir ./production
+
+```
+
+Staging:
+
+To apply any changes src/ run:
+```
+ksctl generate nstemplatetiers --source ./src --out-dir ./staging
+```
\ No newline at end of file
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
new file mode 100644
index 00000000..2d9a507f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio-env.yaml
+- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
new file mode 100644
index 00000000..13653115
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio-env
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+  namespaces:
+  - templateRef: appstudio-env-env-1575256421-1575256421
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: appstudio-env-admin-4171108837-4171108837
+    contributor:
+      templateRef: appstudio-env-contributor-297495683-297495683
+    maintainer:
+      templateRef: appstudio-env-maintainer-1039478644-1039478644
+    viewer:
+      templateRef: appstudio-env-viewer-617892940-617892940
+status: {}
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
new file mode 100644
index 00000000..d1a8e1b5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-admin-4171108837-4171108837
+  namespace: toolchain-host-operator
+spec:
+  revision: 4171108837-4171108837
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-admin
+    objects: []
+  tierName: appstudio-env
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
new file mode 100644
index 00000000..1c598813
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -0,0 +1,142 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-2916842387-2916842387
+  namespace: toolchain-host-operator
+spec:
+  revision: 2916842387-2916842387
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "30"
+            count/routes.route.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
new file mode 100644
index 00000000..f74f6c43
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-contributor-297495683-297495683
+  namespace: toolchain-host-operator
+spec:
+  revision: 297495683-297495683
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-contributor
+    objects: []
+  tierName: appstudio-env
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
new file mode 100644
index 00000000..f11fed14
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -0,0 +1,233 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-env-1575256421-1575256421
+  namespace: toolchain-host-operator
+spec:
+  revision: 1575256421-1575256421
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-env
+        name: ${SPACE_NAME}-env
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      rules:
+      - apiGroups:
+        - authorization.openshift.io
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - networking.k8s.io
+        resources:
+        - ingressclasses
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - persistentvolumes
+        verbs:
+        - view
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: additional-argocd-read
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: edit
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          cpu: 0
+          memory: 0
+          pods: 0
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          count/persistentvolumeclaims: "12"
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: 50Gi
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-env
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: MEMORY_BUILD_LIMIT
+      value: 64Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 32Gi
+  tierName: appstudio-env
+  type: env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
new file mode 100644
index 00000000..f2cc0507
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-maintainer-1039478644-1039478644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1039478644-1039478644
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-maintainer
+    objects: []
+  tierName: appstudio-env
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
new file mode 100644
index 00000000..29081764
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-viewer-617892940-617892940
+  namespace: toolchain-host-operator
+spec:
+  revision: 617892940-617892940
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-viewer
+    objects: []
+  tierName: appstudio-env
+  type: viewer
diff --git a/components/sandbox/tiers/production/appstudio/kustomization.yaml b/components/sandbox/tiers/production/appstudio/kustomization.yaml
new file mode 100644
index 00000000..aa09f7a6
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-221167138-221167138.yaml
+- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+- tiertemplate-appstudio-viewer-210715919-210715919.yaml
diff --git a/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
new file mode 100644
index 00000000..244d324a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/nstemplatetier-appstudio.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-clusterresources-750679343-750679343
+  namespaces:
+  - templateRef: appstudio-tenant-1252037388-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudio-admin-221167138-221167138
+    contributor:
+      templateRef: appstudio-contributor-3696782055-3696782055
+    maintainer:
+      templateRef: appstudio-maintainer-98574726-98574726
+    viewer:
+      templateRef: appstudio-viewer-210715919-210715919
+status: {}
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
new file mode 100644
index 00000000..301a8d5d
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-221167138-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 221167138-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
new file mode 100644
index 00000000..dd2e72c5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-750679343-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 750679343-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "30"
+    - name: DEPLOYMENT_QUOTA
+      value: "30"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "30"
+    - name: SERVICE_QUOTA
+      value: "30"
+    - name: CONFIGMAP_QUOTA
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
new file mode 100644
index 00000000..38f77053
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-contributor-3696782055-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 3696782055-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
new file mode 100644
index 00000000..b8bc41a9
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-98574726-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 98574726-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
new file mode 100644
index 00000000..9390957f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-1252037388-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1252037388-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
new file mode 100644
index 00000000..353d94e8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-viewer-210715919-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 210715919-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: viewer
diff --git a/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
new file mode 100644
index 00000000..917073d2
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
diff --git a/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
new file mode 100644
index 00000000..6c89688f
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudiolarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+  namespaces:
+  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudiolarge-admin-1884308846-221167138
+    contributor:
+      templateRef: appstudiolarge-contributor-1884308846-3696782055
+    maintainer:
+      templateRef: appstudiolarge-maintainer-1884308846-98574726
+    viewer:
+      templateRef: appstudiolarge-viewer-1884308846-210715919
+status: {}
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
new file mode 100644
index 00000000..98ba5595
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
new file mode 100644
index 00000000..5d180a9a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1884308846-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "100"
+    - name: DEPLOYMENT_QUOTA
+      value: "100"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "100"
+    - name: SERVICE_QUOTA
+      value: "100"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
new file mode 100644
index 00000000..184cd3ed
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1884308846-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
new file mode 100644
index 00000000..45be6e56
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1884308846-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
new file mode 100644
index 00000000..2ac21095
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1884308846-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
new file mode 100644
index 00000000..8203734e
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1884308846-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
new file mode 100644
index 00000000..1b4cff51
--- /dev/null
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- appstudio
+- appstudio-env
+- appstudiolarge
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
new file mode 100644
index 00000000..460e9a1f
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -0,0 +1,128 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-cluster-resources
+objects:
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-deployments
+  spec:
+    quota:
+      hard:
+        count/deployments.apps: "30"
+        count/deploymentconfigs.apps: "30"
+        count/pods: "150"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-replicas
+  spec:
+    quota:
+      hard:
+        count/replicasets.apps: "30"
+        count/replicationcontrollers: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-routes
+  spec:
+    quota:
+      hard:
+        count/ingresses.extensions: "30"
+        count/routes.route.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-jobs
+  spec:
+    quota:
+      hard:
+        count/jobs.batch: "30"
+        count/daemonsets.apps: "30"
+        count/cronjobs.batch: "30"
+        count/statefulsets.apps: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-services
+  spec:
+    quota:
+      hard:
+        count/services: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-bc
+  spec:
+    quota:
+      hard:
+        count/buildconfigs.build.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-secrets
+  spec:
+    quota:
+      hard:
+        count/secrets: "100"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-cm
+  spec:
+    quota:
+      hard:
+        count/configmaps: "100"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}-env
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
diff --git a/components/sandbox/tiers/src/appstudio-env/ns_env.yaml b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
new file mode 100644
index 00000000..f801a266
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/ns_env.yaml
@@ -0,0 +1,231 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-env
+      argocd.argoproj.io/managed-by: gitops-service-argocd
+      # billing labels ref: https://github.com/redhat-appstudio/book/blob/main/ADR/0010-namespace-metadata.md
+      appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+    # The ${SPACE_NAME} here is actually the space (aka workspace) name that is going to be provisioned as environment sub-space (aka sub-workspace).
+    # It's a legacy parameter that needs to be renamed
+    # related story https://issues.redhat.com/browse/CRT-1766
+    name: ${SPACE_NAME}-env
+
+# ServiceAccount to be used by the deployer (eg. ArgoCD) to manage the content of the namespace
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    namespace: ${SPACE_NAME}-env
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    name: additional-argocd-read
+    namespace: ${SPACE_NAME}-env
+  rules:
+  - apiGroups:
+    - authorization.openshift.io
+    - rbac.authorization.k8s.io
+    resources:
+    - roles
+    verbs:
+    - view
+    - list
+    - watch
+  - apiGroups:
+    - networking.k8s.io
+    resources:
+    - ingressclasses
+    verbs:
+    - view
+    - list
+    - watch
+  - apiGroups:
+    - ""
+    resources:
+    - persistentvolumes
+    verbs:
+    - view
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: additional-argocd-read
+    namespace: ${SPACE_NAME}-env
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: additional-argocd-read
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: namespace-manager
+    namespace: ${SPACE_NAME}-env
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: edit
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+
+# Quotas and default limits for not-terminating containers (regular long-running containers)
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-deploy
+    namespace: ${SPACE_NAME}-env
+  spec:
+    scopes:
+    - NotTerminating
+    hard:
+      limits.cpu: "20"
+      limits.memory: ${MEMORY_LIMIT}
+      requests.cpu: 1750m
+      requests.memory: ${MEMORY_REQUEST}
+# and terminating (short-lived containers like build) containers
+# since builds are not supposed to be created in an environment namespace, then the limits are set to zero
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-build
+    namespace: ${SPACE_NAME}-env
+  spec:
+    scopes:
+    - Terminating
+    hard:
+      cpu: 0
+      memory: 0
+      pods: 0
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: storage
+    namespace: ${SPACE_NAME}-env
+  spec:
+    hard:
+      limits.ephemeral-storage: 50Gi
+      requests.storage: 50Gi
+      requests.ephemeral-storage: 50Gi
+      count/persistentvolumeclaims: "12"
+- apiVersion: v1
+  kind: LimitRange
+  metadata:
+    name: resource-limits
+    namespace: ${SPACE_NAME}-env
+  spec:
+    limits:
+    - type: "Container"
+      default:
+        cpu: 2000m
+        memory: 2Gi
+      defaultRequest:
+        cpu: 10m
+        memory: 256Mi
+
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-same-namespace
+    namespace: ${SPACE_NAME}-env
+  spec:
+    podSelector: {}
+    ingress:
+    - from:
+      - podSelector: {}
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-ingress
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: ingress
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-monitoring
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: monitoring
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-codeready-workspaces-operator
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: codeready-workspaces
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-olm-namespaces
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            openshift.io/scc: anyuid
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-console-namespaces
+    namespace: ${SPACE_NAME}-env
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: console
+    podSelector: {}
+    policyTypes:
+    - Ingress
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: MEMORY_LIMIT
+  value: "32Gi"
+- name: MEMORY_REQUEST
+  value: "32Gi"
+- name: MEMORY_BUILD_LIMIT
+  value: "64Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "32Gi"
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
new file mode 100644
index 00000000..f1c42317
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_admin.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-admin
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
new file mode 100644
index 00000000..b392cfea
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_contributor.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-contributor
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
new file mode 100644
index 00000000..d9db7266
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_maintainer.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-maintainer
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
new file mode 100644
index 00000000..b3ab2182
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/spacerole_viewer.yaml
@@ -0,0 +1,6 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-spacerole-viewer
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/appstudio-env/tier.yaml b/components/sandbox/tiers/src/appstudio-env/tier.yaml
new file mode 100644
index 00000000..20a5f968
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio-env/tier.yaml
@@ -0,0 +1,34 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-env-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: appstudio-env
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${ENV_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+    spaceRequestConfig:
+      serviceAccountName: namespace-manager
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: ENV_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
new file mode 100644
index 00000000..c387158c
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -0,0 +1,143 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-cluster-resources
+objects:
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-deployments
+  spec:
+    quota:
+      hard:
+        count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+        count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+        count/pods: ${{POD_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-replicas
+  spec:
+    quota:
+      hard:
+        count/replicasets.apps: ${{REPLICASET_QUOTA}}
+        count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-routes
+  spec:
+    quota:
+      hard:
+        count/ingresses.extensions: ${{ROUTE_QUOTA}}
+        count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-jobs
+  spec:
+    quota:
+      hard:
+        count/jobs.batch: "30"
+        count/daemonsets.apps: "30"
+        count/cronjobs.batch: "30"
+        count/statefulsets.apps: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-services
+  spec:
+    quota:
+      hard:
+        count/services: ${{SERVICE_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-bc
+  spec:
+    quota:
+      hard:
+        count/buildconfigs.build.openshift.io: "30"
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-secrets
+  spec:
+    quota:
+      hard:
+        count/secrets: ${{SECRET_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: quota.openshift.io/v1
+  kind: ClusterResourceQuota
+  metadata:
+    name: for-${SPACE_NAME}-cm
+  spec:
+    quota:
+      hard:
+        count/configmaps: ${{CONFIGMAP_QUOTA}}
+    selector:
+      annotations: null
+      labels:
+        matchLabels:
+          toolchain.dev.openshift.com/space: ${SPACE_NAME}
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
+# Quota
+- name: REPLICASET_QUOTA
+  value: "30"
+- name: DEPLOYMENT_QUOTA
+  value: "30"
+- name: POD_QUOTA
+  value: "600"
+- name: ROUTE_QUOTA
+  value: "30"
+- name: SERVICE_QUOTA
+  value: "30"
+- name: CONFIGMAP_QUOTA
+  value: "100"
+- name: SECRET_QUOTA
+  value: "300"
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
new file mode 100644
index 00000000..8de7cf5b
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -0,0 +1,291 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-tenant
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-tenant
+      argocd.argoproj.io/managed-by: gitops-service-argocd
+      # billing labels ref: https://github.com/redhat-appstudio/book/blob/main/ADR/0010-namespace-metadata.md
+      appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+    name: ${SPACE_NAME}-tenant
+
+# Built-n developer environment is available for all users OOTB
+- apiVersion: appstudio.redhat.com/v1alpha1
+  kind: Environment
+  metadata:
+    name: development
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    deploymentStrategy: AppStudioAutomated
+    displayName: Development
+    type: Non-POC
+
+# Quotas and default limits for not-terminating containers (regular long-running containers)
+# and terminating (short-lived containers like build) containers
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-deploy
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    scopes:
+    - NotTerminating
+    hard:
+      limits.cpu: "20"
+      limits.memory: ${MEMORY_LIMIT}
+      requests.cpu: 1750m
+      requests.memory: ${MEMORY_REQUEST}
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: compute-build
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    scopes:
+    - Terminating
+    hard:
+      limits.cpu: ${CPU_BUILD_LIMIT}
+      limits.memory: ${MEMORY_BUILD_LIMIT}
+      requests.cpu: ${CPU_BUILD_REQUEST}
+      requests.memory: ${MEMORY_BUILD_REQUEST}
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: storage
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      limits.ephemeral-storage: 50Gi
+      requests.storage: ${REQUEST_STORAGE}
+      requests.ephemeral-storage: 50Gi
+      count/persistentvolumeclaims: "${COUNT_PVC}"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: toolchain-crds
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/spacerequests.toolchain.dev.openshift.com: "32"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/applications.appstudio.redhat.com: "512"
+      count/componentdetectionqueries.appstudio.redhat.com: "512"
+      count/components.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-build
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/buildpipelineselectors.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-gitops
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/environments.appstudio.redhat.com: "512"
+      count/promotionruns.appstudio.redhat.com: "512"
+      count/deploymenttargetclaims.appstudio.redhat.com: "32"
+      count/deploymenttargetclasses.appstudio.redhat.com: "32"
+      count/deploymenttargets.appstudio.redhat.com: "32"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-integration
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/integrationtestscenarios.appstudio.redhat.com: "512"
+      count/snapshots.appstudio.redhat.com: "1024"
+      count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-release
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/releaseplanadmissions.appstudio.redhat.com: "512"
+      count/releaseplans.appstudio.redhat.com: "512"
+      count/releases.appstudio.redhat.com: "512"
+      count/releasestrategies.appstudio.redhat.com: "512"
+      count/internalrequests.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-enterprisecontract
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: appstudio-crds-spi
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    hard:
+      count/spiaccesschecks.appstudio.redhat.com: "512"
+      count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+      count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+      count/spiaccesstokens.appstudio.redhat.com: "512"
+      count/spifilecontentrequests.appstudio.redhat.com: "512"
+- apiVersion: v1
+  kind: LimitRange
+  metadata:
+    name: resource-limits
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    limits:
+    - type: "Container"
+      default:
+        cpu: 2000m
+        memory: 2Gi
+      defaultRequest:
+        cpu: 10m
+        memory: 256Mi
+
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-same-namespace
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    podSelector: {}
+    ingress:
+    - from:
+      - podSelector: {}
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-ingress
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: ingress
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-openshift-monitoring
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: monitoring
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-codeready-workspaces-operator
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: codeready-workspaces
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-olm-namespaces
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            openshift.io/scc: anyuid
+    podSelector: {}
+    policyTypes:
+    - Ingress
+- apiVersion: networking.k8s.io/v1
+  kind: NetworkPolicy
+  metadata:
+    name: allow-from-console-namespaces
+    namespace: ${SPACE_NAME}-tenant
+  spec:
+    ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            network.openshift.io/policy-group: console
+    podSelector: {}
+    policyTypes:
+    - Ingress
+# ServiceAccount and RoleBindings for running Pipelines.
+# appstudio-pipelines-runner-clusterrole is deployed by the pipeline-service component.
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    name: appstudio-pipeline
+    namespace: ${SPACE_NAME}-tenant
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: appstudio-pipelines-runner-rolebinding
+    namespace: ${SPACE_NAME}-tenant
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: appstudio-pipelines-runner
+  subjects:
+  - kind: ServiceAccount
+    namespace: ${SPACE_NAME}-tenant
+    name: appstudio-pipeline
+- apiVersion: v1
+  data: {}
+  kind: ConfigMap
+  metadata:
+    labels:
+      config.openshift.io/inject-trusted-cabundle: "true"
+    name: trusted-ca
+    namespace: ${SPACE_NAME}-tenant
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: MEMORY_LIMIT
+  value: "32Gi"
+- name: MEMORY_REQUEST
+  value: "32Gi"
+- name: CPU_BUILD_LIMIT
+  value: "120"
+- name: CPU_BUILD_REQUEST
+  value: "60"
+- name: MEMORY_BUILD_LIMIT
+  value: "128Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "64Gi"
+- name: COUNT_PVC
+  value: "90"
+- name: REQUEST_STORAGE
+  value: "200Gi"
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
new file mode 100644
index 00000000..3f588984
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -0,0 +1,276 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-admin # name is used in e2e tests
+objects:
+
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-admin-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+    - deletecollection
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    - integrationtestscenarios
+    - releases
+    - releasestrategies
+    - releaseplans
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    - spiaccesstokendataupdates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - secrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow to manage pipeline ServiceAccount for linking secrets used for repositories
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts
+    resourceNames:
+    - appstudio-pipeline
+    verbs:
+    - get
+    - list
+    - watch
+    - update
+    - patch
+  # Allow to exec (rsh) to pods
+  - apiGroups:
+      - ""
+    resources:
+      - pods/exec
+    verbs:
+      - create
+  - apiGroups:
+    - toolchain.dev.openshift.com
+    resources:
+    - spacebindingrequests
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow using the project-controller
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  # Allow CRUD permissions on SecretStore and ExternalSecret CRs to the user's SA
+  - apiGroups:
+    - external-secrets.io
+    resources:
+    - secretstores
+    - externalsecrets
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+# RoleBinding that grants limited CRUD permissions to the User
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-admin-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-admin-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# RoleBinding that grants view permissions to the User
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
\ No newline at end of file
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
new file mode 100644
index 00000000..1486dbaa
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_contributor.yaml
@@ -0,0 +1,192 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-contributor # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-contributor-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-contributor-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-contributor-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
new file mode 100644
index 00000000..a3d9124b
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_maintainer.yaml
@@ -0,0 +1,219 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-maintainer # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-maintainer-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - imagerepositories
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    - spiaccesstokendataupdates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  # Allow using the project-controller
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+    - create
+    - update
+    - patch
+    - delete
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-maintainer-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-maintainer-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
new file mode 100644
index 00000000..e743a5cd
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/spacerole_viewer.yaml
@@ -0,0 +1,191 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-spacerole-viewer # name is used in e2e tests
+objects:
+
+# RoleBinding that grants limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+# Role(s) and RoleBinding(s) that grant limited CRUD permissions on AppStudio components CRDs & secrets to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: Role
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-viewer-user-actions
+  rules:
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - applications
+    - components
+    - componentdetectionqueries
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - promotionruns
+    - snapshotenvironmentbindings
+    - snapshots
+    - environments
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - deploymenttargets
+    - deploymenttargetclaims
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - managed-gitops.redhat.com
+    resources:
+    - gitopsdeployments
+    - gitopsdeploymentmanagedenvironments
+    - gitopsdeploymentrepositorycredentials
+    - gitopsdeploymentsyncruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - tekton.dev
+    resources:
+    - pipelineruns
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - results.tekton.dev
+    resources:
+    - results
+    - records
+    - logs
+    verbs:
+    - get
+    - list
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - integrationtestscenarios
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - enterprisecontractpolicies
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releases
+    - releasestrategies
+    - releaseplans
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - releaseplanadmissions
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - jvmbuildservice.io
+    resources:
+    - jbsconfigs
+    - artifactbuilds
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - spiaccesstokenbindings
+    - spiaccesschecks
+    - spiaccesstokens
+    - spifilecontentrequests
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - remotesecrets
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - ''
+    resources:
+    - configmaps
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - appstudio.redhat.com
+    resources:
+    - buildpipelineselectors
+    verbs:
+    - get
+    - list
+    - watch
+  - apiGroups:
+    - projctl.konflux.dev
+    resources:
+    - projects
+    - projectdevelopmentstreams
+    - projectdevelopmentstreamtemplates
+    verbs:
+    - get
+    - list
+    - watch
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-viewer-${USERNAME}-actions-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: Role
+    name: appstudio-viewer-user-actions
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+# Role & RoleBinding that grants view permissions to the user's SA
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    namespace: ${NAMESPACE}
+    name: appstudio-${USERNAME}-view-user
+  roleRef:
+    apiGroup: rbac.authorization.k8s.io
+    kind: ClusterRole
+    name: view
+  subjects:
+  - kind: User
+    name: ${USERNAME}
+
+parameters:
+- name: NAMESPACE
+  required: true
+- name: USERNAME
+  required: true
diff --git a/components/sandbox/tiers/src/appstudio/tier.yaml b/components/sandbox/tiers/src/appstudio/tier.yaml
new file mode 100644
index 00000000..4c5a9cc8
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudio/tier.yaml
@@ -0,0 +1,32 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: appstudio-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: appstudio
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${TENANT_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: TENANT_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
new file mode 100644
index 00000000..fe55f3fd
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
@@ -0,0 +1,26 @@
+from: appstudio
+parameters:
+- name: REPLICASET_QUOTA
+  value: "100"
+- name: DEPLOYMENT_QUOTA
+  value: "100"
+- name: ROUTE_QUOTA
+  value: "100"
+- name: SERVICE_QUOTA
+  value: "100"
+- name: CONFIGMAP_QUOTA
+  value: "300"
+- name: SECRET_QUOTA
+  value: "900"
+- name: CPU_BUILD_LIMIT
+  value: "480"
+- name: CPU_BUILD_REQUEST
+  value: "240"
+- name: MEMORY_BUILD_LIMIT
+  value: "512Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "256Gi"
+- name: COUNT_PVC
+  value: "180"
+- name: REQUEST_STORAGE
+  value: "400Gi"
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
new file mode 100644
index 00000000..2d9a507f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio-env.yaml
+- tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+- tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+- tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+- tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+- tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+- tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
new file mode 100644
index 00000000..13653115
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio-env
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-env-clusterresources-2916842387-2916842387
+  namespaces:
+  - templateRef: appstudio-env-env-1575256421-1575256421
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: appstudio-env-admin-4171108837-4171108837
+    contributor:
+      templateRef: appstudio-env-contributor-297495683-297495683
+    maintainer:
+      templateRef: appstudio-env-maintainer-1039478644-1039478644
+    viewer:
+      templateRef: appstudio-env-viewer-617892940-617892940
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
new file mode 100644
index 00000000..d1a8e1b5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-admin-4171108837-4171108837
+  namespace: toolchain-host-operator
+spec:
+  revision: 4171108837-4171108837
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-admin
+    objects: []
+  tierName: appstudio-env
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
new file mode 100644
index 00000000..1c598813
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -0,0 +1,142 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-2916842387-2916842387
+  namespace: toolchain-host-operator
+spec:
+  revision: 2916842387-2916842387
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "30"
+            count/routes.route.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
new file mode 100644
index 00000000..f74f6c43
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-contributor-297495683-297495683
+  namespace: toolchain-host-operator
+spec:
+  revision: 297495683-297495683
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-contributor
+    objects: []
+  tierName: appstudio-env
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
new file mode 100644
index 00000000..f11fed14
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -0,0 +1,233 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-env-1575256421-1575256421
+  namespace: toolchain-host-operator
+spec:
+  revision: 1575256421-1575256421
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-env
+        name: ${SPACE_NAME}-env
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      rules:
+      - apiGroups:
+        - authorization.openshift.io
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - networking.k8s.io
+        resources:
+        - ingressclasses
+        verbs:
+        - view
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - persistentvolumes
+        verbs:
+        - view
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: additional-argocd-read
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: additional-argocd-read
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-env
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: edit
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          cpu: 0
+          memory: 0
+          pods: 0
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-env
+      spec:
+        hard:
+          count/persistentvolumeclaims: "12"
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: 50Gi
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-env
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-env
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: MEMORY_BUILD_LIMIT
+      value: 64Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 32Gi
+  tierName: appstudio-env
+  type: env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
new file mode 100644
index 00000000..f2cc0507
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-maintainer-1039478644-1039478644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1039478644-1039478644
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-maintainer
+    objects: []
+  tierName: appstudio-env
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
new file mode 100644
index 00000000..29081764
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-viewer-617892940-617892940
+  namespace: toolchain-host-operator
+spec:
+  revision: 617892940-617892940
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-env-spacerole-viewer
+    objects: []
+  tierName: appstudio-env
+  type: viewer
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
new file mode 100644
index 00000000..aa09f7a6
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-221167138-221167138.yaml
+- tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+- tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+- tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+- tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+- tiertemplate-appstudio-viewer-210715919-210715919.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
new file mode 100644
index 00000000..244d324a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudio
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudio-clusterresources-750679343-750679343
+  namespaces:
+  - templateRef: appstudio-tenant-1252037388-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudio-admin-221167138-221167138
+    contributor:
+      templateRef: appstudio-contributor-3696782055-3696782055
+    maintainer:
+      templateRef: appstudio-maintainer-98574726-98574726
+    viewer:
+      templateRef: appstudio-viewer-210715919-210715919
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
new file mode 100644
index 00000000..301a8d5d
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-221167138-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 221167138-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
new file mode 100644
index 00000000..dd2e72c5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-750679343-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 750679343-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "30"
+    - name: DEPLOYMENT_QUOTA
+      value: "30"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "30"
+    - name: SERVICE_QUOTA
+      value: "30"
+    - name: CONFIGMAP_QUOTA
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
new file mode 100644
index 00000000..38f77053
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-contributor-3696782055-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 3696782055-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
new file mode 100644
index 00000000..b8bc41a9
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-maintainer-98574726-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 98574726-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
new file mode 100644
index 00000000..9390957f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-1252037388-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1252037388-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
new file mode 100644
index 00000000..353d94e8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-viewer-210715919-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 210715919-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: viewer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
new file mode 100644
index 00000000..917073d2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+- tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+- tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+- tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+- tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+- tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
new file mode 100644
index 00000000..6c89688f
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudiolarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudiolarge-clusterresources-1884308846-750679343
+  namespaces:
+  - templateRef: appstudiolarge-tenant-1884308846-1252037388
+  spaceRoles:
+    admin:
+      templateRef: appstudiolarge-admin-1884308846-221167138
+    contributor:
+      templateRef: appstudiolarge-contributor-1884308846-3696782055
+    maintainer:
+      templateRef: appstudiolarge-maintainer-1884308846-98574726
+    viewer:
+      templateRef: appstudiolarge-viewer-1884308846-210715919
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
new file mode 100644
index 00000000..98ba5595
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-221167138
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-221167138
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-admin
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
new file mode 100644
index 00000000..5d180a9a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -0,0 +1,156 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1884308846-750679343
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-750679343
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-cluster-resources
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
+            count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
+            count/pods: ${{POD_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: ${{REPLICASET_QUOTA}}
+            count/replicationcontrollers: ${{REPLICASET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: ${{ROUTE_QUOTA}}
+            count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: ${{SERVICE_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: REPLICASET_QUOTA
+      value: "100"
+    - name: DEPLOYMENT_QUOTA
+      value: "100"
+    - name: POD_QUOTA
+      value: "600"
+    - name: ROUTE_QUOTA
+      value: "100"
+    - name: SERVICE_QUOTA
+      value: "100"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
new file mode 100644
index 00000000..184cd3ed
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1884308846-3696782055
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-3696782055
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-contributor
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
new file mode 100644
index 00000000..45be6e56
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -0,0 +1,228 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1884308846-98574726
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-98574726
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-maintainer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
new file mode 100644
index 00000000..2ac21095
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -0,0 +1,297 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1884308846-1252037388
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1252037388
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-tenant
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 10m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
new file mode 100644
index 00000000..8203734e
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -0,0 +1,201 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1884308846-210715919
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-210715919
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata:
+      creationTimestamp: null
+      name: appstudio-spacerole-viewer
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
new file mode 100644
index 00000000..1b4cff51
--- /dev/null
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- appstudio
+- appstudio-env
+- appstudiolarge
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ad3e5db4..1965bcb7 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -5,3 +5,4 @@ resources:
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
 - network-policy.yaml
+- ../../../tiers/staging
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 9ec5f4e3..2b6ddc03 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - space-provisioner-configs.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/staging/generated-manifests/host
+- ../../../tiers/staging 
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
