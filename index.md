# kustomize changes tracked by commits 
### This file generated at Sun Jul 21 12:06:28 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 7d5305e3 to 0a355b41 on Sun Jul 21 11:41:34 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 5a62fa39..81869358 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=47821cbcae7e2252e259332378516b308ecf46f0
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=47821cbcae7e2252e259332378516b308ecf46f0
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
+  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
+  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7d5305e3/production/components/multi-platform-controller/production/kustomize.out.yaml
578c578
<         image: quay.io/konflux-ci/multi-platform-controller:918893319c9ac344bfd1d2d8ee451694a4ff2172
---
>         image: quay.io/konflux-ci/multi-platform-controller:47821cbcae7e2252e259332378516b308ecf46f0
620c620
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:918893319c9ac344bfd1d2d8ee451694a4ff2172
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:47821cbcae7e2252e259332378516b308ecf46f0 
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
<h3>1: Staging changes from 7d5305e3 to 0a355b41 on Sun Jul 21 11:41:34 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 5a62fa39..81869358 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=47821cbcae7e2252e259332378516b308ecf46f0
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=47821cbcae7e2252e259332378516b308ecf46f0
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
+  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
+  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7d5305e3/staging/components/multi-platform-controller/staging/kustomize.out.yaml
481c481
<         image: quay.io/konflux-ci/multi-platform-controller:918893319c9ac344bfd1d2d8ee451694a4ff2172
---
>         image: quay.io/konflux-ci/multi-platform-controller:47821cbcae7e2252e259332378516b308ecf46f0
523c523
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:918893319c9ac344bfd1d2d8ee451694a4ff2172
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:47821cbcae7e2252e259332378516b308ecf46f0 
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
<h3>1: Development changes from 7d5305e3 to 0a355b41 on Sun Jul 21 11:41:34 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 5a62fa39..81869358 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -4,16 +4,16 @@ kind: Kustomization
 resources:
 - monitoring.yaml
 - allow-argocd-to-manage.yaml
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=47821cbcae7e2252e259332378516b308ecf46f0
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=47821cbcae7e2252e259332378516b308ecf46f0
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=918893319c9ac344bfd1d2d8ee451694a4ff2172
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
+  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 47821cbcae7e2252e259332378516b308ecf46f0
+  newTag: 918893319c9ac344bfd1d2d8ee451694a4ff2172
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7d5305e3/development/components/multi-platform-controller/development/kustomize.out.yaml
257c257
<         image: quay.io/konflux-ci/multi-platform-controller:918893319c9ac344bfd1d2d8ee451694a4ff2172
---
>         image: quay.io/konflux-ci/multi-platform-controller:47821cbcae7e2252e259332378516b308ecf46f0
299c299
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:918893319c9ac344bfd1d2d8ee451694a4ff2172
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:47821cbcae7e2252e259332378516b308ecf46f0 
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
<h3>2: Production changes from 4e36de3e to 7d5305e3 on Sun Jul 21 10:16:19 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 4c69ceee..57e1bb3f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+- https://github.com/konflux-ci/project-controller/config/default?ref=1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  newTag: 1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 3676ca95..ceb3487d 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  - https://github.com/konflux-ci/project-controller/config/default?ref=1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  newTag: 1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 namespace: project-controller 
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
<h3>2: Staging changes from 4e36de3e to 7d5305e3 on Sun Jul 21 10:16:19 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 4c69ceee..57e1bb3f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+- https://github.com/konflux-ci/project-controller/config/default?ref=1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  newTag: 1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 3676ca95..ceb3487d 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  - https://github.com/konflux-ci/project-controller/config/default?ref=1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  newTag: 1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4e36de3e/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
---
>         image: quay.io/redhat-appstudio/project-controller:7cc81b7150be9d08f87138ce7c84d680d8ae2be5 
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
<h3>2: Development changes from 4e36de3e to 7d5305e3 on Sun Jul 21 10:16:19 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 4c69ceee..57e1bb3f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+- https://github.com/konflux-ci/project-controller/config/default?ref=1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  newTag: 1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 3676ca95..ceb3487d 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  - https://github.com/konflux-ci/project-controller/config/default?ref=1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 7cc81b7150be9d08f87138ce7c84d680d8ae2be5
+  newTag: 1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4e36de3e/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:1f4ef6d7fb1d67f7ae3ebdf4255c7d94dccde548
---
>         image: quay.io/redhat-appstudio/project-controller:7cc81b7150be9d08f87138ce7c84d680d8ae2be5 
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
<h3>3: Production changes from a3dd4420 to 4e36de3e on Fri Jul 19 15:49:52 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index 7833ea07..5b8268d9 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,7 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- rnc
+- mmorhun
 
 reviewers:
-- stuartwdouglas
+- rnc
+- mmorhun
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
index 01ca66dc..42bab96c 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
@@ -7,7 +7,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 
 reviewers:
@@ -16,5 +15,4 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
index 67ccf411..8034d2f2 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
@@ -1,4 +1,5 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- mmorhun
+- rnc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 5d2dc40d..3630946c 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -1,11 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
 
 reviewers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
