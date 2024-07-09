# kustomize changes tracked by commits 
### This file generated at Tue Jul  9 08:04:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9ee2657e to 6842688d on Tue Jul 9 04:46:20 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 76adcfc7..7c0e5480 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -9,8 +9,10 @@ data:
       "$schema": "https://docs.renovatebot.com/renovate-schema.json",
       "extends": [
         "config:recommended",
-        ":gitSignOff"
+        ":gitSignOff",
+        ":disableDependencyDashboard"
       ],
+      "ignorePresets": [":dependencyDashboard"],
       "onboarding": false,
       "requireConfig": "optional",
       "platformCommit": true, 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-9ee2657e/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
408,409c408
<         ":gitSignOff",
<         ":disableDependencyDashboard"
---
>         ":gitSignOff"
411d409
<       "ignorePresets": [":dependencyDashboard"],
./commit-9ee2657e/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
408,409c408
<         ":gitSignOff",
<         ":disableDependencyDashboard"
---
>         ":gitSignOff"
411d409
<       "ignorePresets": [":dependencyDashboard"], 
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
<h3>1: Staging changes from 9ee2657e to 6842688d on Tue Jul 9 04:46:20 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 76adcfc7..7c0e5480 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -9,8 +9,10 @@ data:
       "$schema": "https://docs.renovatebot.com/renovate-schema.json",
       "extends": [
         "config:recommended",
-        ":gitSignOff"
+        ":gitSignOff",
+        ":disableDependencyDashboard"
       ],
+      "ignorePresets": [":dependencyDashboard"],
       "onboarding": false,
       "requireConfig": "optional",
       "platformCommit": true, 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-9ee2657e/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
408,409c408
<         ":gitSignOff",
<         ":disableDependencyDashboard"
---
>         ":gitSignOff"
411d409
<       "ignorePresets": [":dependencyDashboard"], 
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
<h3>1: Development changes from 9ee2657e to 6842688d on Tue Jul 9 04:46:20 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 76adcfc7..7c0e5480 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -9,8 +9,10 @@ data:
       "$schema": "https://docs.renovatebot.com/renovate-schema.json",
       "extends": [
         "config:recommended",
-        ":gitSignOff"
+        ":gitSignOff",
+        ":disableDependencyDashboard"
       ],
+      "ignorePresets": [":dependencyDashboard"],
       "onboarding": false,
       "requireConfig": "optional",
       "platformCommit": true, 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-9ee2657e/development/components/mintmaker/development/kustomize.out.yaml
408,409c408
<         ":gitSignOff",
<         ":disableDependencyDashboard"
---
>         ":gitSignOff"
411d409
<       "ignorePresets": [":dependencyDashboard"], 
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
<h3>2: Production changes from 120f1dbf to 9ee2657e on Mon Jul 8 19:05:34 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e2a1612b..e3f1c846 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=73612c0b60658392c6786b563a810fa122585fa6
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0b2badbef3eb6a31df27b324a15007949aa78354
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 83e48966..094af4b3 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=73612c0b60658392c6786b563a810fa122585fa6
+  - https://github.com/konflux-ci/release-service/config/default?ref=0b2badbef3eb6a31df27b324a15007949aa78354
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 73612c0b60658392c6786b563a810fa122585fa6
+    newTag: 0b2badbef3eb6a31df27b324a15007949aa78354
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 120f1dbf to 9ee2657e on Mon Jul 8 19:05:34 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e2a1612b..e3f1c846 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=73612c0b60658392c6786b563a810fa122585fa6
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0b2badbef3eb6a31df27b324a15007949aa78354
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 83e48966..094af4b3 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=73612c0b60658392c6786b563a810fa122585fa6
+  - https://github.com/konflux-ci/release-service/config/default?ref=0b2badbef3eb6a31df27b324a15007949aa78354
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 73612c0b60658392c6786b563a810fa122585fa6
+    newTag: 0b2badbef3eb6a31df27b324a15007949aa78354
 
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
<h3>2: Development changes from 120f1dbf to 9ee2657e on Mon Jul 8 19:05:34 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e2a1612b..e3f1c846 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=73612c0b60658392c6786b563a810fa122585fa6
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0b2badbef3eb6a31df27b324a15007949aa78354
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 83e48966..094af4b3 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=73612c0b60658392c6786b563a810fa122585fa6
+  - https://github.com/konflux-ci/release-service/config/default?ref=0b2badbef3eb6a31df27b324a15007949aa78354
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 73612c0b60658392c6786b563a810fa122585fa6
+    newTag: 0b2badbef3eb6a31df27b324a15007949aa78354
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-120f1dbf/development/components/release/development/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:0b2badbef3eb6a31df27b324a15007949aa78354
---
>         image: quay.io/konflux-ci/release-service:73612c0b60658392c6786b563a810fa122585fa6 
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
<h3>3: Production changes from 34a49183 to 120f1dbf on Mon Jul 8 13:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
deleted file mode 100644
index e0595592..00000000
--- a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
deleted file mode 100644
index 975e6d92..00000000
--- a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  }
-] 
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
<h3>3: Staging changes from 34a49183 to 120f1dbf on Mon Jul 8 13:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
deleted file mode 100644
index e0595592..00000000
--- a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
deleted file mode 100644
index 975e6d92..00000000
--- a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  }
-] 
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
<h3>3: Development changes from 34a49183 to 120f1dbf on Mon Jul 8 13:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
deleted file mode 100644
index e0595592..00000000
--- a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
deleted file mode 100644
index 975e6d92..00000000
--- a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  }
-] 
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
<h3>4: Production changes from 6f1348fb to 34a49183 on Mon Jul 8 11:55:58 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index c9c5d281..5d2dc40d 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,9 @@
 approvers:
 - stuartwdouglas
 - arewm
+- ifireball
 
 reviewers:
 - stuartwdouglas
 - arewm
+- ifireball 
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
<h3>4: Staging changes from 6f1348fb to 34a49183 on Mon Jul 8 11:55:58 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index c9c5d281..5d2dc40d 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,9 @@
 approvers:
 - stuartwdouglas
 - arewm
+- ifireball
 
 reviewers:
 - stuartwdouglas
 - arewm
+- ifireball 
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
<h3>4: Development changes from 6f1348fb to 34a49183 on Mon Jul 8 11:55:58 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index c9c5d281..5d2dc40d 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,9 @@
 approvers:
 - stuartwdouglas
 - arewm
+- ifireball
 
 reviewers:
 - stuartwdouglas
 - arewm
+- ifireball 
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
