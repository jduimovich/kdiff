# kustomize changes tracked by commits 
### This file generated at Mon Sep 30 08:07:59 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8e5c2132 to 70d267bc on Mon Sep 30 07:13:50 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 8d8692c5..16efd8d0 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=0c76279a9c1e2192059d597e0951c8ec10f6b33e
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=0c76279a9c1e2192059d597e0951c8ec10f6b33e
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 0c76279a9c1e2192059d597e0951c8ec10f6b33e
+  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 0c76279a9c1e2192059d597e0951c8ec10f6b33e
+  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 085f506b..d64c982b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2197,7 +2197,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 2bd243ef..0c2d4943 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,3 +27,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..4f749242
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-8e5c2132/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
661c661
<         image: quay.io/konflux-ci/multi-platform-controller:ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
---
>         image: quay.io/konflux-ci/multi-platform-controller:0c76279a9c1e2192059d597e0951c8ec10f6b33e
703c703
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:0c76279a9c1e2192059d597e0951c8ec10f6b33e
./commit-8e5c2132/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2200c2200
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a 
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
<h3>1: Staging changes from 8e5c2132 to 70d267bc on Mon Sep 30 07:13:50 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 8d8692c5..16efd8d0 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=0c76279a9c1e2192059d597e0951c8ec10f6b33e
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=0c76279a9c1e2192059d597e0951c8ec10f6b33e
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 0c76279a9c1e2192059d597e0951c8ec10f6b33e
+  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 0c76279a9c1e2192059d597e0951c8ec10f6b33e
+  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 085f506b..d64c982b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2197,7 +2197,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 2bd243ef..0c2d4943 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,3 +27,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..4f749242
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 8e5c2132 to 70d267bc on Mon Sep 30 07:13:50 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 8d8692c5..16efd8d0 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=0c76279a9c1e2192059d597e0951c8ec10f6b33e
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=0c76279a9c1e2192059d597e0951c8ec10f6b33e
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 0c76279a9c1e2192059d597e0951c8ec10f6b33e
+  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 0c76279a9c1e2192059d597e0951c8ec10f6b33e
+  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 085f506b..d64c982b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2197,7 +2197,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 2bd243ef..0c2d4943 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,3 +27,9 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..4f749242
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64 
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
<h3>2: Production changes from 9bd5d1e5 to 8e5c2132 on Mon Sep 30 06:24:20 2024 </h3>  
 
