### This file generated at Tue Oct 29 04:05:30 UTC 2024
<h3>1: Production changes from b40a64db to a09736cd on Mon Oct 28 16:06:44 2024 </h3>  
<summary>Git Diff (24 lines)</summary>  
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 43034497..8668d223 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - host-config.yaml
 - external-secrets.yaml
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
<h3>1: Staging changes from b40a64db to a09736cd on Mon Oct 28 16:06:44 2024 </h3>  
<summary>Git Diff (24 lines)</summary>  
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 43034497..8668d223 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - host-config.yaml
 - external-secrets.yaml
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
<h3>1: Development changes from b40a64db to a09736cd on Mon Oct 28 16:06:44 2024 </h3>  
<summary>Git Diff (24 lines)</summary>  
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 43034497..8668d223 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - host-config.yaml
 - external-secrets.yaml
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
<summary>Kustomize Generated Diff (0 lines)</summary>  
 
<h3>2: Production changes from fc944d8a to b40a64db on Mon Oct 28 15:06:15 2024 </h3>  
<summary>Git Diff (19 lines)</summary>  
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 12be3807..afcf7bac 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
<summary>Kustomize Generated Diff (5 lines)</summary>  
./commit-fc944d8a/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
991c991
<         image: quay.io/konflux-ci/image-controller:49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
---
>         image: quay.io/konflux-ci/image-controller:3c98f2d567f39fc7f0cb21e209969f5966d0028f 
<h3>2: Staging changes from fc944d8a to b40a64db on Mon Oct 28 15:06:15 2024 </h3>  
<summary>Git Diff (19 lines)</summary>  
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 12be3807..afcf7bac 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
<summary>Kustomize Generated Diff (0 lines)</summary>  
 
<h3>2: Development changes from fc944d8a to b40a64db on Mon Oct 28 15:06:15 2024 </h3>  
<summary>Git Diff (19 lines)</summary>  
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 12be3807..afcf7bac 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
<summary>Kustomize Generated Diff (0 lines)</summary>  
 
<h3>3: Production changes from 842a71a3 to fc944d8a on Mon Oct 28 13:21:43 2024 </h3>  
<summary>Git Diff (23 lines)</summary>  
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b4f84a55..8ba94b0f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d 
<h3>3: Staging changes from 842a71a3 to fc944d8a on Mon Oct 28 13:21:43 2024 </h3>  
<summary>Git Diff (23 lines)</summary>  
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b4f84a55..8ba94b0f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d 
<summary>Kustomize Generated Diff (9 lines)</summary>  
./commit-842a71a3/staging/components/multi-platform-controller/staging/kustomize.out.yaml
673c673
<         image: quay.io/konflux-ci/multi-platform-controller:23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
---
>         image: quay.io/konflux-ci/multi-platform-controller:bc75e2dbe34b240d6527aa6363f810096ab36eb3
732c732
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:bc75e2dbe34b240d6527aa6363f810096ab36eb3 
No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

<h3>3: Development changes from 842a71a3 to fc944d8a on Mon Oct 28 13:21:43 2024 </h3>  
<summary>Git Diff (23 lines)</summary>  
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b4f84a55..8ba94b0f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d 
<summary>Kustomize Generated Diff (9 lines)</summary>  
./commit-842a71a3/development/components/multi-platform-controller/development/kustomize.out.yaml
340c340
<         image: quay.io/konflux-ci/multi-platform-controller:23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
---
>         image: quay.io/konflux-ci/multi-platform-controller:bc75e2dbe34b240d6527aa6363f810096ab36eb3
399c399
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:bc75e2dbe34b240d6527aa6363f810096ab36eb3 
No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

<h3>4: Production changes from cce8bcfb to 842a71a3 on Mon Oct 28 08:13:42 2024 </h3>  
<summary>Git Diff (24 lines)</summary>  
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a78e00de..b4f84a55 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: dev
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
<summary>Kustomize Generated Diff (0 lines)</summary>  
 
<h3>4: Staging changes from cce8bcfb to 842a71a3 on Mon Oct 28 08:13:42 2024 </h3>  
<summary>Git Diff (24 lines)</summary>  
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a78e00de..b4f84a55 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: dev
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
<summary>Kustomize Generated Diff (9 lines)</summary>  
./commit-cce8bcfb/staging/components/multi-platform-controller/staging/kustomize.out.yaml
673c673
<         image: quay.io/konflux-ci/multi-platform-controller:bc75e2dbe34b240d6527aa6363f810096ab36eb3
---
>         image: quay.io/mshaposhnik/multi-platform-controller:dev
732c732
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:bc75e2dbe34b240d6527aa6363f810096ab36eb3
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668 
No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

<h3>4: Development changes from cce8bcfb to 842a71a3 on Mon Oct 28 08:13:42 2024 </h3>  
<summary>Git Diff (24 lines)</summary>  
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a78e00de..b4f84a55 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 
 
 images:
 - name: multi-platform-controller
-  newName: quay.io/mshaposhnik/multi-platform-controller
-  newTag: dev
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
<summary>Kustomize Generated Diff (9 lines)</summary>  
./commit-cce8bcfb/development/components/multi-platform-controller/development/kustomize.out.yaml
340c340
<         image: quay.io/konflux-ci/multi-platform-controller:bc75e2dbe34b240d6527aa6363f810096ab36eb3
---
>         image: quay.io/mshaposhnik/multi-platform-controller:dev
399c399
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:bc75e2dbe34b240d6527aa6363f810096ab36eb3
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668 