# kustomize changes tracked by commits 
### This file generated at Tue Sep 24 12:06:10 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 09477582 to bb67c480 on Tue Sep 24 10:48:49 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 799a47f7..ff0fec68 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+    newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index cfdd7414..e35d4428 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
 
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
<h3>1: Staging changes from 09477582 to bb67c480 on Tue Sep 24 10:48:49 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 799a47f7..ff0fec68 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+    newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index cfdd7414..e35d4428 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (49 lines)</summary>  

``` 
./commit-09477582/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
53,90c53,56
<               workspaces:
<                 description: Specifies the list of workspaces for which to run MintMaker.
<                   If omitted, MintMaker will run for all workspaces.
<                 items:
<                   properties:
<                     applications:
<                       description: Specifies the list of applications in a workspace
<                         for which to run MintMaker. If omitted, MintMaker will run
<                         for all workspace's applications.
<                       items:
<                         properties:
<                           application:
<                             description: Specifies the name of the application for
<                               which to run Mintmaker. Required.
<                             pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                             type: string
<                           components:
<                             description: Specifies the list of components of an application
<                               for which to run MintMaker. If omitted, MintMaker will
<                               run for all application's components.
<                             items:
<                               maxLength: 63
<                               pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                               type: string
<                             type: array
<                         required:
<                         - application
<                         type: object
<                       type: array
<                     workspace:
<                       description: Specifies the name of the workspace for which to
<                         run Mintmaker. Required.
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   required:
<                   - workspace
<                   type: object
<                 type: array
---
>               foo:
>                 description: Foo is an example field of DependencyUpdateCheck. Edit
>                   dependencyupdatecheck_types.go to remove/update
>                 type: string
706c672
<         image: quay.io/konflux-ci/mintmaker:8bb50348505c37d87ef4e95f85d7662c348addd9
---
>         image: quay.io/konflux-ci/mintmaker:1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9 
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
<h3>1: Development changes from 09477582 to bb67c480 on Tue Sep 24 10:48:49 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 799a47f7..ff0fec68 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+    newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index cfdd7414..e35d4428 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8bb50348505c37d87ef4e95f85d7662c348addd9
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9
+  newTag: 8bb50348505c37d87ef4e95f85d7662c348addd9
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (49 lines)</summary>  

``` 
./commit-09477582/development/components/mintmaker/development/kustomize.out.yaml
53,90c53,56
<               workspaces:
<                 description: Specifies the list of workspaces for which to run MintMaker.
<                   If omitted, MintMaker will run for all workspaces.
<                 items:
<                   properties:
<                     applications:
<                       description: Specifies the list of applications in a workspace
<                         for which to run MintMaker. If omitted, MintMaker will run
<                         for all workspace's applications.
<                       items:
<                         properties:
<                           application:
<                             description: Specifies the name of the application for
<                               which to run Mintmaker. Required.
<                             pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                             type: string
<                           components:
<                             description: Specifies the list of components of an application
<                               for which to run MintMaker. If omitted, MintMaker will
<                               run for all application's components.
<                             items:
<                               maxLength: 63
<                               pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                               type: string
<                             type: array
<                         required:
<                         - application
<                         type: object
<                       type: array
<                     workspace:
<                       description: Specifies the name of the workspace for which to
<                         run Mintmaker. Required.
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   required:
<                   - workspace
<                   type: object
<                 type: array
---
>               foo:
>                 description: Foo is an example field of DependencyUpdateCheck. Edit
>                   dependencyupdatecheck_types.go to remove/update
>                 type: string
705c671
<         image: quay.io/konflux-ci/mintmaker:8bb50348505c37d87ef4e95f85d7662c348addd9
---
>         image: quay.io/konflux-ci/mintmaker:1d8bfa6981ee3ab0f11f4f433ea7a5bc63c958f9 
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
<h3>2: Production changes from 9f7a52c6 to 09477582 on Tue Sep 24 09:49:00 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 433d7c7b..ca67a578 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -306,8 +306,8 @@ data:
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
-    - ip add route 10.0.0.0/8 via 10.130.72.1
-    - ip add route 0.0.0.0/0 via 10.130.73.115
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
 
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le" 
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
<h3>2: Staging changes from 9f7a52c6 to 09477582 on Tue Sep 24 09:49:00 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 433d7c7b..ca67a578 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -306,8 +306,8 @@ data:
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
-    - ip add route 10.0.0.0/8 via 10.130.72.1
-    - ip add route 0.0.0.0/0 via 10.130.73.115
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
 
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le" 
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
<h3>2: Development changes from 9f7a52c6 to 09477582 on Tue Sep 24 09:49:00 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 433d7c7b..ca67a578 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -306,8 +306,8 @@ data:
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
-    - ip add route 10.0.0.0/8 via 10.130.72.1
-    - ip add route 0.0.0.0/0 via 10.130.73.115
+    - ip route add 10.0.0.0/8 via 10.130.72.1
+    - ip route add 0.0.0.0/0 via 10.130.73.115
 
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le" 
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
<h3>3: Production changes from cae02ccf to 9f7a52c6 on Mon Sep 23 21:30:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 194e3c8d..5e39a97a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e5b4df34..b37e14f2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+  - https://github.com/konflux-ci/release-service/config/default?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+    newTag: a9cb25c4896f1671c474766772f6249fdd8ec49f
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from cae02ccf to 9f7a52c6 on Mon Sep 23 21:30:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 194e3c8d..5e39a97a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e5b4df34..b37e14f2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+  - https://github.com/konflux-ci/release-service/config/default?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+    newTag: a9cb25c4896f1671c474766772f6249fdd8ec49f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from cae02ccf to 9f7a52c6 on Mon Sep 23 21:30:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 194e3c8d..5e39a97a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index e5b4df34..b37e14f2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+  - https://github.com/konflux-ci/release-service/config/default?ref=a9cb25c4896f1671c474766772f6249fdd8ec49f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1
+    newTag: a9cb25c4896f1671c474766772f6249fdd8ec49f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-cae02ccf/development/components/release/development/kustomize.out.yaml
1935c1935
<         image: quay.io/konflux-ci/release-service:a9cb25c4896f1671c474766772f6249fdd8ec49f
---
>         image: quay.io/konflux-ci/release-service:fc6a118e31cd80e5a094af3a19bbef4b5bc6c6b1 
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
<h3>4: Production changes from bded3135 to cae02ccf on Mon Sep 23 18:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index fc809ded..6d4f8560 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.4
+        targetRevision: 0.1.0
         helm:
           parameters:
             - name: region
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 5b4f4465..10ef4c19 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -25,7 +25,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.5
+  channel: stable-2.6
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 5bda7a54..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -10,22 +10,6 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 793d5207..1f1db0cb 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,4 +9,10 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImageTag
-    value: "4.14"
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::590184136207:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
index b0ec83fa..fb6de595 100644
--- a/components/cluster-as-a-service/production/external-secrets.yaml
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: prod.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 7999773d..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,19 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-bded3135/production/components/cluster-as-a-service/production/kustomize.out.yaml
234,236c234
<             value: "4.16"
<           - name: hypershiftRoleArn
<             value: arn:aws:iam::590184136207:role/eaas-hypershift-cli-role
---
>             value: "4.14"
238c236
<         targetRevision: 0.1.0
---
>         targetRevision: 0.0.4
315,319c313,316
<         aws-credentials: |
<           [default]
<           aws_access_key_id={{ .aws_access_key_id }}
<           aws_secret_access_key={{ .aws_secret_access_key }}
<         pull-secret: '{{ .ocp_pull_secret }}'
---
>         aws_access_key_id: '{{ .aws_access_key_id }}'
>         aws_secret_access_key: '{{ .aws_secret_access_key }}'
>         baseDomain: prod.konfluxeaas.com
>         pullSecret: '{{ .ocp_pull_secret }}'
375c372
<   channel: stable-2.6
---
>   channel: stable-2.5 
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
<h3>4: Staging changes from bded3135 to cae02ccf on Mon Sep 23 18:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index fc809ded..6d4f8560 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.4
+        targetRevision: 0.1.0
         helm:
           parameters:
             - name: region
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 5b4f4465..10ef4c19 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -25,7 +25,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.5
+  channel: stable-2.6
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 5bda7a54..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -10,22 +10,6 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 793d5207..1f1db0cb 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,4 +9,10 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImageTag
-    value: "4.14"
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::590184136207:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
index b0ec83fa..fb6de595 100644
--- a/components/cluster-as-a-service/production/external-secrets.yaml
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: prod.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 7999773d..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,19 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
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
<h3>4: Development changes from bded3135 to cae02ccf on Mon Sep 23 18:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index fc809ded..6d4f8560 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.4
+        targetRevision: 0.1.0
         helm:
           parameters:
             - name: region
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 5b4f4465..10ef4c19 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -25,7 +25,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.5
+  channel: stable-2.6
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 5bda7a54..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -10,22 +10,6 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 793d5207..1f1db0cb 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,4 +9,10 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImageTag
-    value: "4.14"
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::590184136207:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/production/external-secrets.yaml b/components/cluster-as-a-service/production/external-secrets.yaml
index b0ec83fa..fb6de595 100644
--- a/components/cluster-as-a-service/production/external-secrets.yaml
+++ b/components/cluster-as-a-service/production/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: prod.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 7999773d..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,19 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/template/spec/source/targetRevision
-        value: 0.1.0
-    target:
-      group: argoproj.io
-      kind: ApplicationSet
-      name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.6
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
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
