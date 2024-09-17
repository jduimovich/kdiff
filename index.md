# kustomize changes tracked by commits 
### This file generated at Tue Sep 17 12:10:12 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2a4ab85e to 22dbbf8b on Tue Sep 17 10:12:34 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 97d0b5bc..c6a50f3a 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8dde1c20a51bca9b74dabb42d7defc703b4432bd
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8dde1c20a51bca9b74dabb42d7defc703b4432bd
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8dde1c20a51bca9b74dabb42d7defc703b4432bd
+    newTag: 3a431ecc9b8b30b9b277e45849f965981d8ecba2
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (118 lines)</summary>  

``` 
./commit-2a4ab85e/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
422d421
<       "inheritConfig": true,
428a428
>         "git-submodules",
441,450c441
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
557,590d547
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
592d548
<       "allowedPostUpgradeCommands": ["^rpm-lockfile-prototype rpms.in.yaml$"],
672c628
<         image: quay.io/konflux-ci/mintmaker:3a431ecc9b8b30b9b277e45849f965981d8ecba2
---
>         image: quay.io/konflux-ci/mintmaker:8dde1c20a51bca9b74dabb42d7defc703b4432bd
./commit-2a4ab85e/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
422d421
<       "inheritConfig": true,
428a428
>         "git-submodules",
441,450c441
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
557,590d547
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
592d548
<       "allowedPostUpgradeCommands": ["^rpm-lockfile-prototype rpms.in.yaml$"],
672c628
<         image: quay.io/konflux-ci/mintmaker:3a431ecc9b8b30b9b277e45849f965981d8ecba2
---
>         image: quay.io/konflux-ci/mintmaker:8dde1c20a51bca9b74dabb42d7defc703b4432bd 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 2a4ab85e to 22dbbf8b on Tue Sep 17 10:12:34 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 97d0b5bc..c6a50f3a 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8dde1c20a51bca9b74dabb42d7defc703b4432bd
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8dde1c20a51bca9b74dabb42d7defc703b4432bd
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8dde1c20a51bca9b74dabb42d7defc703b4432bd
+    newTag: 3a431ecc9b8b30b9b277e45849f965981d8ecba2
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 2a4ab85e to 22dbbf8b on Tue Sep 17 10:12:34 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 97d0b5bc..c6a50f3a 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=8dde1c20a51bca9b74dabb42d7defc703b4432bd
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8dde1c20a51bca9b74dabb42d7defc703b4432bd
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3a431ecc9b8b30b9b277e45849f965981d8ecba2
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 8dde1c20a51bca9b74dabb42d7defc703b4432bd
+    newTag: 3a431ecc9b8b30b9b277e45849f965981d8ecba2
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from a1e81c73 to 2a4ab85e on Tue Sep 17 09:56:02 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 3cddae20..28360442 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-a1e81c73/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>         image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>             image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52
./commit-a1e81c73/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>         image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>             image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from a1e81c73 to 2a4ab85e on Tue Sep 17 09:56:02 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 3cddae20..28360442 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
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
<h3>2: Development changes from a1e81c73 to 2a4ab85e on Tue Sep 17 09:56:02 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 3cddae20..28360442 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
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
<h3>3: Production changes from 9b0732d2 to a1e81c73 on Tue Sep 17 09:17:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88ecb12a..6dc6cf7e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-9b0732d2/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
./commit-9b0732d2/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 9b0732d2 to a1e81c73 on Tue Sep 17 09:17:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88ecb12a..6dc6cf7e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-9b0732d2/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503 
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
<h3>3: Development changes from 9b0732d2 to a1e81c73 on Tue Sep 17 09:17:33 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88ecb12a..6dc6cf7e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-9b0732d2/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7e708fe9de0127712d964f723c88419f1c69c503
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7e708fe9de0127712d964f723c88419f1c69c503
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7e708fe9de0127712d964f723c88419f1c69c503 
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
<h3>4: Production changes from 380388c4 to 9b0732d2 on Tue Sep 17 07:57:47 2024 </h3>  
 
<details> 
<summary>Git Diff (168 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4fbfbfaf..3bc233ee 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,17 +465,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
     
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f3ebd98c..7bfc0920 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,17 +469,17 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e6247249..a05a0daa 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -343,17 +343,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1223977f..e360956c 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,17 +315,17 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-380388c4/production/components/multi-platform-controller/production/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gdnxlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gadxlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
311,321c311,321
<   dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
<   dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-gdnxlarge-amd64.max-instances: "10"
<   dynamic.linux-gdnxlarge-amd64.region: us-east-1
<   dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-gdnxlarge-amd64.type: aws
<   dynamic.linux-gdnxlarge.user-data: |-
---
>   dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
>   dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-gadxlarge-amd64.max-instances: "10"
>   dynamic.linux-gadxlarge-amd64.region: us-east-1
>   dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-gadxlarge-amd64.type: aws
>   dynamic.linux-gadxlarge.user-data: |- 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 380388c4 to 9b0732d2 on Tue Sep 17 07:57:47 2024 </h3>  
 
<details> 
<summary>Git Diff (168 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4fbfbfaf..3bc233ee 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,17 +465,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
     
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f3ebd98c..7bfc0920 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,17 +469,17 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e6247249..a05a0daa 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -343,17 +343,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1223977f..e360956c 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,17 +315,17 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-380388c4/staging/components/multi-platform-controller/staging/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux-mlarge/amd64,linux-mlarge/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gdnxlarge/amd64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64,linux/s390x
---
>   dynamic-platforms: linux/arm64,linux-mlarge/amd64,linux-mlarge/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gadxlarge/amd64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64,linux/s390x
289,299c289,299
<   dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
<   dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-gdnxlarge-amd64.max-instances: "10"
<   dynamic.linux-gdnxlarge-amd64.region: us-east-1
<   dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-gdnxlarge-amd64.type: aws
<   dynamic.linux-gdnxlarge.user-data: |-
---
>   dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
>   dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
>   dynamic.linux-gadxlarge-amd64.max-instances: "10"
>   dynamic.linux-gadxlarge-amd64.region: us-east-1
>   dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
>   dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
>   dynamic.linux-gadxlarge-amd64.type: aws
>   dynamic.linux-gadxlarge.user-data: |- 
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
<h3>4: Development changes from 380388c4 to 9b0732d2 on Tue Sep 17 07:57:47 2024 </h3>  
 
<details> 
<summary>Git Diff (168 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4fbfbfaf..3bc233ee 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,17 +465,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
     
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f3ebd98c..7bfc0920 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,17 +469,17 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e6247249..a05a0daa 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -343,17 +343,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1223977f..e360956c 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,17 +315,17 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
  
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
