# kustomize changes tracked by commits 
### This file generated at Fri Sep  6 08:05:19 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b5b8d3cc to aa72ceaa on Fri Sep 6 04:17:09 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 3fcf981d..55ec2c70 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5f364a59..43d1c5f0 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
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
<h3>1: Staging changes from b5b8d3cc to aa72ceaa on Fri Sep 6 04:17:09 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 3fcf981d..55ec2c70 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5f364a59..43d1c5f0 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-b5b8d3cc/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
427a428
>         "git-submodules",
440,449c441
<         "kustomize",
<         "asdf",
<         "fvm",
<         "git-submodules",
<         "hermit",
<         "homebrew",
<         "nix",
<         "osgi",
<         "pre-commit",
<         "vendir"
---
>         "kustomize"
556,589d547
<       "asdf": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "fvm": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "hermit": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "homebrew": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "nix": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "osgi": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pre-commit": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "vendir": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
670c628
<         image: quay.io/konflux-ci/mintmaker:3e4242a75388470dc59de85f643ca322598e5a7e
---
>         image: quay.io/konflux-ci/mintmaker:3f8721be249d10e09cefea11a945dd5fe6714615 
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
<h3>1: Development changes from b5b8d3cc to aa72ceaa on Fri Sep 6 04:17:09 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 3fcf981d..55ec2c70 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5f364a59..43d1c5f0 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-b5b8d3cc/development/components/mintmaker/development/kustomize.out.yaml
427a428
>         "git-submodules",
440,449c441
<         "kustomize",
<         "asdf",
<         "fvm",
<         "git-submodules",
<         "hermit",
<         "homebrew",
<         "nix",
<         "osgi",
<         "pre-commit",
<         "vendir"
---
>         "kustomize"
556,589d547
<       "asdf": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "fvm": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "hermit": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "homebrew": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "nix": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "osgi": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pre-commit": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "vendir": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
669c627
<         image: quay.io/konflux-ci/mintmaker:3e4242a75388470dc59de85f643ca322598e5a7e
---
>         image: quay.io/konflux-ci/mintmaker:3f8721be249d10e09cefea11a945dd5fe6714615 
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
<h3>2: Production changes from ef952976 to b5b8d3cc on Thu Sep 5 18:53:25 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 57efbf4e..55436e03 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -5,6 +5,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-contributors'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-core'
@@ -29,6 +32,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-mintmaker-team'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-o11y'
@@ -44,6 +50,3 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-mintmaker-team' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (74 lines)</summary>  

