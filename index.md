# kustomize changes tracked by commits 
### This file generated at Tue Nov 26 20:05:04 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 2734fda4 to 58f59119 on Tue Nov 26 17:09:37 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ae52e085..a2f13975 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 91f96874..760c86f9 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 2734fda4 to 58f59119 on Tue Nov 26 17:09:37 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ae52e085..a2f13975 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 91f96874..760c86f9 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-2734fda4/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
483a484
>         "nix",
695a697,704
>       "nix": {
>         "enabled": true,
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
>         "schedule": [
>           "after 5am on thursday"
>         ]
>       },
898c907
<         image: quay.io/konflux-ci/mintmaker:8162b25f78b3d03c129a6a780b457b1b400775ba
---
>         image: quay.io/konflux-ci/mintmaker:e140ba058b127890681fd73fc8beefda48abcd7f 
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
<h3>1: Development changes from 2734fda4 to 58f59119 on Tue Nov 26 17:09:37 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ae52e085..a2f13975 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 91f96874..760c86f9 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (274 lines)</summary>  

``` 
./commit-2734fda4/development/components/mintmaker/development/kustomize.out.yaml
483a484
>         "nix",
538,540d538
<         ],
<         "schedule": [
<           "after 5am on saturday"
546,549c544
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on monday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
562,565c557
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "before 5am"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
573c565
<           "before 5am"
---
>           "at any time"
579,582c571
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on tuesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
586,589c575
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
593,596c579
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
600,603c583
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
607,610c587
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
614,617c591
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
621,624c595
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
628,631c599
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
635,638c603
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
642,645c607
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
649,652c611
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
656,659c615
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
663,666c619
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
670,673c623
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
677,680c627
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
684,687c631
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
691,694c635,640
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
>       },
>       "nix": {
>         "enabled": true,
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/"
698,701c644
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
706,709c649
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
713,716c653
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
720,723c657
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
727,730c661
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
734,737c665
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
741,744c669
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
748,751c673
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
755,758c677
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
762,765c681
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
769,772c685
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
776,779c689
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
783,786c693
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
790,793c697
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
797,800c701
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
804,807c705
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
811,814c709
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
818d712
<       "updateNotScheduled": false,
897c791
<         image: quay.io/konflux-ci/mintmaker:8162b25f78b3d03c129a6a780b457b1b400775ba
---
>         image: quay.io/konflux-ci/mintmaker:e140ba058b127890681fd73fc8beefda48abcd7f 
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
<h3>2: Production changes from 2ed122f5 to 2734fda4 on Tue Nov 26 15:41:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8dfa6de..eeb3c981 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04b46fa9..8df44745 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 2ed122f5 to 2734fda4 on Tue Nov 26 15:41:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8dfa6de..eeb3c981 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04b46fa9..8df44745 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2ed122f5/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>         image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48
1515c1515
<             image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>             image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48 
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
<h3>2: Development changes from 2ed122f5 to 2734fda4 on Tue Nov 26 15:41:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8dfa6de..eeb3c981 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04b46fa9..8df44745 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2ed122f5/development/components/integration/development/kustomize.out.yaml
1422c1422
<         image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>         image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48
1516c1516
<             image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>             image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48 
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
<h3>3: Production changes from e4734ea6 to 2ed122f5 on Tue Nov 26 14:41:07 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 67754b25..260b506d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=92700c2a7e0729373b78921ccc5d5ed500c77906
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 71d5ade7..ccb0ab66 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=92700c2a7e0729373b78921ccc5d5ed500c77906
+  - https://github.com/konflux-ci/release-service/config/default?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 92700c2a7e0729373b78921ccc5d5ed500c77906
+    newTag: eb5da6151492402ec802ce6fd602b77dd1f4cb03
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from e4734ea6 to 2ed122f5 on Tue Nov 26 14:41:07 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 67754b25..260b506d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=92700c2a7e0729373b78921ccc5d5ed500c77906
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 71d5ade7..ccb0ab66 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=92700c2a7e0729373b78921ccc5d5ed500c77906
+  - https://github.com/konflux-ci/release-service/config/default?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 92700c2a7e0729373b78921ccc5d5ed500c77906
+    newTag: eb5da6151492402ec802ce6fd602b77dd1f4cb03
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from e4734ea6 to 2ed122f5 on Tue Nov 26 14:41:07 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 67754b25..260b506d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=92700c2a7e0729373b78921ccc5d5ed500c77906
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 71d5ade7..ccb0ab66 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=92700c2a7e0729373b78921ccc5d5ed500c77906
+  - https://github.com/konflux-ci/release-service/config/default?ref=eb5da6151492402ec802ce6fd602b77dd1f4cb03
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 92700c2a7e0729373b78921ccc5d5ed500c77906
+    newTag: eb5da6151492402ec802ce6fd602b77dd1f4cb03
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e4734ea6/development/components/release/development/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:eb5da6151492402ec802ce6fd602b77dd1f4cb03
---
>         image: quay.io/konflux-ci/release-service:92700c2a7e0729373b78921ccc5d5ed500c77906 
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
<h3>4: Production changes from c3bb2309 to e4734ea6 on Tue Nov 26 13:59:34 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 83559707..a35a4d02 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=90c588ae837ac73a03c736189373599a68fc87a0
+- https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 90c588ae837ac73a03c736189373599a68fc87a0
+  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index e9ee56f9..21945df7 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=90c588ae837ac73a03c736189373599a68fc87a0
+  - https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 90c588ae837ac73a03c736189373599a68fc87a0
+  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c3bb2309 to e4734ea6 on Tue Nov 26 13:59:34 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 83559707..a35a4d02 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=90c588ae837ac73a03c736189373599a68fc87a0
+- https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 90c588ae837ac73a03c736189373599a68fc87a0
+  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index e9ee56f9..21945df7 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=90c588ae837ac73a03c736189373599a68fc87a0
+  - https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 90c588ae837ac73a03c736189373599a68fc87a0
+  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c3bb2309/staging/components/project-controller/staging/kustomize.out.yaml
734c734
<         image: quay.io/konflux-ci/project-controller:bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
---
>         image: quay.io/konflux-ci/project-controller:90c588ae837ac73a03c736189373599a68fc87a0 
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
<h3>4: Development changes from c3bb2309 to e4734ea6 on Tue Nov 26 13:59:34 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 83559707..a35a4d02 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=90c588ae837ac73a03c736189373599a68fc87a0
+- https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 90c588ae837ac73a03c736189373599a68fc87a0
+  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index e9ee56f9..21945df7 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=90c588ae837ac73a03c736189373599a68fc87a0
+  - https://github.com/konflux-ci/project-controller/config/default?ref=bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 90c588ae837ac73a03c736189373599a68fc87a0
+  newTag: bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-c3bb2309/development/components/project-controller/development/kustomize.out.yaml
734c734
<         image: quay.io/konflux-ci/project-controller:bf9e120a8f42a33ca9bf0f1a38d5f28510c163d8
---
>         image: quay.io/konflux-ci/project-controller:90c588ae837ac73a03c736189373599a68fc87a0 
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
