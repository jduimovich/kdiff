# kustomize changes tracked by commits 
### This file generated at Mon Oct 28 12:06:39 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from cce8bcfb to 842a71a3 on Mon Oct 28 08:13:42 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a78e00de..b4f84a55 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from cce8bcfb to 842a71a3 on Mon Oct 28 08:13:42 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a78e00de..b4f84a55 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-cce8bcfb/staging/components/multi-platform-controller/staging/kustomize.out.yaml
673c673
<         image: quay.io/konflux-ci/multi-platform-controller:bc75e2dbe34b240d6527aa6363f810096ab36eb3
---
>         image: quay.io/mshaposhnik/multi-platform-controller:dev
732c732
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:bc75e2dbe34b240d6527aa6363f810096ab36eb3
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from cce8bcfb to 842a71a3 on Mon Oct 28 08:13:42 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a78e00de..b4f84a55 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-cce8bcfb/development/components/multi-platform-controller/development/kustomize.out.yaml
340c340
<         image: quay.io/konflux-ci/multi-platform-controller:bc75e2dbe34b240d6527aa6363f810096ab36eb3
---
>         image: quay.io/mshaposhnik/multi-platform-controller:dev
399c399
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:bc75e2dbe34b240d6527aa6363f810096ab36eb3
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668 
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
<h3>2: Production changes from 0b936310 to cce8bcfb on Sat Oct 26 13:33:07 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index a0e39580..f3f40133 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=5db32c5df1f47cb546ed6aa02301f19acbac0358
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4a40b2a..e3796693 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=5db32c5df1f47cb546ed6aa02301f19acbac0358
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 5db32c5df1f47cb546ed6aa02301f19acbac0358
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 0b936310 to cce8bcfb on Sat Oct 26 13:33:07 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index a0e39580..f3f40133 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=5db32c5df1f47cb546ed6aa02301f19acbac0358
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4a40b2a..e3796693 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=5db32c5df1f47cb546ed6aa02301f19acbac0358
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 5db32c5df1f47cb546ed6aa02301f19acbac0358
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 0b936310 to cce8bcfb on Sat Oct 26 13:33:07 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index a0e39580..f3f40133 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=5db32c5df1f47cb546ed6aa02301f19acbac0358
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e4a40b2a..e3796693 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e94df330de52919fd7d77cf41df2f5cca0adb4f5
+  - https://github.com/konflux-ci/release-service/config/default?ref=5db32c5df1f47cb546ed6aa02301f19acbac0358
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e94df330de52919fd7d77cf41df2f5cca0adb4f5
+    newTag: 5db32c5df1f47cb546ed6aa02301f19acbac0358
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0b936310/development/components/release/development/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:5db32c5df1f47cb546ed6aa02301f19acbac0358
---
>         image: quay.io/konflux-ci/release-service:e94df330de52919fd7d77cf41df2f5cca0adb4f5 
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
<h3>3: Production changes from 43682e0f to 0b936310 on Fri Oct 25 16:50:00 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index ceb0f934..a2504c15 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 78bd2689..d519efc1 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (374 lines)</summary>  

