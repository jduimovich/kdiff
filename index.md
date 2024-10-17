# kustomize changes tracked by commits 
### This file generated at Thu Oct 17 12:08:20 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4a820753 to 7c9ce286 on Thu Oct 17 11:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index fa4f99a4..517cf89e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-4a820753/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
./commit-4a820753/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 4a820753 to 7c9ce286 on Thu Oct 17 11:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index fa4f99a4..517cf89e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-4a820753/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 4a820753 to 7c9ce286 on Thu Oct 17 11:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index fa4f99a4..517cf89e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-4a820753/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:f78d9c7498dbe526e12626b7fb4d905fb5a92a9c 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from c2f21030 to 4a820753 on Thu Oct 17 09:27:21 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index e92a0320..52ccbae8 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-c2f21030/production/components/enterprise-contract/kustomize.out.yaml
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c2f21030 to 4a820753 on Thu Oct 17 09:27:21 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index e92a0320..52ccbae8 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-c2f21030/staging/components/enterprise-contract/kustomize.out.yaml
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c2f21030 to 4a820753 on Thu Oct 17 09:27:21 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index e92a0320..52ccbae8 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-c2f21030/development/components/enterprise-contract/kustomize.out.yaml
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-3e33195@sha256:c1cdcfb344fac8a4a0654ad5aa5e4322ad31a24e937e5a35ad5912e1710ab596
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-75c36c3@sha256:bd183554f8bb3e9c54f1d5ab8845760e317030538258021de4abc4511fe0284a
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-3e33195@sha256:626ebda05d6c1da591cca3d0c8c835dc08290ea8bbd95ea2254337deb72d6f40
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-75c36c3@sha256:5ab1e5a7314bb5a782fea919369a324e0f288bb3b1a9e39172f5204392c34dc0 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 8c4ebb10 to c2f21030 on Thu Oct 17 08:35:06 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 4372de2c..4f011b4b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2dbd734f..7af274e8 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 8c4ebb10 to c2f21030 on Thu Oct 17 08:35:06 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 4372de2c..4f011b4b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2dbd734f..7af274e8 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8c4ebb10/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:7049676a22c0984d691fd84624ccfcbffae73890
---
>         image: quay.io/konflux-ci/build-service:bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 8c4ebb10 to c2f21030 on Thu Oct 17 08:35:06 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 4372de2c..4f011b4b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2dbd734f..7af274e8 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8c4ebb10/development/components/build-service/development/kustomize.out.yaml
547c547
<         image: quay.io/konflux-ci/build-service:7049676a22c0984d691fd84624ccfcbffae73890
---
>         image: quay.io/konflux-ci/build-service:bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 77923ee4 to 8c4ebb10 on Thu Oct 17 07:40:05 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index 3b83af02..c0dfe850 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,19 +36,13 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller-metrics-monitor
+  name: multi-platform-controller
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: https
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
+    port: http-metrics
+    scheme: http
   selector:
     matchLabels:
-      control-plane: controller-manager
-
+      app: multi-platform-controller
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 3741601a..a86eadd9 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: 39d8b891b81117ef30bd3463b99552b647de49ae
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-77923ee4/production/components/multi-platform-controller/production/kustomize.out.yaml
940c940
<   name: multi-platform-controller
---
>   name: multi-platform-controller-metrics-monitor
944c944,947
<   - interval: 15s
---
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
946,947c949,952
<     port: http-metrics
<     scheme: http
---
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
950c955
<       app: multi-platform-controller
---
>       control-plane: controller-manager
./commit-77923ee4/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
940c940
<   name: multi-platform-controller
---
>   name: multi-platform-controller-metrics-monitor
944c944,947
<   - interval: 15s
---
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
946,947c949,952
<     port: http-metrics
<     scheme: http
---
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
950c955
<       app: multi-platform-controller
---
>       control-plane: controller-manager 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 77923ee4 to 8c4ebb10 on Thu Oct 17 07:40:05 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index 3b83af02..c0dfe850 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,19 +36,13 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller-metrics-monitor
+  name: multi-platform-controller
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: https
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
+    port: http-metrics
+    scheme: http
   selector:
     matchLabels:
-      control-plane: controller-manager
-
+      app: multi-platform-controller
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 3741601a..a86eadd9 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: 39d8b891b81117ef30bd3463b99552b647de49ae
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (172 lines)</summary>  