diff --git a/components/sprayproxy/OWNERS b/components/sprayproxy/OWNERS
index 2b7bda2c..6a32fd82 100644
--- a/components/sprayproxy/OWNERS
+++ b/components/sprayproxy/OWNERS
@@ -3,11 +3,9 @@
 approvers:
   - Roming22
   - adambkaplan
-  - stuartwdouglas
   - gabemontero
 
 reviewers:
-  - stuartwdouglas
   - Roming22
   - adambkaplan
   - ramessesii2 
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
<h3>3: Staging changes from a3dd4420 to 4e36de3e on Fri Jul 19 15:49:52 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index 7833ea07..5b8268d9 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,7 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- rnc
+- mmorhun
 
 reviewers:
-- stuartwdouglas
+- rnc
+- mmorhun
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
index 01ca66dc..42bab96c 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
@@ -7,7 +7,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 
 reviewers:
@@ -16,5 +15,4 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
index 67ccf411..8034d2f2 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
@@ -1,4 +1,5 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- mmorhun
+- rnc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 5d2dc40d..3630946c 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -1,11 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
 
 reviewers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
diff --git a/components/sprayproxy/OWNERS b/components/sprayproxy/OWNERS
index 2b7bda2c..6a32fd82 100644
--- a/components/sprayproxy/OWNERS
+++ b/components/sprayproxy/OWNERS
@@ -3,11 +3,9 @@
 approvers:
   - Roming22
   - adambkaplan
-  - stuartwdouglas
   - gabemontero
 
 reviewers:
-  - stuartwdouglas
   - Roming22
   - adambkaplan
   - ramessesii2 
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
<h3>3: Development changes from a3dd4420 to 4e36de3e on Fri Jul 19 15:49:52 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index 7833ea07..5b8268d9 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,7 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- rnc
+- mmorhun
 
 reviewers:
-- stuartwdouglas
+- rnc
+- mmorhun
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index 1aee8024..a1292dcf 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -6,7 +6,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
 
@@ -15,6 +14,5 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 - chmeliik
diff --git a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
index 01ca66dc..42bab96c 100644
--- a/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/image-controller/OWNERS
@@ -7,7 +7,6 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
 
 reviewers:
@@ -16,5 +15,4 @@ reviewers:
 - tkdchen
 - rcerven
 - mkosiarc
-- stuartwdouglas
 - tisutisu
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
index 67ccf411..8034d2f2 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/OWNERS
@@ -1,4 +1,5 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
+- mmorhun
+- rnc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 5d2dc40d..3630946c 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -1,11 +1,9 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
 
 reviewers:
-- stuartwdouglas
-- arewm
 - ifireball
+- arewm
diff --git a/components/sprayproxy/OWNERS b/components/sprayproxy/OWNERS
index 2b7bda2c..6a32fd82 100644
--- a/components/sprayproxy/OWNERS
+++ b/components/sprayproxy/OWNERS
@@ -3,11 +3,9 @@
 approvers:
   - Roming22
   - adambkaplan
-  - stuartwdouglas
   - gabemontero
 
 reviewers:
-  - stuartwdouglas
   - Roming22
   - adambkaplan
   - ramessesii2 
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
<h3>4: Production changes from c9b49f47 to a3dd4420 on Fri Jul 19 15:19:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 448d4d44..3d110bea 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
   - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+    newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 4b4eed3c..c2af070d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+- https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
 - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 namespace: mintmaker
@@ -11,7 +11,7 @@ namespace: mintmaker
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c9b49f47 to a3dd4420 on Fri Jul 19 15:19:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 448d4d44..3d110bea 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
   - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+    newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 4b4eed3c..c2af070d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+- https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
 - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 namespace: mintmaker
@@ -11,7 +11,7 @@ namespace: mintmaker
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c9b49f47/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
535c535
<         image: quay.io/konflux-ci/mintmaker:71c868790ff585b0193278d20a76e6f46d02e84d
---
>         image: quay.io/konflux-ci/mintmaker:f6cd30afef27f7d60690690ab81a8ae397d79ce0 
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
<h3>4: Development changes from c9b49f47 to a3dd4420 on Fri Jul 19 15:19:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 448d4d44..3d110bea 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
   - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+    newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 4b4eed3c..c2af070d 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
+- https://github.com/konflux-ci/mintmaker/config/default?ref=71c868790ff585b0193278d20a76e6f46d02e84d
 - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f6cd30afef27f7d60690690ab81a8ae397d79ce0
 
 namespace: mintmaker
@@ -11,7 +11,7 @@ namespace: mintmaker
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: f6cd30afef27f7d60690690ab81a8ae397d79ce0
+  newTag: 71c868790ff585b0193278d20a76e6f46d02e84d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c9b49f47/development/components/mintmaker/development/kustomize.out.yaml
534c534
<         image: quay.io/konflux-ci/mintmaker:71c868790ff585b0193278d20a76e6f46d02e84d
---
>         image: quay.io/konflux-ci/mintmaker:f6cd30afef27f7d60690690ab81a8ae397d79ce0 
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