``` 
./commit-43682e0f/production/components/enterprise-contract/kustomize.out.yaml
3a4
>   annotations: {}
./commit-43682e0f/production/components/has/production/kustomize.out.yaml
881d880
<   creationTimestamp: null
931d929
<   creationTimestamp: null
./commit-43682e0f/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
14d13
<   creationTimestamp: null
1556d1554
<   creationTimestamp: null
./commit-43682e0f/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
14d13
<   creationTimestamp: null
1556d1554
<   creationTimestamp: null
./commit-43682e0f/production/components/repository-validator/production/kustomize.out.yaml
0a1,354
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     app.kubernetes.io/component: manager
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: system
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: namespace
>     app.kubernetes.io/part-of: repository-validator
>     control-plane: controller-manager
>   name: repository-validator
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   labels:
>     app.kubernetes.io/component: rbac
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: controller-manager-sa
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: serviceaccount
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-controller-manager
>   namespace: repository-validator
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   labels:
>     app.kubernetes.io/component: rbac
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: leader-election-role
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: role
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-leader-election-role
>   namespace: repository-validator
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     app.kubernetes.io/component: kube-rbac-proxy
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: metrics-reader
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: clusterrole
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     app.kubernetes.io/component: kube-rbac-proxy
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: proxy-role
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: clusterrole
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-proxy-role
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
> kind: RoleBinding
> metadata:
>   labels:
>     app.kubernetes.io/component: rbac
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: leader-election-rolebinding
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: rolebinding
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-leader-election-rolebinding
>   namespace: repository-validator
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: repository-validator-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: repository-validator-controller-manager
>   namespace: repository-validator
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app.kubernetes.io/component: kube-rbac-proxy
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: proxy-rolebinding
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: clusterrolebinding
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: repository-validator-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: repository-validator-controller-manager
>   namespace: repository-validator
> ---
> apiVersion: v1
> data:
>   config.json: |
>     [
>         "https://gitlab.cee.redhat.com",
>         "https://gitlab.corp.redhat.com",
>         "https://gitlab.com/redhat",
>         "https://github.com/openshift-priv",
>         "https://github.com/redhat-appstudio/tekton-tools",
>         "https://github.com/parodos-dev/serverless-workflows",
>         "https://github.com/rhoai-rhtap",
>         "https://github.com/red-hat-data-services"
>     ]
> kind: ConfigMap
> metadata:
>   name: config-kk82df6tgd
>   namespace: repository-validator
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app.kubernetes.io/component: kube-rbac-proxy
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: controller-manager-metrics-service
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: service
>     app.kubernetes.io/part-of: repository-validator
>     control-plane: controller-manager
>   name: repository-validator-controller-manager-metrics-service
>   namespace: repository-validator
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   labels:
>     app.kubernetes.io/component: webhook
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: webhook-service
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: service
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-webhook-service
>   namespace: repository-validator
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     app.kubernetes.io/component: manager
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: controller-manager
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: deployment
>     app.kubernetes.io/part-of: repository-validator
>     control-plane: controller-manager
>   name: repository-validator-controller-manager
>   namespace: repository-validator
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         - --url-prefix-allow-list=/mnt/config.json
>         command:
>         - /manager
>         image: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator:1ee871c402fb8ee80040fca20d2b4fd14ed97c0d
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 10m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>         - mountPath: /mnt
>           name: config
>           readOnly: true
>       - args:
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
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: repository-validator-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
>       - configMap:
>           items:
>           - key: config.json
>             path: config.json
>           name: config-kk82df6tgd
>         name: config
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: repository-validator-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: repository-validator-webhook-service
>       namespace: repository-validator
>       path: /validate-pipelinesascode-tekton-dev-v1alpha1-repository
>   failurePolicy: Fail
>   name: vrepository.kb.io
>   rules:
>   - apiGroups:
>     - pipelinesascode.tekton.dev
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - repositories
>   sideEffects: None 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 43682e0f to 0b936310 on Fri Oct 25 16:50:00 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index ceb0f934..a2504c15 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 78bd2689..d519efc1 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2622 lines)</summary>  

``` 
./commit-43682e0f/staging/components/enterprise-contract/kustomize.out.yaml
3a4
>   annotations: {}
./commit-43682e0f/staging/components/has/staging/kustomize.out.yaml
908d907
<   creationTimestamp: null
958d956
<   creationTimestamp: null
./commit-43682e0f/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
14d13
<   creationTimestamp: null
1556d1554
<   creationTimestamp: null
./commit-43682e0f/staging/components/repository-validator/staging/kustomize.out.yaml
0a1,351
> apiVersion: v1
> kind: Namespace
> metadata:
>   labels:
>     app.kubernetes.io/component: manager
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: system
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: namespace
>     app.kubernetes.io/part-of: repository-validator
>     control-plane: controller-manager
>   name: repository-validator
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   labels:
>     app.kubernetes.io/component: rbac
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: controller-manager-sa
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: serviceaccount
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-controller-manager
>   namespace: repository-validator
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   labels:
>     app.kubernetes.io/component: rbac
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: leader-election-role
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: role
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-leader-election-role
>   namespace: repository-validator
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - coordination.k8s.io
>   resources:
>   - leases
>   verbs:
>   - get
>   - list
>   - watch
>   - create
>   - update
>   - patch
>   - delete
> - apiGroups:
>   - ""
>   resources:
>   - events
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     app.kubernetes.io/component: kube-rbac-proxy
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: metrics-reader
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: clusterrole
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-metrics-reader
> rules:
> - nonResourceURLs:
>   - /metrics
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     app.kubernetes.io/component: kube-rbac-proxy
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: proxy-role
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: clusterrole
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-proxy-role
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
> kind: RoleBinding
> metadata:
>   labels:
>     app.kubernetes.io/component: rbac
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: leader-election-rolebinding
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: rolebinding
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-leader-election-rolebinding
>   namespace: repository-validator
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: repository-validator-leader-election-role
> subjects:
> - kind: ServiceAccount
>   name: repository-validator-controller-manager
>   namespace: repository-validator
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   labels:
>     app.kubernetes.io/component: kube-rbac-proxy
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: proxy-rolebinding
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: clusterrolebinding
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-proxy-rolebinding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: repository-validator-proxy-role
> subjects:
> - kind: ServiceAccount
>   name: repository-validator-controller-manager
>   namespace: repository-validator
> ---
> apiVersion: v1
> data:
>   config.json: |
>     [
>         "https://gitlab.cee.redhat.com",
>         "https://gitlab.corp.redhat.com",
>         "https://gitlab.com/redhat",
>         "https://github.com/openshift-priv",
>         "https://github.com/redhat-appstudio/tekton-tools"
>     ]
> kind: ConfigMap
> metadata:
>   name: config-kf5cfkbhdc
>   namespace: repository-validator
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   labels:
>     app.kubernetes.io/component: kube-rbac-proxy
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: controller-manager-metrics-service
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: service
>     app.kubernetes.io/part-of: repository-validator
>     control-plane: controller-manager
>   name: repository-validator-controller-manager-metrics-service
>   namespace: repository-validator
> spec:
>   ports:
>   - name: https
>     port: 8443
>     protocol: TCP
>     targetPort: https
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     service.beta.openshift.io/serving-cert-secret-name: webhook-server-cert
>   labels:
>     app.kubernetes.io/component: webhook
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: webhook-service
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: service
>     app.kubernetes.io/part-of: repository-validator
>   name: repository-validator-webhook-service
>   namespace: repository-validator
> spec:
>   ports:
>   - port: 443
>     protocol: TCP
>     targetPort: 9443
>   selector:
>     control-plane: controller-manager
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   labels:
>     app.kubernetes.io/component: manager
>     app.kubernetes.io/created-by: repository-validator
>     app.kubernetes.io/instance: controller-manager
>     app.kubernetes.io/managed-by: kustomize
>     app.kubernetes.io/name: deployment
>     app.kubernetes.io/part-of: repository-validator
>     control-plane: controller-manager
>   name: repository-validator-controller-manager
>   namespace: repository-validator
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       control-plane: controller-manager
>   template:
>     metadata:
>       annotations:
>         kubectl.kubernetes.io/default-container: manager
>       labels:
>         control-plane: controller-manager
>     spec:
>       containers:
>       - args:
>         - --health-probe-bind-address=:8081
>         - --metrics-bind-address=127.0.0.1:8080
>         - --leader-elect
>         - --url-prefix-allow-list=/mnt/config.json
>         command:
>         - /manager
>         image: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator:1ee871c402fb8ee80040fca20d2b4fd14ed97c0d
>         livenessProbe:
>           httpGet:
>             path: /healthz
>             port: 8081
>           initialDelaySeconds: 15
>           periodSeconds: 20
>         name: manager
>         ports:
>         - containerPort: 9443
>           name: webhook-server
>           protocol: TCP
>         readinessProbe:
>           httpGet:
>             path: /readyz
>             port: 8081
>           initialDelaySeconds: 5
>           periodSeconds: 10
>         resources:
>           limits:
>             cpu: 500m
>             memory: 128Mi
>           requests:
>             cpu: 10m
>             memory: 64Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>         volumeMounts:
>         - mountPath: /tmp/k8s-webhook-server/serving-certs
>           name: cert
>           readOnly: true
>         - mountPath: /mnt
>           name: config
>           readOnly: true
>       - args:
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
>       securityContext:
>         runAsNonRoot: true
>       serviceAccountName: repository-validator-controller-manager
>       terminationGracePeriodSeconds: 10
>       volumes:
>       - name: cert
>         secret:
>           defaultMode: 420
>           secretName: webhook-server-cert
>       - configMap:
>           items:
>           - key: config.json
>             path: config.json
>           name: config-kf5cfkbhdc
>         name: config
> ---
> apiVersion: admissionregistration.k8s.io/v1
> kind: ValidatingWebhookConfiguration
> metadata:
>   annotations:
>     service.beta.openshift.io/inject-cabundle: "true"
>   name: repository-validator-validating-webhook-configuration
> webhooks:
> - admissionReviewVersions:
>   - v1
>   clientConfig:
>     service:
>       name: repository-validator-webhook-service
>       namespace: repository-validator
>       path: /validate-pipelinesascode-tekton-dev-v1alpha1-repository
>   failurePolicy: Fail
>   name: vrepository.kb.io
>   rules:
>   - apiGroups:
>     - pipelinesascode.tekton.dev
>     apiVersions:
>     - v1alpha1
>     operations:
>     - CREATE
>     - UPDATE
>     resources:
>     - repositories
>   sideEffects: None
./commit-43682e0f/staging/components/workspaces/staging/stone-stage-p01/kustomize.out.yaml
1,1116d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     app.kubernetes.io/component: manager
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: system
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: namespace
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-system
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     controller-gen.kubebuilder.io/version: v0.14.0
<   name: internalworkspaces.workspaces.konflux-ci.dev
< spec:
<   group: workspaces.konflux-ci.dev
<   names:
<     kind: InternalWorkspace
<     listKind: InternalWorkspaceList
<     plural: internalworkspaces
<     singular: internalworkspace
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.visibility
<       name: Visibility
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: InternalWorkspace is the Schema for the workspaces API
<         properties:
<           apiVersion:
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
<             type: string
<           kind:
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: InternalWorkspaceSpec defines the desired state of Workspace
<             properties:
<               displayName:
<                 type: string
<               owner:
<                 description: UserInfo contains information about a user identity
<                 properties:
<                   jwtInfo:
<                     description: JwtInfo contains information extracted from the user
<                       JWT Token
<                     properties:
<                       email:
<                         type: string
<                       sub:
<                         type: string
<                       userId:
<                         type: string
<                     required:
<                     - email
<                     - sub
<                     - userId
<                     type: object
<                 required:
<                 - jwtInfo
<                 type: object
<               visibility:
<                 enum:
<                 - community
<                 - private
<                 type: string
<             required:
<             - displayName
<             - owner
<             - visibility
<             type: object
<           status:
<             description: InternalWorkspaceStatus defines the observed state of Workspace
<             properties:
<               conditions:
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
<                   properties:
<                     lastTransitionTime:
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
<                       format: date-time
<                       type: string
<                     message:
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
<                       maxLength: 32768
<                       type: string
<                     observedGeneration:
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
<                       format: int64
<                       minimum: 0
<                       type: integer
<                     reason:
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
<                         This field may not be empty.
<                       maxLength: 1024
<                       minLength: 1
<                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
<                       type: string
<                     status:
<                       description: status of the condition, one of True, False, Unknown.
<                       enum:
<                       - "True"
<                       - "False"
<                       - Unknown
<                       type: string
<                     type:
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
<                       maxLength: 316
<                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
<                       type: string
<                   required:
<                   - lastTransitionTime
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
<               owner:
<                 description: Owner contains information on the owner
<                 properties:
<                   username:
<                     type: string
<                 type: object
<               space:
<                 description: Space contains information about the underlying Space
<                 properties:
<                   isHome:
<                     type: boolean
<                   name:
<                     type: string
<                   targetCluster:
<                     description: TargetCluster contains the URL to the cluster where
<                       the workspace's namespaces live
<                     type: string
<                 required:
<                 - isHome
<                 - name
<                 type: object
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     controller-gen.kubebuilder.io/version: v0.14.0
<   name: workspaces.workspaces.konflux-ci.dev
< spec:
<   group: workspaces.konflux-ci.dev
<   names:
<     kind: Workspace
<     listKind: WorkspaceList
<     plural: workspaces
<     singular: workspace
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.visibility
<       name: Visibility
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: Workspace is the Schema for the workspaces API
<         properties:
<           apiVersion:
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
<             type: string
<           kind:
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: WorkspaceSpec defines the desired state of Workspace
<             properties:
<               visibility:
<                 enum:
<                 - community
<                 - private
<                 type: string
<             required:
<             - visibility
<             type: object
<           status:
<             description: WorkspaceStatus defines the observed state of Workspace
<             properties:
<               conditions:
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
<                   properties:
<                     lastTransitionTime:
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
<                       format: date-time
<                       type: string
<                     message:
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
<                       maxLength: 32768
<                       type: string
<                     observedGeneration:
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
<                       format: int64
<                       minimum: 0
<                       type: integer
<                     reason:
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
<                         This field may not be empty.
<                       maxLength: 1024
<                       minLength: 1
<                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
<                       type: string
<                     status:
<                       description: status of the condition, one of True, False, Unknown.
<                       enum:
<                       - "True"
<                       - "False"
<                       - Unknown
<                       type: string
<                     type:
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
<                       maxLength: 316
<                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
<                       type: string
<                   required:
<                   - lastTransitionTime
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
<               owner:
<                 description: UserInfoStatus User info stored in the status
<                 properties:
<                   email:
<                     type: string
<                 required:
<                 - email
<                 type: object
<               space:
<                 description: SpaceInfo Information about a Space
<                 properties:
<                   name:
<                     type: string
<                   targetCluster:
<                     description: TargetCluster contains the URL to the cluster where
<                       the workspace's namespaces live
<                     type: string
<                 required:
<                 - name
<                 type: object
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   labels:
<     app.kubernetes.io/component: rbac
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: serviceaccount
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-spacebinding-reader
<   namespace: toolchain-host-operator
< rules:
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacebindings
<   verbs:
<   - list
<   - get
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-usersignup-reader
<   namespace: toolchain-host-operator
< rules:
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - usersignups
<   verbs:
<   - list
<   - get
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   labels:
<     app.kubernetes.io/component: rbac
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: leader-election-role
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: role
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-leader-election-role
<   namespace: workspaces-system
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - coordination.k8s.io
<   resources:
<   - leases
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-workspace-server-editor
<   namespace: workspaces-system
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - internalworkspaces
<   verbs:
<   - list
<   - get
<   - watch
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-service-maintainer
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: workspaces-manager-role
< rules:
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - roles
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacebindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spaces
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - toolchainstatuses
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - usersignups
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - internalworkspaces
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - internalworkspaces/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - internalworkspaces/status
<   verbs:
<   - get
<   - patch
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: metrics-reader
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-role
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-rest-api-server:spacebinding-reader
<   namespace: toolchain-host-operator
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-spacebinding-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-rest-api-server:usersignup-reader
<   namespace: toolchain-host-operator
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-usersignup-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: rbac
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: leader-election-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: rolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-leader-election-rolebinding
<   namespace: workspaces-system
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-rest-api-server:workspace-server-editor
<   namespace: workspaces-system
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-workspace-server-editor
< subjects:
< - kind: ServiceAccount
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-service-maintainer
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-service-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: rbac
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: manager-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-manager-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: workspaces-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
< apiVersion: v1
< data:
<   kubesaw.namespace: toolchain-host-operator
< kind: ConfigMap
< metadata:
<   name: workspaces-operator-config
<   namespace: workspaces-system
< ---
< apiVersion: v1
< data:
<   kubesaw.namespace: toolchain-host-operator
<   log.level: "-4"
< kind: ConfigMap
< metadata:
<   name: workspaces-rest-api-server-config
<   namespace: workspaces-system
< ---
< apiVersion: v1
< data:
<   config.yaml: |
<     http:
<       services:
<         web:
<           loadBalancer:
<             servers:
<             - url: "http://localhost:8080/"
<       routers:
<         app-apis:
<           service: web
<           entrypoints:
<           - web
<           rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) || Method(`PATCH`) )
<           middlewares:
<             - jwt-authorizer
<         app-healthz:
<           service: web
<           entrypoints:
<           - web
<           rule: Path(`/healthz`)
< 
<     # Middlewares
<       middlewares:
< 
<     # JWT Auth
<         jwt-authorizer:
<           plugin:
<             jwt:
<               payloadFields:
<               - sub
<               - exp
<               required: true
<               keys: []
<               jwtHeaders:
<                 X-Subject: sub
<               jwtSources:
<               - type: bearer
<                 key: Authorization
< kind: ConfigMap
< metadata:
<   name: workspaces-traefik-sidecar-dynamic-config
<   namespace: workspaces-system
< ---
< apiVersion: v1
< data:
<   traefik.yaml: |
<     entryPoints:
<       web:
<         address: ":8000"
<       metrics:
<         address: ":8001"
<     providers:
<       file:
<         directory: /etc/traefik/dynamic/
<         watch: true
<     # Configure Logger
<     log:
<       level: INFO
<       format: json
<     # Print acess logs
<     accessLog:
<       format: json
<     # enable Prometheus metrics
<     metrics:
<       prometheus:
<         entryPoint: metrics
<     # enable Jaeger tracing
<     # tracing:
<     #   jaeger: {}
<     experimental:
<       plugins:
<         jwt:
<           moduleName: github.com/traefik-plugins/traefik-jwt-plugin
<           version: v0.9.0
<     authSources:
<       jwtSource:
<         jwt:
<           jwksUrl: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
< kind: ConfigMap
< metadata:
<   name: workspaces-traefik-sidecar-static-config
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: workspaces-metrics-reader
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-controller-manager-metrics
<   namespace: workspaces-system
< spec:
<   ports:
<   - name: metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   selector:
<     control-plane: controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     provider: workspaces
<     run: rest-api-server
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< spec:
<   ports:
<   - port: 8000
<     protocol: TCP
<     targetPort: 8000
<   selector:
<     app: rest-api-server
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     provider: workspaces
<     run: rest-api-server
<   name: workspaces-rest-api-server-metrics
<   namespace: workspaces-system
< spec:
<   ports:
<   - port: 8001
<     protocol: TCP
<     targetPort: 8001
<   selector:
<     app: rest-api-server
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app.kubernetes.io/component: manager
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: deployment
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: controller-manager
<   template:
<     metadata:
<       annotations:
<         kubectl.kubernetes.io/default-container: manager
<       labels:
<         control-plane: controller-manager
<     spec:
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/arch
<                 operator: In
<                 values:
<                 - amd64
<               - key: kubernetes.io/os
<                 operator: In
<                 values:
<                 - linux
<       containers:
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=0.0.0.0:8080
<         - --leader-elect
<         command:
<         - /manager
<         env:
<         - name: KUBESAW_NAMESPACE
<           valueFrom:
<             configMapKeyRef:
<               key: kubesaw.namespace
<               name: workspaces-operator-config
<         - name: WORKSPACES_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha8
<         imagePullPolicy: IfNotPresent
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         ports:
<         - containerPort: 8081
<           name: http
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 10m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: workspaces-controller-manager
<       terminationGracePeriodSeconds: 10
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app: rest-api-server
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: rest-api-server
<   template:
<     metadata:
<       labels:
<         app: rest-api-server
<     spec:
<       containers:
<       - image: traefik:v3.1.6
<         imagePullPolicy: IfNotPresent
<         name: proxy
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 10m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /etc/traefik
<           name: traefik-static-config
<         - mountPath: /etc/traefik/dynamic
<           name: traefik-dynamic-config
<         - mountPath: /plugins-storage
<           name: traefik-plugin-storage
<       - env:
<         - name: KUBESAW_NAMESPACE
<           valueFrom:
<             configMapKeyRef:
<               key: kubesaw.namespace
<               name: workspaces-rest-api-server-config
<         - name: LOG_LEVEL
<           valueFrom:
<             configMapKeyRef:
<               key: log.level
<               name: workspaces-rest-api-server-config
<         - name: WORKSPACES_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha8
<         imagePullPolicy: IfNotPresent
<         name: rest-api
<         ports:
<         - containerPort: 8080
<           name: http
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 10m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: workspaces-rest-api-server
<       terminationGracePeriodSeconds: 60
<       volumes:
<       - emptyDir:
<           sizeLimit: 20Mi
<         name: traefik-plugin-storage
<       - configMap:
<           name: workspaces-traefik-sidecar-static-config
<         name: traefik-static-config
<       - configMap:
<           name: workspaces-traefik-sidecar-dynamic-config
<         name: traefik-dynamic-config
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-metrics-proxy
<   namespace: workspaces-system
< spec:
<   endpoints:
<   - authorization:
<       credentials:
<         key: token
<         name: workspaces-metrics-reader
<     interval: 15s
<     path: /metrics
<     port: metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app.kubernetes.io/component: metrics
<       control-plane: controller-manager
./commit-43682e0f/staging/components/workspaces/staging/stone-stg-host/kustomize.out.yaml
1,1136d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     app.kubernetes.io/component: manager
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: system
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: namespace
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-system
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     controller-gen.kubebuilder.io/version: v0.14.0
<   name: internalworkspaces.workspaces.konflux-ci.dev
< spec:
<   group: workspaces.konflux-ci.dev
<   names:
<     kind: InternalWorkspace
<     listKind: InternalWorkspaceList
<     plural: internalworkspaces
<     singular: internalworkspace
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.visibility
<       name: Visibility
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: InternalWorkspace is the Schema for the workspaces API
<         properties:
<           apiVersion:
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
<             type: string
<           kind:
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: InternalWorkspaceSpec defines the desired state of Workspace
<             properties:
<               displayName:
<                 type: string
<               owner:
<                 description: UserInfo contains information about a user identity
<                 properties:
<                   jwtInfo:
<                     description: JwtInfo contains information extracted from the user
<                       JWT Token
<                     properties:
<                       email:
<                         type: string
<                       sub:
<                         type: string
<                       userId:
<                         type: string
<                     required:
<                     - email
<                     - sub
<                     - userId
<                     type: object
<                 required:
<                 - jwtInfo
<                 type: object
<               visibility:
<                 enum:
<                 - community
<                 - private
<                 type: string
<             required:
<             - displayName
<             - owner
<             - visibility
<             type: object
<           status:
<             description: InternalWorkspaceStatus defines the observed state of Workspace
<             properties:
<               conditions:
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
<                   properties:
<                     lastTransitionTime:
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
<                       format: date-time
<                       type: string
<                     message:
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
<                       maxLength: 32768
<                       type: string
<                     observedGeneration:
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
<                       format: int64
<                       minimum: 0
<                       type: integer
<                     reason:
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
<                         This field may not be empty.
<                       maxLength: 1024
<                       minLength: 1
<                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
<                       type: string
<                     status:
<                       description: status of the condition, one of True, False, Unknown.
<                       enum:
<                       - "True"
<                       - "False"
<                       - Unknown
<                       type: string
<                     type:
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
<                       maxLength: 316
<                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
<                       type: string
<                   required:
<                   - lastTransitionTime
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
<               owner:
<                 description: Owner contains information on the owner
<                 properties:
<                   username:
<                     type: string
<                 type: object
<               space:
<                 description: Space contains information about the underlying Space
<                 properties:
<                   isHome:
<                     type: boolean
<                   name:
<                     type: string
<                   targetCluster:
<                     description: TargetCluster contains the URL to the cluster where
<                       the workspace's namespaces live
<                     type: string
<                 required:
<                 - isHome
<                 - name
<                 type: object
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   annotations:
<     controller-gen.kubebuilder.io/version: v0.14.0
<   name: workspaces.workspaces.konflux-ci.dev
< spec:
<   group: workspaces.konflux-ci.dev
<   names:
<     kind: Workspace
<     listKind: WorkspaceList
<     plural: workspaces
<     singular: workspace
<   scope: Namespaced
<   versions:
<   - additionalPrinterColumns:
<     - jsonPath: .spec.visibility
<       name: Visibility
<       type: string
<     name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: Workspace is the Schema for the workspaces API
<         properties:
<           apiVersion:
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
<             type: string
<           kind:
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: WorkspaceSpec defines the desired state of Workspace
<             properties:
<               visibility:
<                 enum:
<                 - community
<                 - private
<                 type: string
<             required:
<             - visibility
<             type: object
<           status:
<             description: WorkspaceStatus defines the observed state of Workspace
<             properties:
<               conditions:
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
<                   properties:
<                     lastTransitionTime:
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
<                       format: date-time
<                       type: string
<                     message:
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
<                       maxLength: 32768
<                       type: string
<                     observedGeneration:
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
<                       format: int64
<                       minimum: 0
<                       type: integer
<                     reason:
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
<                         This field may not be empty.
<                       maxLength: 1024
<                       minLength: 1
<                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
<                       type: string
<                     status:
<                       description: status of the condition, one of True, False, Unknown.
<                       enum:
<                       - "True"
<                       - "False"
<                       - Unknown
<                       type: string
<                     type:
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
<                       maxLength: 316
<                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
<                       type: string
<                   required:
<                   - lastTransitionTime
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
<               owner:
<                 description: UserInfoStatus User info stored in the status
<                 properties:
<                   email:
<                     type: string
<                 required:
<                 - email
<                 type: object
<               space:
<                 description: SpaceInfo Information about a Space
<                 properties:
<                   name:
<                     type: string
<                   targetCluster:
<                     description: TargetCluster contains the URL to the cluster where
<                       the workspace's namespaces live
<                     type: string
<                 required:
<                 - name
<                 type: object
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   labels:
<     app.kubernetes.io/component: rbac
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: serviceaccount
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-spacebinding-reader
<   namespace: toolchain-host-operator
< rules:
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacebindings
<   verbs:
<   - list
<   - get
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-usersignup-reader
<   namespace: toolchain-host-operator
< rules:
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - usersignups
<   verbs:
<   - list
<   - get
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   labels:
<     app.kubernetes.io/component: rbac
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: leader-election-role
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: role
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-leader-election-role
<   namespace: workspaces-system
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - coordination.k8s.io
<   resources:
<   - leases
<   verbs:
<   - get
<   - list
<   - watch
<   - create
<   - update
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resources:
<   - events
<   verbs:
<   - create
<   - patch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-workspace-server-editor
<   namespace: workspaces-system
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - internalworkspaces
<   verbs:
<   - list
<   - get
<   - watch
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-service-maintainer
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: workspaces-manager-role
< rules:
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - roles
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacebindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spaces
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - toolchainstatuses
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - usersignups
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - internalworkspaces
<   verbs:
<   - create
<   - delete
<   - deletecollection
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - internalworkspaces/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - internalworkspaces/status
<   verbs:
<   - get
<   - patch
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: metrics-reader
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-role
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrole
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-rest-api-server:spacebinding-reader
<   namespace: toolchain-host-operator
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-spacebinding-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-rest-api-server:usersignup-reader
<   namespace: toolchain-host-operator
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-usersignup-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: rbac
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: leader-election-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: rolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-leader-election-rolebinding
<   namespace: workspaces-system
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-leader-election-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-rest-api-server:workspace-server-editor
<   namespace: workspaces-system
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-workspace-server-editor
< subjects:
< - kind: ServiceAccount
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-service-maintainer
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-service-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: rbac
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: manager-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-manager-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: workspaces-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app.kubernetes.io/component: kube-rbac-proxy
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: proxy-rolebinding
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: clusterrolebinding
<     app.kubernetes.io/part-of: workspaces
<   name: workspaces-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: workspaces-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< ---
< apiVersion: v1
< data:
<   kubesaw.namespace: toolchain-host-operator
< kind: ConfigMap
< metadata:
<   name: workspaces-operator-config
<   namespace: workspaces-system
< ---
< apiVersion: v1
< data:
<   kubesaw.namespace: toolchain-host-operator
<   log.level: "-4"
< kind: ConfigMap
< metadata:
<   name: workspaces-rest-api-server-config
<   namespace: workspaces-system
< ---
< apiVersion: v1
< data:
<   config.yaml: |
<     http:
<       services:
<         web:
<           loadBalancer:
<             servers:
<             - url: "http://localhost:8080/"
<       routers:
<         app-apis:
<           service: web
<           entrypoints:
<           - web
<           rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) || Method(`PATCH`) )
<           middlewares:
<             - jwt-authorizer
<         app-healthz:
<           service: web
<           entrypoints:
<           - web
<           rule: Path(`/healthz`)
< 
<     # Middlewares
<       middlewares:
< 
<     # JWT Auth
<         jwt-authorizer:
<           plugin:
<             jwt:
<               payloadFields:
<               - sub
<               - exp
<               required: true
<               keys: []
<               jwtHeaders:
<                 X-Subject: sub
<               jwtSources:
<               - type: bearer
<                 key: Authorization
< kind: ConfigMap
< metadata:
<   name: workspaces-traefik-sidecar-dynamic-config
<   namespace: workspaces-system
< ---
< apiVersion: v1
< data:
<   traefik.yaml: |
<     entryPoints:
<       web:
<         address: ":8000"
<       metrics:
<         address: ":8001"
<     providers:
<       file:
<         directory: /etc/traefik/dynamic/
<         watch: true
<     # Configure Logger
<     log:
<       level: INFO
<       format: json
<     # Print acess logs
<     accessLog:
<       format: json
<     # enable Prometheus metrics
<     metrics:
<       prometheus:
<         entryPoint: metrics
<     # enable Jaeger tracing
<     # tracing:
<     #   jaeger: {}
<     experimental:
<       plugins:
<         jwt:
<           moduleName: github.com/traefik-plugins/traefik-jwt-plugin
<           version: v0.9.0
<     authSources:
<       jwtSource:
<         jwt:
<           jwksUrl: https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/certs
< kind: ConfigMap
< metadata:
<   name: workspaces-traefik-sidecar-static-config
<   namespace: workspaces-system
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: workspaces-metrics-reader
<   name: workspaces-metrics-reader
<   namespace: workspaces-system
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-controller-manager-metrics
<   namespace: workspaces-system
< spec:
<   ports:
<   - name: metrics
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   selector:
<     control-plane: controller-manager
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     provider: workspaces
<     run: rest-api-server
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< spec:
<   ports:
<   - port: 8000
<     protocol: TCP
<     targetPort: 8000
<   selector:
<     app: rest-api-server
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     provider: workspaces
<     run: rest-api-server
<   name: workspaces-rest-api-server-metrics
<   namespace: workspaces-system
< spec:
<   ports:
<   - port: 8001
<     protocol: TCP
<     targetPort: 8001
<   selector:
<     app: rest-api-server
<   sessionAffinity: None
<   type: ClusterIP
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app.kubernetes.io/component: manager
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: deployment
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-controller-manager
<   namespace: workspaces-system
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       control-plane: controller-manager
<   template:
<     metadata:
<       annotations:
<         kubectl.kubernetes.io/default-container: manager
<       labels:
<         control-plane: controller-manager
<     spec:
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/arch
<                 operator: In
<                 values:
<                 - amd64
<               - key: kubernetes.io/os
<                 operator: In
<                 values:
<                 - linux
<       containers:
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=0.0.0.0:8080
<         - --leader-elect
<         command:
<         - /manager
<         env:
<         - name: KUBESAW_NAMESPACE
<           valueFrom:
<             configMapKeyRef:
<               key: kubesaw.namespace
<               name: workspaces-operator-config
<         - name: WORKSPACES_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha8
<         imagePullPolicy: IfNotPresent
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         ports:
<         - containerPort: 8081
<           name: http
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 10m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: workspaces-controller-manager
<       terminationGracePeriodSeconds: 10
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   labels:
<     app: rest-api-server
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: rest-api-server
<   template:
<     metadata:
<       labels:
<         app: rest-api-server
<     spec:
<       containers:
<       - image: traefik:v3.1.6
<         imagePullPolicy: IfNotPresent
<         name: proxy
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 10m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<         volumeMounts:
<         - mountPath: /etc/traefik
<           name: traefik-static-config
<         - mountPath: /etc/traefik/dynamic
<           name: traefik-dynamic-config
<         - mountPath: /plugins-storage
<           name: traefik-plugin-storage
<       - env:
<         - name: KUBESAW_NAMESPACE
<           valueFrom:
<             configMapKeyRef:
<               key: kubesaw.namespace
<               name: workspaces-rest-api-server-config
<         - name: LOG_LEVEL
<           valueFrom:
<             configMapKeyRef:
<               key: log.level
<               name: workspaces-rest-api-server-config
<         - name: WORKSPACES_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha8
<         imagePullPolicy: IfNotPresent
<         name: rest-api
<         ports:
<         - containerPort: 8080
<           name: http
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 10m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: workspaces-rest-api-server
<       terminationGracePeriodSeconds: 60
<       volumes:
<       - emptyDir:
<           sizeLimit: 20Mi
<         name: traefik-plugin-storage
<       - configMap:
<           name: workspaces-traefik-sidecar-static-config
<         name: traefik-static-config
<       - configMap:
<           name: workspaces-traefik-sidecar-dynamic-config
<         name: traefik-dynamic-config
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: workspaces
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: workspaces
<     control-plane: controller-manager
<   name: workspaces-metrics-proxy
<   namespace: workspaces-system
< spec:
<   endpoints:
<   - authorization:
<       credentials:
<         key: token
<         name: workspaces-metrics-reader
<     interval: 15s
<     path: /metrics
<     port: metrics
<     scheme: http
<   selector:
<     matchLabels:
<       app.kubernetes.io/component: metrics
<       control-plane: controller-manager
< ---
< apiVersion: route.openshift.io/v1
< kind: Route
< metadata:
<   labels:
<     app: rest-api-server
<     provider: workspaces
<   name: workspaces-rest-api-server
<   namespace: workspaces-system
< spec:
<   host: workspaces-rest-api-server-workspaces-system.apps.stone-stg-host.qc0p.p1.openshiftapps.com
<   port:
<     targetPort: 8000
<   tls:
<     termination: edge
<   to:
<     kind: Service
<     name: workspaces-rest-api-server
<     weight: 100
<   wildcardPolicy: None 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 43682e0f to 0b936310 on Fri Oct 25 16:50:00 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index ceb0f934..a2504c15 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 78bd2689..d519efc1 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (509 lines)</summary>  