``` 
./commit-77923ee4/staging/components/multi-platform-controller/staging/kustomize.out.yaml
19c19
<   name: multi-platform-controller
---
>   name: multi-platform-controller-controller-manager
45,46c45
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: multi-platform-controller
---
>   name: multi-platform-controller-manager-role
129a129,148
> kind: ClusterRole
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
163c182
<   name: multi-platform-controller
---
>   name: multi-platform-controller-multi-platform-controller-manager-rolebinding
167c186
<   name: multi-platform-controller
---
>   name: multi-platform-controller-manager-role
170c189,204
<   name: multi-platform-controller
---
>   name: multi-platform-controller-controller-manager
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: multi-platform-controller-controller-manager
533a568,584
>     control-plane: controller-manager
>   name: multi-platform-controller-controller-manager-metrics-service
>   namespace: multi-platform-controller
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     app: multi-platform-controller
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: multi-platform-controller
542,545d592
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
594,596c641,667
<         - --v=4
<         - --zap-log-level=4
<         - --zap-devel=true
---
>         - --http2-disable
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
602c673
<         image: quay.io/konflux-ci/multi-platform-controller:5b1616c8b4c49c8d80605cedfbfd80f980145af3
---
>         image: quay.io/mshaposhnik/multi-platform-controller:39d8b891b81117ef30bd3463b99552b647de49ae
604c675,681
<         name: multi-platform-controller
---
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
606,607c683,691
<         - containerPort: 8080
<           name: http-metrics
---
>         - containerPort: 8081
>           name: probes
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
615a700,703
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
619c707
<       serviceAccountName: multi-platform-controller
---
>       serviceAccountName: multi-platform-controller-controller-manager
787c875
<   name: multi-platform-controller
---
>   name: multi-platform-controller-metrics-monitor
791c879,882
<   - interval: 15s
---
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
793,794c884,887
<     port: http-metrics
<     scheme: http
---
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
797c890
<       app: multi-platform-controller
---
>       control-plane: controller-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 77923ee4 to 8c4ebb10 on Thu Oct 17 07:40:05 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/common/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
index 3b83af02..c0dfe850 100644
--- a/components/multi-platform-controller/base/common/monitoring.yaml
+++ b/components/multi-platform-controller/base/common/monitoring.yaml
@@ -36,19 +36,13 @@ subjects:
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
-  name: multi-platform-controller-metrics-monitor
+  name: multi-platform-controller
 spec:
   endpoints:
   - path: /metrics
     interval: 15s
-    port: https
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
+    port: http-metrics
+    scheme: http
   selector:
     matchLabels:
-      control-plane: controller-manager
-
+      app: multi-platform-controller
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 3741601a..a86eadd9 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/mshaposhnik/multi-platform-controller/deploy/operator?ref=1c8956a8a074bfb903608dbb16dbdddd6be753de
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=5b1616c8b4c49c8d80605cedfbfd80f980145af3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: 39d8b891b81117ef30bd3463b99552b647de49ae
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: 5b1616c8b4c49c8d80605cedfbfd80f980145af3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (173 lines)</summary>  

``` 
./commit-77923ee4/development/components/multi-platform-controller/development/kustomize.out.yaml
19c19
<   name: multi-platform-controller
---
>   name: multi-platform-controller-controller-manager
45,46c45
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: multi-platform-controller
---
>   name: multi-platform-controller-manager-role
129a129,148
> kind: ClusterRole
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-role
> rules:
> - apiGroups:
>   - authentication.k8s.io
>   resources:
>   - tokenreviews
>   verbs:
>   - create
> - apiGroups:
>   - authorization.k8s.io
>   resources:
>   - subjectaccessreviews
>   verbs:
>   - create
> ---
> apiVersion: rbac.authorization.k8s.io/v1
163c182
<   name: multi-platform-controller
---
>   name: multi-platform-controller-multi-platform-controller-manager-rolebinding
167c186
<   name: multi-platform-controller
---
>   name: multi-platform-controller-manager-role
170c189,204
<   name: multi-platform-controller
---
>   name: multi-platform-controller-controller-manager
>   namespace: multi-platform-controller
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app: multi-platform-controller
>   name: multi-platform-controller-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: multi-platform-controller-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: multi-platform-controller-controller-manager
199a234,250
>     control-plane: controller-manager
>   name: multi-platform-controller-controller-manager-metrics-service
>   namespace: multi-platform-controller
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     app: multi-platform-controller
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app: multi-platform-controller
208,211d258
<   - name: http-metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
260,262c307,311
<         - --v=4
<         - --zap-log-level=4
<         - --zap-devel=true
---
>         - --http2-disable
>         - --secure-listen-address=0.0.0.0:8443
>         - --upstream=http://127.0.0.1:8080/
>         - --logtostderr=true
>         - --v=0
263a313,334
>         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
>         name: kube-rbac-proxy
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
269c340
<         image: quay.io/konflux-ci/multi-platform-controller:5b1616c8b4c49c8d80605cedfbfd80f980145af3
---
>         image: quay.io/mshaposhnik/multi-platform-controller:39d8b891b81117ef30bd3463b99552b647de49ae
271c342,348
<         name: multi-platform-controller
---
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
273,274c350,358
<         - containerPort: 8080
<           name: http-metrics
---
>         - containerPort: 8081
>           name: probes
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
282a367,370
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
286c374
<       serviceAccountName: multi-platform-controller
---
>       serviceAccountName: multi-platform-controller-controller-manager
339c427
<   name: multi-platform-controller
---
>   name: multi-platform-controller-metrics-monitor
343c431,434
<   - interval: 15s
---
>   - bearerTokenSecret:
>       key: token
>       name: metrics-reader
>     interval: 15s
345,346c436,439
<     port: http-metrics
<     scheme: http
---
>     port: https
>     scheme: https
>     tlsConfig:
>       insecureSkipVerify: true
349c442
<       app: multi-platform-controller
---
>       control-plane: controller-manager 
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
```
 
</details> 
<br> 


</div>