``` 
./commit-ef952976/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
566,568d565
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
593,595d589
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
608a603,605
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team
624,626d620
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
651,653d644
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
666a658,660
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team
682,684d675
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
709,711d699
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
724a713,715
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team
./commit-ef952976/production/components/authentication/production/stone-prod-p02/kustomize.out.yaml
566,568d565
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
593,595d589
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
608a603,605
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team
624,626d620
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
651,653d644
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
666a658,660
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team
682,684d675
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
709,711d699
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
724a713,715
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team 
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
<h3>2: Staging changes from ef952976 to b5b8d3cc on Thu Sep 5 18:53:25 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 57efbf4e..55436e03 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -5,6 +5,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-contributors'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-core'
@@ -29,6 +32,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-mintmaker-team'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-o11y'
@@ -44,6 +50,3 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-mintmaker-team' 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (37 lines)</summary>  

``` 
./commit-ef952976/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
566,568d565
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
593,595d589
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
608a603,605
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team
624,626d620
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
651,653d644
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
666a658,660
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team
682,684d675
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
709,711d699
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
724a713,715
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-mintmaker-team 
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
<h3>2: Development changes from ef952976 to b5b8d3cc on Thu Sep 5 18:53:25 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 57efbf4e..55436e03 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -5,6 +5,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-contributors'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-core'
@@ -29,6 +32,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-mintmaker-team'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-o11y'
@@ -44,6 +50,3 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-release-team'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-mintmaker-team' 
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
<h3>3: Production changes from 3982ea60 to ef952976 on Thu Sep 5 11:25:00 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 324898fa..91e3773d 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1485,7 +1485,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -1696,7 +1696,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index f28c27fb..e165e63e 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1301,7 +1301,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -1520,7 +1520,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1838de6a..44e90b59 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 6bcea4aa..7d3492fd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2db58599..365345f2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
<h3>3: Staging changes from 3982ea60 to ef952976 on Thu Sep 5 11:25:00 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 324898fa..91e3773d 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1485,7 +1485,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -1696,7 +1696,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index f28c27fb..e165e63e 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1301,7 +1301,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -1520,7 +1520,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1838de6a..44e90b59 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 6bcea4aa..7d3492fd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2db58599..365345f2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-3982ea60/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1808c1808
<     artifacts.pipelinerun.enable-deep-inspection: "true"
---
>     artifacts.pipelinerun.enable-deep-inspection: true
2027c2027
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
./commit-3982ea60/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1808c1808
<     artifacts.pipelinerun.enable-deep-inspection: "true"
---
>     artifacts.pipelinerun.enable-deep-inspection: true
2027c2027
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
./commit-3982ea60/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1808c1808
<     artifacts.pipelinerun.enable-deep-inspection: "true"
---
>     artifacts.pipelinerun.enable-deep-inspection: true
2027c2027
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 3982ea60 to ef952976 on Thu Sep 5 11:25:00 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 324898fa..91e3773d 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1485,7 +1485,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -1696,7 +1696,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index f28c27fb..e165e63e 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1301,7 +1301,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -1520,7 +1520,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1838de6a..44e90b59 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 6bcea4aa..7d3492fd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2db58599..365345f2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1805,7 +1805,7 @@ metadata:
 spec:
   chain:
     artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: true
+    artifacts.pipelinerun.enable-deep-inspection: "true"
     artifacts.pipelinerun.format: in-toto
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
@@ -2024,7 +2024,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:99d1e1ba1c24d950db7147e26041193304247ed92e88788023b58eb787282a9a
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-3982ea60/development/components/pipeline-service/development/kustomize.out.yaml
1876c1876
<     artifacts.pipelinerun.enable-deep-inspection: "true"
---
>     artifacts.pipelinerun.enable-deep-inspection: true
2087c2087
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:b579e8353fe419782c6aef3dcac3908b492644a5e2fea8f2f982eaa3726e54e4
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ce016d3a to 3982ea60 on Thu Sep 5 10:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index bfc0dedb..1b70b7f5 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -303,7 +303,32 @@ data:
   dynamic.linux-ppc64le.max-instances: "2"
   dynamic.linux-ppc64le.max-age: "120"
   dynamic.linux-ppc64le.concurrency: "2"
+  dynamic.linux-ppc64le.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
 
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    ip add route 10.0.0.0/8 via 10.130.72.1
+    ip add route 0.0.0.0/0 via 192.168.196.185
+
+    --//--
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le"
   # host.ppc1.user: "root" 
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
<h3>4: Staging changes from ce016d3a to 3982ea60 on Thu Sep 5 10:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index bfc0dedb..1b70b7f5 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -303,7 +303,32 @@ data:
   dynamic.linux-ppc64le.max-instances: "2"
   dynamic.linux-ppc64le.max-age: "120"
   dynamic.linux-ppc64le.concurrency: "2"
+  dynamic.linux-ppc64le.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
 
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    ip add route 10.0.0.0/8 via 10.130.72.1
+    ip add route 0.0.0.0/0 via 192.168.196.185
+
+    --//--
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le"
   # host.ppc1.user: "root" 
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
<h3>4: Development changes from ce016d3a to 3982ea60 on Thu Sep 5 10:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index bfc0dedb..1b70b7f5 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -303,7 +303,32 @@ data:
   dynamic.linux-ppc64le.max-instances: "2"
   dynamic.linux-ppc64le.max-age: "120"
   dynamic.linux-ppc64le.concurrency: "2"
+  dynamic.linux-ppc64le.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
 
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    ip add route 10.0.0.0/8 via 10.130.72.1
+    ip add route 0.0.0.0/0 via 192.168.196.185
+
+    --//--
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le"
   # host.ppc1.user: "root" 
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