<details> 
<summary>Git Diff (406 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3bc233ee..54f9676c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,77 +465,13 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-    
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-    
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-    
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-    
-    #!/bin/bash -ex
-    
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-    
-    mount /dev/nvme1n1 /home
-    
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-    
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-    
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-    
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 7bfc0920..f2a3b73a 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,77 +469,14 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+ 
\ No newline at end of file
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 2385cf39..03b56fcb 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -316,77 +316,13 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index e360956c..8adf6e99 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,77 +315,13 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-030738beb81d3863a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (182 lines)</summary>  

``` 
./commit-9bd5d1e5/production/components/multi-platform-controller/production/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gdnxlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
311,320c311,384
<   dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
<   dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-g6xlarge-amd64.max-instances: "10"
<   dynamic.linux-g6xlarge-amd64.region: us-east-1
<   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-g6xlarge-amd64.type: aws
---
>   dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
>   dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-gdnxlarge-amd64.max-instances: "10"
>   dynamic.linux-gdnxlarge-amd64.region: us-east-1
>   dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-gdnxlarge-amd64.type: aws
>   dynamic.linux-gdnxlarge.user-data: |-
>     Content-Type: multipart/mixed; boundary="//"
>     MIME-Version: 1.0
> 
>     --//
>     Content-Type: text/cloud-config; charset="us-ascii"
>     MIME-Version: 1.0
>     Content-Transfer-Encoding: 7bit
>     Content-Disposition: attachment; filename="cloud-config.txt"
> 
>     #cloud-config
>     cloud_final_modules:
>       - [scripts-user, always]
> 
>     --//
>     Content-Type: text/x-shellscript; charset="us-ascii"
>     MIME-Version: 1.0
>     Content-Transfer-Encoding: 7bit
>     Content-Disposition: attachment; filename="userdata.txt"
> 
>     #!/bin/bash -ex
> 
>     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
>      echo "File system exists on the disk."
>     else
>      echo "No file system found on the disk /dev/nvme1n1"
>      mkfs -t xfs /dev/nvme1n1
>     fi
> 
>     mount /dev/nvme1n1 /home
> 
>     if [ -d "/home/var-lib-containers" ]; then
>      echo "Directory '/home/var-lib-containers' exist"
>     else
>      echo "Directory '/home/var-lib-containers' doesn't exist"
>      mkdir -p /home/var-lib-containers /var/lib/containers
>     fi
> 
>     mount --bind /home/var-lib-containers /var/lib/containers
> 
>     if [ -d "/home/var-tmp" ]; then
>      echo "Directory '/home/var-tmp' exist"
>     else
>      echo "Directory '/home/var-tmp' doesn't exist"
>      mkdir -p /home/var-tmp /var/tmp
>     fi
> 
>     mount --bind /home/var-tmp /var/tmp
> 
>     if [ -d "/home/ec2-user" ]; then
>     echo "ec2-user home exists"
>     else
>     echo "ec2-user home doesn't exist"
>     mkdir -p /home/ec2-user/.ssh
>     chown -R ec2-user /home/ec2-user
>     fi
> 
>     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
>     chown ec2-user /home/ec2-user/.ssh/authorized_keys
>     chmod 600 /home/ec2-user/.ssh/authorized_keys
>     chmod 700 /home/ec2-user/.ssh
>     restorecon -r /home/ec2-user
> 
>     --//--
./commit-9bd5d1e5/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gdnxlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
311,320c311,384
<   dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
<   dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-g6xlarge-amd64.max-instances: "10"
<   dynamic.linux-g6xlarge-amd64.region: us-east-1
<   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-g6xlarge-amd64.type: aws
---
>   dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
>   dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-gdnxlarge-amd64.max-instances: "10"
>   dynamic.linux-gdnxlarge-amd64.region: us-east-1
>   dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-gdnxlarge-amd64.type: aws
>   dynamic.linux-gdnxlarge.user-data: |-
>     Content-Type: multipart/mixed; boundary="//"
>     MIME-Version: 1.0
> 
>     --//
>     Content-Type: text/cloud-config; charset="us-ascii"
>     MIME-Version: 1.0
>     Content-Transfer-Encoding: 7bit
>     Content-Disposition: attachment; filename="cloud-config.txt"
> 
>     #cloud-config
>     cloud_final_modules:
>       - [scripts-user, always]
> 
>     --//
>     Content-Type: text/x-shellscript; charset="us-ascii"
>     MIME-Version: 1.0
>     Content-Transfer-Encoding: 7bit
>     Content-Disposition: attachment; filename="userdata.txt"
> 
>     #!/bin/bash -ex
> 
>     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
>      echo "File system exists on the disk."
>     else
>      echo "No file system found on the disk /dev/nvme1n1"
>      mkfs -t xfs /dev/nvme1n1
>     fi
> 
>     mount /dev/nvme1n1 /home
> 
>     if [ -d "/home/var-lib-containers" ]; then
>      echo "Directory '/home/var-lib-containers' exist"
>     else
>      echo "Directory '/home/var-lib-containers' doesn't exist"
>      mkdir -p /home/var-lib-containers /var/lib/containers
>     fi
> 
>     mount --bind /home/var-lib-containers /var/lib/containers
> 
>     if [ -d "/home/var-tmp" ]; then
>      echo "Directory '/home/var-tmp' exist"
>     else
>      echo "Directory '/home/var-tmp' doesn't exist"
>      mkdir -p /home/var-tmp /var/tmp
>     fi
> 
>     mount --bind /home/var-tmp /var/tmp
> 
>     if [ -d "/home/ec2-user" ]; then
>     echo "ec2-user home exists"
>     else
>     echo "ec2-user home doesn't exist"
>     mkdir -p /home/ec2-user/.ssh
>     chown -R ec2-user /home/ec2-user
>     fi
> 
>     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
>     chown ec2-user /home/ec2-user/.ssh/authorized_keys
>     chmod 600 /home/ec2-user/.ssh/authorized_keys
>     chmod 700 /home/ec2-user/.ssh
>     restorecon -r /home/ec2-user
> 
>     --//-- 
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
<h3>2: Staging changes from 9bd5d1e5 to 8e5c2132 on Mon Sep 30 06:24:20 2024 </h3>  
 
<details> 
<summary>Git Diff (406 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3bc233ee..54f9676c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,77 +465,13 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-    
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-    
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-    
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-    
-    #!/bin/bash -ex
-    
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-    
-    mount /dev/nvme1n1 /home
-    
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-    
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-    
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-    
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 7bfc0920..f2a3b73a 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,77 +469,14 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+ 
\ No newline at end of file
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 2385cf39..03b56fcb 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -316,77 +316,13 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index e360956c..8adf6e99 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,77 +315,13 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-030738beb81d3863a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (91 lines)</summary>  

``` 
./commit-9bd5d1e5/staging/components/multi-platform-controller/staging/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux-mlarge/amd64,linux-mlarge/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64,linux/s390x
---
>   dynamic-platforms: linux/arm64,linux-mlarge/amd64,linux-mlarge/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gdnxlarge/amd64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64,linux/s390x
289,298c289,362
<   dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
<   dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-g6xlarge-amd64.max-instances: "10"
<   dynamic.linux-g6xlarge-amd64.region: us-east-1
<   dynamic.linux-g6xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-g6xlarge-amd64.type: aws
---
>   dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
>   dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
>   dynamic.linux-gdnxlarge-amd64.max-instances: "10"
>   dynamic.linux-gdnxlarge-amd64.region: us-east-1
>   dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
>   dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
>   dynamic.linux-gdnxlarge-amd64.type: aws
>   dynamic.linux-gdnxlarge.user-data: |-
>     Content-Type: multipart/mixed; boundary="//"
>     MIME-Version: 1.0
> 
>     --//
>     Content-Type: text/cloud-config; charset="us-ascii"
>     MIME-Version: 1.0
>     Content-Transfer-Encoding: 7bit
>     Content-Disposition: attachment; filename="cloud-config.txt"
> 
>     #cloud-config
>     cloud_final_modules:
>       - [scripts-user, always]
> 
>     --//
>     Content-Type: text/x-shellscript; charset="us-ascii"
>     MIME-Version: 1.0
>     Content-Transfer-Encoding: 7bit
>     Content-Disposition: attachment; filename="userdata.txt"
> 
>     #!/bin/bash -ex
> 
>     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
>      echo "File system exists on the disk."
>     else
>      echo "No file system found on the disk /dev/nvme1n1"
>      mkfs -t xfs /dev/nvme1n1
>     fi
> 
>     mount /dev/nvme1n1 /home
> 
>     if [ -d "/home/var-lib-containers" ]; then
>      echo "Directory '/home/var-lib-containers' exist"
>     else
>      echo "Directory '/home/var-lib-containers' doesn't exist"
>      mkdir -p /home/var-lib-containers /var/lib/containers
>     fi
> 
>     mount --bind /home/var-lib-containers /var/lib/containers
> 
>     if [ -d "/home/var-tmp" ]; then
>      echo "Directory '/home/var-tmp' exist"
>     else
>      echo "Directory '/home/var-tmp' doesn't exist"
>      mkdir -p /home/var-tmp /var/tmp
>     fi
> 
>     mount --bind /home/var-tmp /var/tmp
> 
>     if [ -d "/home/ec2-user" ]; then
>     echo "ec2-user home exists"
>     else
>     echo "ec2-user home doesn't exist"
>     mkdir -p /home/ec2-user/.ssh
>     chown -R ec2-user /home/ec2-user
>     fi
> 
>     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
>     chown ec2-user /home/ec2-user/.ssh/authorized_keys
>     chmod 600 /home/ec2-user/.ssh/authorized_keys
>     chmod 700 /home/ec2-user/.ssh
>     restorecon -r /home/ec2-user
> 
>     --//-- 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 9bd5d1e5 to 8e5c2132 on Mon Sep 30 06:24:20 2024 </h3>  
 
<details> 
<summary>Git Diff (406 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3bc233ee..54f9676c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,77 +465,13 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-    
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-    
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-    
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-    
-    #!/bin/bash -ex
-    
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-    
-    mount /dev/nvme1n1 /home
-    
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-    
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-    
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-    
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/common/host-config.yaml
index 7bfc0920..f2a3b73a 100644
--- a/components/multi-platform-controller/production/common/host-config.yaml
+++ b/components/multi-platform-controller/production/common/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,77 +469,14 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+ 
\ No newline at end of file
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 2385cf39..03b56fcb 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -316,77 +316,13 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index e360956c..8adf6e99 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gdnxlarge/amd64,\
+    linux-g6xlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,77 +315,13 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gdnxlarge-amd64.type: aws
-  dynamic.linux-gdnxlarge-amd64.region: us-east-1
-  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
-  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
-  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gdnxlarge.user-data: |-
-    Content-Type: multipart/mixed; boundary="//"
-    MIME-Version: 1.0
-
-    --//
-    Content-Type: text/cloud-config; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="cloud-config.txt"
-
-    #cloud-config
-    cloud_final_modules:
-      - [scripts-user, always]
-
-    --//
-    Content-Type: text/x-shellscript; charset="us-ascii"
-    MIME-Version: 1.0
-    Content-Transfer-Encoding: 7bit
-    Content-Disposition: attachment; filename="userdata.txt"
-
-    #!/bin/bash -ex
-
-    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
-     echo "File system exists on the disk."
-    else
-     echo "No file system found on the disk /dev/nvme1n1"
-     mkfs -t xfs /dev/nvme1n1
-    fi
-
-    mount /dev/nvme1n1 /home
-
-    if [ -d "/home/var-lib-containers" ]; then
-     echo "Directory '/home/var-lib-containers' exist"
-    else
-     echo "Directory '/home/var-lib-containers' doesn't exist"
-     mkdir -p /home/var-lib-containers /var/lib/containers
-    fi
-
-    mount --bind /home/var-lib-containers /var/lib/containers
-
-    if [ -d "/home/var-tmp" ]; then
-     echo "Directory '/home/var-tmp' exist"
-    else
-     echo "Directory '/home/var-tmp' doesn't exist"
-     mkdir -p /home/var-tmp /var/tmp
-    fi
-    
-    mount --bind /home/var-tmp /var/tmp
-    
-    if [ -d "/home/ec2-user" ]; then
-    echo "ec2-user home exists"
-    else
-    echo "ec2-user home doesn't exist"
-    mkdir -p /home/ec2-user/.ssh
-    chown -R ec2-user /home/ec2-user
-    fi
-
-    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
-    chown ec2-user /home/ec2-user/.ssh/authorized_keys
-    chmod 600 /home/ec2-user/.ssh/authorized_keys
-    chmod 700 /home/ec2-user/.ssh
-    restorecon -r /home/ec2-user
-
-    --//--
+  dynamic.linux-g6xlarge-amd64.type: aws
+  dynamic.linux-g6xlarge-amd64.region: us-east-1
+  dynamic.linux-g6xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-g6xlarge-amd64.instance-type: g6.xlarge
+  dynamic.linux-g6xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-g6xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-g6xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.subnet-id: subnet-030738beb81d3863a 
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
<h3>3: Production changes from 43c0a631 to 9bd5d1e5 on Sun Sep 29 06:56:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 2534b1ea..066c1110 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=0659d18381c328a30a4d82e5b6465bbab271ff48
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=0659d18381c328a30a4d82e5b6465bbab271ff48
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 0659d18381c328a30a4d82e5b6465bbab271ff48
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 0659d18381c328a30a4d82e5b6465bbab271ff48 
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
<h3>3: Staging changes from 43c0a631 to 9bd5d1e5 on Sun Sep 29 06:56:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 2534b1ea..066c1110 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=0659d18381c328a30a4d82e5b6465bbab271ff48
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=0659d18381c328a30a4d82e5b6465bbab271ff48
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 0659d18381c328a30a4d82e5b6465bbab271ff48
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 0659d18381c328a30a4d82e5b6465bbab271ff48 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-43c0a631/staging/components/multi-platform-controller/staging/kustomize.out.yaml
595c595
<         image: quay.io/konflux-ci/multi-platform-controller:0659d18381c328a30a4d82e5b6465bbab271ff48
---
>         image: quay.io/konflux-ci/multi-platform-controller:ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
637c637
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:0659d18381c328a30a4d82e5b6465bbab271ff48
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 43c0a631 to 9bd5d1e5 on Sun Sep 29 06:56:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 2534b1ea..066c1110 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=0659d18381c328a30a4d82e5b6465bbab271ff48
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=0659d18381c328a30a4d82e5b6465bbab271ff48
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 0659d18381c328a30a4d82e5b6465bbab271ff48
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 0659d18381c328a30a4d82e5b6465bbab271ff48 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-43c0a631/development/components/multi-platform-controller/development/kustomize.out.yaml
269c269
<         image: quay.io/konflux-ci/multi-platform-controller:0659d18381c328a30a4d82e5b6465bbab271ff48
---
>         image: quay.io/konflux-ci/multi-platform-controller:ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
311c311
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:0659d18381c328a30a4d82e5b6465bbab271ff48
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd 
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
<h3>4: Production changes from 625c665a to 43c0a631 on Sun Sep 29 05:11:51 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 07aa1037..b1457333 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:e8ede3a"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:2b2655d" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-625c665a/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
671c671
<           value: quay.io/konflux-ci/mintmaker-renovate-image:2b2655d
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:e8ede3a
./commit-625c665a/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
671c671
<           value: quay.io/konflux-ci/mintmaker-renovate-image:2b2655d
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:e8ede3a 
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
<h3>4: Staging changes from 625c665a to 43c0a631 on Sun Sep 29 05:11:51 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 07aa1037..b1457333 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:e8ede3a"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:2b2655d" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 625c665a to 43c0a631 on Sun Sep 29 05:11:51 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 07aa1037..b1457333 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:e8ede3a"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:2b2655d" 
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