``` 
./commit-43682e0f/development/components/enterprise-contract/kustomize.out.yaml
1,487d0
< apiVersion: apiextensions.k8s.io/v1
< kind: CustomResourceDefinition
< metadata:
<   name: enterprisecontractpolicies.appstudio.redhat.com
< spec:
<   group: appstudio.redhat.com
<   names:
<     categories:
<     - all
<     kind: EnterpriseContractPolicy
<     listKind: EnterpriseContractPolicyList
<     plural: enterprisecontractpolicies
<     shortNames:
<     - ecp
<     singular: enterprisecontractpolicy
<   scope: Namespaced
<   versions:
<   - name: v1alpha1
<     schema:
<       openAPIV3Schema:
<         description: EnterpriseContractPolicy is the Schema for the enterprisecontractpolicies
<           API
<         properties:
<           apiVersion:
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
<             type: string
<           kind:
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: EnterpriseContractPolicySpec is used to configure the Enterprise
<               Contract Policy
<             properties:
<               configuration:
<                 description: Configuration handles policy modification configuration
<                   (exclusions and inclusions)
<                 properties:
<                   collections:
<                     description: |-
<                       Collections set of predefined rules.  DEPRECATED: Collections can be listed in include
<                       with the "@" prefix.
<                     items:
<                       type: string
<                     type: array
<                     x-kubernetes-list-type: set
<                   exclude:
<                     description: |-
<                       Exclude set of policy exclusions that, in case of failure, do not block
<                       the success of the outcome.
<                     items:
<                       type: string
<                     type: array
<                     x-kubernetes-list-type: set
<                   include:
<                     description: |-
<                       Include set of policy inclusions that are added to the policy evaluation.
<                       These override excluded rules.
<                     items:
<                       type: string
<                     type: array
<                     x-kubernetes-list-type: set
<                 type: object
<               description:
<                 description: Description of the policy or its intended use
<                 type: string
<               identity:
<                 description: Identity to be used for keyless verification. This is
<                   an experimental feature.
<                 properties:
<                   issuer:
<                     description: Issuer is the URL of the certificate OIDC issuer
<                       for keyless verification.
<                     type: string
<                   issuerRegExp:
<                     description: |-
<                       IssuerRegExp is a regular expression to match the URL of the certificate OIDC issuer for
<                       keyless verification.
<                     type: string
<                   subject:
<                     description: Subject is the URL of the certificate identity for
<                       keyless verification.
<                     type: string
<                   subjectRegExp:
<                     description: |-
<                       SubjectRegExp is a regular expression to match the URL of the certificate identity for
<                       keyless verification.
<                     type: string
<                 type: object
<               name:
<                 description: Optional name of the policy
<                 type: string
<               publicKey:
<                 description: Public key used to validate the signature of images and
<                   attestations
<                 type: string
<               rekorUrl:
<                 description: URL of the Rekor instance. Empty string disables Rekor
<                   integration
<                 type: string
<               sources:
<                 description: One or more groups of policy rules
<                 items:
<                   description: Source defines policies and data that are evaluated
<                     together
<                   properties:
<                     config:
<                       description: |-
<                         Config specifies which policy rules are included, or excluded, from the
<                         provided policy source urls.
<                       properties:
<                         exclude:
<                           description: |-
<                             Exclude is a set of policy exclusions that, in case of failure, do not block
<                             the success of the outcome.
<                           items:
<                             type: string
<                           type: array
<                           x-kubernetes-list-type: set
<                         include:
<                           description: |-
<                             Include is a set of policy inclusions that are added to the policy evaluation.
<                             These take precedence over policy exclusions.
<                           items:
<                             type: string
<                           type: array
<                           x-kubernetes-list-type: set
<                       type: object
<                     data:
<                       description: List of go-getter style policy data source urls
<                       items:
<                         type: string
<                       type: array
<                     name:
<                       description: Optional name for the source
<                       type: string
<                     policy:
<                       description: List of go-getter style policy source urls
<                       items:
<                         type: string
<                       minItems: 1
<                       type: array
<                     ruleData:
<                       description: Arbitrary rule data that will be visible to policy
<                         rules
<                       type: object
<                       x-kubernetes-preserve-unknown-fields: true
<                     volatileConfig:
<                       description: |-
<                         Specifies volatile configuration that can include or exclude policy rules
<                         based on effective time.
<                       properties:
<                         exclude:
<                           description: |-
<                             Exclude is a set of policy exclusions that, in case of failure, do not block
<                             the success of the outcome.
<                           items:
<                             description: VolatileCriteria includes or excludes a policy
<                               rule with effective dates as an option.
<                             properties:
<                               effectiveOn:
<                                 format: date-time
<                                 type: string
<                               effectiveUntil:
<                                 format: date-time
<                                 type: string
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
<                               value:
<                                 type: string
<                             required:
<                             - value
<                             type: object
<                           type: array
<                           x-kubernetes-list-map-keys:
<                           - value
<                           x-kubernetes-list-type: map
<                         include:
<                           description: |-
<                             Include is a set of policy inclusions that are added to the policy evaluation.
<                             These take precedence over policy exclusions.
<                           items:
<                             description: VolatileCriteria includes or excludes a policy
<                               rule with effective dates as an option.
<                             properties:
<                               effectiveOn:
<                                 format: date-time
<                                 type: string
<                               effectiveUntil:
<                                 format: date-time
<                                 type: string
<                               imageRef:
<                                 description: ImageRef is used to specify an image
<                                   by its digest.
<                                 pattern: ^sha256:[a-fA-F0-9]{64}$
<                                 type: string
<                               value:
<                                 type: string
<                             required:
<                             - value
<                             type: object
<                           type: array
<                           x-kubernetes-list-map-keys:
<                           - value
<                           x-kubernetes-list-type: map
<                       type: object
<                   type: object
<                 minItems: 1
<                 type: array
<             type: object
<           status:
<             description: EnterpriseContractPolicyStatus defines the observed state
<               of EnterpriseContractPolicy
<             type: object
<         type: object
<     served: true
<     storage: true
<     subresources:
<       status: {}
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: enterprisecontract-configmap-viewer-role
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - ec-defaults
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
<     rbac.authorization.k8s.io/aggregate-to-edit: "true"
<   name: enterprisecontractpolicy-editor-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - enterprisecontractpolicies
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - enterprisecontractpolicies/status
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: enterprisecontractpolicy-viewer-role
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - enterprisecontractpolicies
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - enterprisecontractpolicies/status
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: public-ec-cm
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: enterprisecontract-configmap-viewer-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: public-ecp
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: enterprisecontractpolicy-viewer-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: v1
< data:
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
<   verify_ec_task_git_pathInRepo: tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
<   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
<   verify_ec_task_git_url: https://github.com/enterprise-contract/ec-cli.git
< kind: ConfigMap
< metadata:
<   name: ec-defaults
<   namespace: enterprise-contract-service
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata:
<   name: default
<   namespace: enterprise-contract-service
< spec:
<   description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
<     config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
<   name: Default
<   publicKey: k8s://openshift-pipelines/public-key
<   sources:
<   - config:
<       exclude: []
<       include:
<       - '@slsa3'
<     data:
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
<     - github.com/release-engineering/rhtap-ec-policy//data
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata:
<   name: redhat
<   namespace: enterprise-contract-service
< spec:
<   description: 'Includes the full set of rules and policies required internally by
<     Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
<   name: Red Hat
<   publicKey: k8s://openshift-pipelines/public-key
<   sources:
<   - config:
<       exclude: []
<       include:
<       - '@redhat'
<     data:
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
<     - github.com/release-engineering/rhtap-ec-policy//data
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata:
<   name: redhat-no-hermetic
<   namespace: enterprise-contract-service
< spec:
<   description: 'Includes most of the rules and policies required internally by Red
<     Hat when building Red Hat products. It excludes the requirement of hermetic builds.
<     Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
<   name: Red Hat (non hermetic)
<   publicKey: k8s://openshift-pipelines/public-key
<   sources:
<   - config:
<       exclude:
<       - hermetic_build_task
<       - tasks.required_tasks_found:prefetch-dependencies
<       include:
<       - '@redhat'
<     data:
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
<     - github.com/release-engineering/rhtap-ec-policy//data
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata:
<   name: redhat-trusted-tasks
<   namespace: enterprise-contract-service
< spec:
<   description: Rules used to verify Tekton Task definitions comply to Red Hat's standards.
<   name: Red Hat Trusted Tasks
<   sources:
<   - config:
<       exclude: []
<       include:
<       - kind
<     data:
<     - github.com/release-engineering/rhtap-ec-policy//data
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: EnterpriseContractPolicy
< metadata:
<   name: slsa3
<   namespace: enterprise-contract-service
< spec:
<   description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
<     set of basic checks that are expected to pass for all Konflux builds. Source:
<     https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
<   name: SLSA3
<   publicKey: k8s://openshift-pipelines/public-key
<   sources:
<   - config:
<       exclude: []
<       include:
<       - '@minimal'
<       - '@slsa3'
<     data:
<     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
<     - github.com/release-engineering/rhtap-ec-policy//data
<     name: Default
<     policy:
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
< ---
< apiVersion: console.openshift.io/v1
< kind: ConsoleYAMLSample
< metadata:
<   name: ecp-example
< spec:
<   description: Example of custom Enterprise Contract Policy
<   targetResource:
<     apiVersion: appstudio.redhat.com/v1alpha1
<     kind: EnterpriseContractPolicy
<   title: Example Enterprise Contract Policy
<   yaml: |
<     apiVersion: appstudio.redhat.com/v1alpha1
<     kind: EnterpriseContractPolicy
<     metadata:
<       name: acme-policy
<     spec:
<       description: ACME Enterprise Contract Policy configuration
<       configuration:
<         include:
<           - "@slsa1"
<           - "@slsa2"
<           - "@acme"
<       publicKey: k8s://openshift-pipelines/public-key
<       sources:
<         - name: Default EC Policies
<           data:
<             - git::https://github.com/enterprise-contract/ec-policies//example/data
<           policy:
<             - oci::quay.io/hacbs-contract/ec-release-policy:latest
<           ruleData:
<             allowed_registry_prefixes:
<             - registry.access.redhat.com/
<             - registry.redhat.io/
<             - registry.io/acme/
<         - name: ACME Policies
<           policy:
<             - oci::registry.io/acme/enterprise-rules:latest
./commit-43682e0f/development/components/gitops/development/kustomize.out.yaml
2262a2263
>   annotations: null
2632a2634
>   annotations: null
./commit-43682e0f/development/components/has/development/kustomize.out.yaml
813d812
<   creationTimestamp: null
863d861
<   creationTimestamp: null
./commit-43682e0f/development/components/image-controller/development/kustomize.out.yaml
787c787
<         image: quay.io/konflux-ci/image-controller:49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
---
>         image: quay.io/konflux-ci/image-controller:3c98f2d567f39fc7f0cb21e209969f5966d0028f
./commit-43682e0f/development/components/integration/development/kustomize.out.yaml
14d13
<   creationTimestamp: null
1536d1534
<   creationTimestamp: null 
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
<h3>4: Production changes from 23d1a0ca to 43682e0f on Fri Oct 25 14:32:43 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 49b25d32..e8f698a4 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://console.redhat.com/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
index 841dfe37..4f1b9ce9 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
index 19401f53..ee301532 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index 26ce737c..bd5159b2 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
     custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false" 
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
<h3>4: Staging changes from 23d1a0ca to 43682e0f on Fri Oct 25 14:32:43 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 49b25d32..e8f698a4 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://console.redhat.com/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
index 841dfe37..4f1b9ce9 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
index 19401f53..ee301532 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index 26ce737c..bd5159b2 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
     custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 23d1a0ca to 43682e0f on Fri Oct 25 14:32:43 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-pac.yaml b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
index 49b25d32..e8f698a4 100644
--- a/components/pipeline-service/production/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://console.redhat.com/application-pipeline
     custom-console-url-pr-details: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
index 841dfe37..4f1b9ce9 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
index 19401f53..ee301532 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com
     custom-console-url-pr-details: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false"
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index 26ce737c..bd5159b2 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -7,3 +7,4 @@
     custom-console-url: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline
     custom-console-url-pr-details: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
     custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    remember-ok-to-test: "false" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (490 lines)</summary>  

``` 
./commit-23d1a0ca/development/components/enterprise-contract/kustomize.out.yaml
0a1,488
> apiVersion: apiextensions.k8s.io/v1
> kind: CustomResourceDefinition
> metadata:
>   annotations: {}
>   name: enterprisecontractpolicies.appstudio.redhat.com
> spec:
>   group: appstudio.redhat.com
>   names:
>     categories:
>     - all
>     kind: EnterpriseContractPolicy
>     listKind: EnterpriseContractPolicyList
>     plural: enterprisecontractpolicies
>     shortNames:
>     - ecp
>     singular: enterprisecontractpolicy
>   scope: Namespaced
>   versions:
>   - name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: EnterpriseContractPolicy is the Schema for the enterprisecontractpolicies
>           API
>         properties:
>           apiVersion:
>             description: |-
>               APIVersion defines the versioned schema of this representation of an object.
>               Servers should convert recognized schemas to the latest internal value, and
>               may reject unrecognized values.
>               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
>             type: string
>           kind:
>             description: |-
>               Kind is a string value representing the REST resource this object represents.
>               Servers may infer this from the endpoint the client submits requests to.
>               Cannot be updated.
>               In CamelCase.
>               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: EnterpriseContractPolicySpec is used to configure the Enterprise
>               Contract Policy
>             properties:
>               configuration:
>                 description: Configuration handles policy modification configuration
>                   (exclusions and inclusions)
>                 properties:
>                   collections:
>                     description: |-
>                       Collections set of predefined rules.  DEPRECATED: Collections can be listed in include
>                       with the "@" prefix.
>                     items:
>                       type: string
>                     type: array
>                     x-kubernetes-list-type: set
>                   exclude:
>                     description: |-
>                       Exclude set of policy exclusions that, in case of failure, do not block
>                       the success of the outcome.
>                     items:
>                       type: string
>                     type: array
>                     x-kubernetes-list-type: set
>                   include:
>                     description: |-
>                       Include set of policy inclusions that are added to the policy evaluation.
>                       These override excluded rules.
>                     items:
>                       type: string
>                     type: array
>                     x-kubernetes-list-type: set
>                 type: object
>               description:
>                 description: Description of the policy or its intended use
>                 type: string
>               identity:
>                 description: Identity to be used for keyless verification. This is
>                   an experimental feature.
>                 properties:
>                   issuer:
>                     description: Issuer is the URL of the certificate OIDC issuer
>                       for keyless verification.
>                     type: string
>                   issuerRegExp:
>                     description: |-
>                       IssuerRegExp is a regular expression to match the URL of the certificate OIDC issuer for
>                       keyless verification.
>                     type: string
>                   subject:
>                     description: Subject is the URL of the certificate identity for
>                       keyless verification.
>                     type: string
>                   subjectRegExp:
>                     description: |-
>                       SubjectRegExp is a regular expression to match the URL of the certificate identity for
>                       keyless verification.
>                     type: string
>                 type: object
>               name:
>                 description: Optional name of the policy
>                 type: string
>               publicKey:
>                 description: Public key used to validate the signature of images and
>                   attestations
>                 type: string
>               rekorUrl:
>                 description: URL of the Rekor instance. Empty string disables Rekor
>                   integration
>                 type: string
>               sources:
>                 description: One or more groups of policy rules
>                 items:
>                   description: Source defines policies and data that are evaluated
>                     together
>                   properties:
>                     config:
>                       description: |-
>                         Config specifies which policy rules are included, or excluded, from the
>                         provided policy source urls.
>                       properties:
>                         exclude:
>                           description: |-
>                             Exclude is a set of policy exclusions that, in case of failure, do not block
>                             the success of the outcome.
>                           items:
>                             type: string
>                           type: array
>                           x-kubernetes-list-type: set
>                         include:
>                           description: |-
>                             Include is a set of policy inclusions that are added to the policy evaluation.
>                             These take precedence over policy exclusions.
>                           items:
>                             type: string
>                           type: array
>                           x-kubernetes-list-type: set
>                       type: object
>                     data:
>                       description: List of go-getter style policy data source urls
>                       items:
>                         type: string
>                       type: array
>                     name:
>                       description: Optional name for the source
>                       type: string
>                     policy:
>                       description: List of go-getter style policy source urls
>                       items:
>                         type: string
>                       minItems: 1
>                       type: array
>                     ruleData:
>                       description: Arbitrary rule data that will be visible to policy
>                         rules
>                       type: object
>                       x-kubernetes-preserve-unknown-fields: true
>                     volatileConfig:
>                       description: |-
>                         Specifies volatile configuration that can include or exclude policy rules
>                         based on effective time.
>                       properties:
>                         exclude:
>                           description: |-
>                             Exclude is a set of policy exclusions that, in case of failure, do not block
>                             the success of the outcome.
>                           items:
>                             description: VolatileCriteria includes or excludes a policy
>                               rule with effective dates as an option.
>                             properties:
>                               effectiveOn:
>                                 format: date-time
>                                 type: string
>                               effectiveUntil:
>                                 format: date-time
>                                 type: string
>                               imageRef:
>                                 description: ImageRef is used to specify an image
>                                   by its digest.
>                                 pattern: ^sha256:[a-fA-F0-9]{64}$
>                                 type: string
>                               value:
>                                 type: string
>                             required:
>                             - value
>                             type: object
>                           type: array
>                           x-kubernetes-list-map-keys:
>                           - value
>                           x-kubernetes-list-type: map
>                         include:
>                           description: |-
>                             Include is a set of policy inclusions that are added to the policy evaluation.
>                             These take precedence over policy exclusions.
>                           items:
>                             description: VolatileCriteria includes or excludes a policy
>                               rule with effective dates as an option.
>                             properties:
>                               effectiveOn:
>                                 format: date-time
>                                 type: string
>                               effectiveUntil:
>                                 format: date-time
>                                 type: string
>                               imageRef:
>                                 description: ImageRef is used to specify an image
>                                   by its digest.
>                                 pattern: ^sha256:[a-fA-F0-9]{64}$
>                                 type: string
>                               value:
>                                 type: string
>                             required:
>                             - value
>                             type: object
>                           type: array
>                           x-kubernetes-list-map-keys:
>                           - value
>                           x-kubernetes-list-type: map
>                       type: object
>                   type: object
>                 minItems: 1
>                 type: array
>             type: object
>           status:
>             description: EnterpriseContractPolicyStatus defines the observed state
>               of EnterpriseContractPolicy
>             type: object
>         type: object
>     served: true
>     storage: true
>     subresources:
>       status: {}
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: enterprisecontract-configmap-viewer-role
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - ec-defaults
>   resources:
>   - configmaps
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: enterprisecontractpolicy-editor-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - enterprisecontractpolicies
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - enterprisecontractpolicies/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   labels:
>     rbac.authorization.k8s.io/aggregate-to-view: "true"
>   name: enterprisecontractpolicy-viewer-role
> rules:
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - enterprisecontractpolicies
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - enterprisecontractpolicies/status
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: public-ec-cm
>   namespace: enterprise-contract-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: enterprisecontract-configmap-viewer-role
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: system:authenticated
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: public-ecp
>   namespace: enterprise-contract-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: enterprisecontractpolicy-viewer-role
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: system:authenticated
> ---
> apiVersion: v1
> data:
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
>   verify_ec_task_git_pathInRepo: tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
>   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
>   verify_ec_task_git_url: https://github.com/enterprise-contract/ec-cli.git
> kind: ConfigMap
> metadata:
>   name: ec-defaults
>   namespace: enterprise-contract-service
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
>   name: default
>   namespace: enterprise-contract-service
> spec:
>   description: 'Includes rules for levels 1, 2 & 3 of SLSA v0.1. This is the default
>     config used for new Konflux applications. Source: https://github.com/enterprise-contract/config/blob/main/default/policy.yaml'
>   name: Default
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '@slsa3'
>     data:
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
>   name: redhat
>   namespace: enterprise-contract-service
> spec:
>   description: 'Includes the full set of rules and policies required internally by
>     Red Hat when building Red Hat products. Source: https://github.com/enterprise-contract/config/blob/main/redhat/policy.yaml'
>   name: Red Hat
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '@redhat'
>     data:
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
>   name: redhat-no-hermetic
>   namespace: enterprise-contract-service
> spec:
>   description: 'Includes most of the rules and policies required internally by Red
>     Hat when building Red Hat products. It excludes the requirement of hermetic builds.
>     Source: https://github.com/enterprise-contract/config/blob/main/redhat-no-hermetic/policy.yaml'
>   name: Red Hat (non hermetic)
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude:
>       - hermetic_build_task
>       - tasks.required_tasks_found:prefetch-dependencies
>       include:
>       - '@redhat'
>     data:
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
>   name: redhat-trusted-tasks
>   namespace: enterprise-contract-service
> spec:
>   description: Rules used to verify Tekton Task definitions comply to Red Hat's standards.
>   name: Red Hat Trusted Tasks
>   sources:
>   - config:
>       exclude: []
>       include:
>       - kind
>     data:
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
> ---
> apiVersion: appstudio.redhat.com/v1alpha1
> kind: EnterpriseContractPolicy
> metadata:
>   name: slsa3
>   namespace: enterprise-contract-service
> spec:
>   description: 'Rules specifically related to levels 1, 2 & 3 of SLSA v0.1, plus a
>     set of basic checks that are expected to pass for all Konflux builds. Source:
>     https://github.com/enterprise-contract/config/blob/main/slsa3/policy.yaml'
>   name: SLSA3
>   publicKey: k8s://openshift-pipelines/public-key
>   sources:
>   - config:
>       exclude: []
>       include:
>       - '@minimal'
>       - '@slsa3'
>     data:
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
>     - github.com/release-engineering/rhtap-ec-policy//data
>     name: Default
>     policy:
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
> ---
> apiVersion: console.openshift.io/v1
> kind: ConsoleYAMLSample
> metadata:
>   name: ecp-example
> spec:
>   description: Example of custom Enterprise Contract Policy
>   targetResource:
>     apiVersion: appstudio.redhat.com/v1alpha1
>     kind: EnterpriseContractPolicy
>   title: Example Enterprise Contract Policy
>   yaml: |
>     apiVersion: appstudio.redhat.com/v1alpha1
>     kind: EnterpriseContractPolicy
>     metadata:
>       name: acme-policy
>     spec:
>       description: ACME Enterprise Contract Policy configuration
>       configuration:
>         include:
>           - "@slsa1"
>           - "@slsa2"
>           - "@acme"
>       publicKey: k8s://openshift-pipelines/public-key
>       sources:
>         - name: Default EC Policies
>           data:
>             - git::https://github.com/enterprise-contract/ec-policies//example/data
>           policy:
>             - oci::quay.io/hacbs-contract/ec-release-policy:latest
>           ruleData:
>             allowed_registry_prefixes:
>             - registry.access.redhat.com/
>             - registry.redhat.io/
>             - registry.io/acme/
>         - name: ACME Policies
>           policy:
>             - oci::registry.io/acme/enterprise-rules:latest 
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
