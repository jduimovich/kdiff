# kustomize changes tracked by commits 
### This file generated at Tue Oct 15 12:07:57 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from bbbc649b to 472e40c5 on Tue Oct 15 11:10:56 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
index d28dca19..9534e81b 100644
--- a/components/cluster-secret-store/production/insights-approle-id-patch.yaml
+++ b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/provider/vault/auth/appRole/roleId
-  value: 573e6024-0c58-7e95-365b-d2ad6127e838
+  value: dbbc1114-ba0e-38c4-fbf7-ce0cad753509
diff --git a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
index d28dca19..9534e81b 100644
--- a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
+++ b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/provider/vault/auth/appRole/roleId
-  value: 573e6024-0c58-7e95-365b-d2ad6127e838
+  value: dbbc1114-ba0e-38c4-fbf7-ce0cad753509 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-bbbc649b/production/components/cluster-secret-store/production/kustomize.out.yaml
99c99
<           roleId: dbbc1114-ba0e-38c4-fbf7-ce0cad753509
---
>           roleId: 573e6024-0c58-7e95-365b-d2ad6127e838 
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
<h3>1: Staging changes from bbbc649b to 472e40c5 on Tue Oct 15 11:10:56 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
index d28dca19..9534e81b 100644
--- a/components/cluster-secret-store/production/insights-approle-id-patch.yaml
+++ b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/provider/vault/auth/appRole/roleId
-  value: 573e6024-0c58-7e95-365b-d2ad6127e838
+  value: dbbc1114-ba0e-38c4-fbf7-ce0cad753509
diff --git a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
index d28dca19..9534e81b 100644
--- a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
+++ b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/provider/vault/auth/appRole/roleId
-  value: 573e6024-0c58-7e95-365b-d2ad6127e838
+  value: dbbc1114-ba0e-38c4-fbf7-ce0cad753509 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-bbbc649b/staging/components/cluster-secret-store/staging/kustomize.out.yaml
100c100
<           roleId: dbbc1114-ba0e-38c4-fbf7-ce0cad753509
---
>           roleId: 573e6024-0c58-7e95-365b-d2ad6127e838 
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
<h3>1: Development changes from bbbc649b to 472e40c5 on Tue Oct 15 11:10:56 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/production/insights-approle-id-patch.yaml b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
index d28dca19..9534e81b 100644
--- a/components/cluster-secret-store/production/insights-approle-id-patch.yaml
+++ b/components/cluster-secret-store/production/insights-approle-id-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/provider/vault/auth/appRole/roleId
-  value: 573e6024-0c58-7e95-365b-d2ad6127e838
+  value: dbbc1114-ba0e-38c4-fbf7-ce0cad753509
diff --git a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
index d28dca19..9534e81b 100644
--- a/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
+++ b/components/cluster-secret-store/staging/insights-approle-id-patch.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/provider/vault/auth/appRole/roleId
-  value: 573e6024-0c58-7e95-365b-d2ad6127e838
+  value: dbbc1114-ba0e-38c4-fbf7-ce0cad753509 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 03ab5887 to bbbc649b on Tue Oct 15 10:26:55 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 80fcb523..799e31de 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=178db12ecfd728b581845147ed673f48b8f1cb89
+- https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 178db12ecfd728b581845147ed673f48b8f1cb89
+  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index cb5af928..927897bc 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=178db12ecfd728b581845147ed673f48b8f1cb89
+  - https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 178db12ecfd728b581845147ed673f48b8f1cb89
+  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 03ab5887 to bbbc649b on Tue Oct 15 10:26:55 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 80fcb523..799e31de 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=178db12ecfd728b581845147ed673f48b8f1cb89
+- https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 178db12ecfd728b581845147ed673f48b8f1cb89
+  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index cb5af928..927897bc 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=178db12ecfd728b581845147ed673f48b8f1cb89
+  - https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 178db12ecfd728b581845147ed673f48b8f1cb89
+  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-03ab5887/staging/components/project-controller/staging/kustomize.out.yaml
727c727
<         image: quay.io/konflux-ci/project-controller:2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
---
>         image: quay.io/konflux-ci/project-controller:178db12ecfd728b581845147ed673f48b8f1cb89 
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
<h3>2: Development changes from 03ab5887 to bbbc649b on Tue Oct 15 10:26:55 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 80fcb523..799e31de 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=178db12ecfd728b581845147ed673f48b8f1cb89
+- https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 178db12ecfd728b581845147ed673f48b8f1cb89
+  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index cb5af928..927897bc 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=178db12ecfd728b581845147ed673f48b8f1cb89
+  - https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 178db12ecfd728b581845147ed673f48b8f1cb89
+  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-03ab5887/development/components/project-controller/development/kustomize.out.yaml
727c727
<         image: quay.io/konflux-ci/project-controller:2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
---
>         image: quay.io/konflux-ci/project-controller:178db12ecfd728b581845147ed673f48b8f1cb89 
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
<h3>3: Production changes from 0a4ce91e to 03ab5887 on Mon Oct 14 19:00:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index d9817b06..5a9a174d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2d08db1d..8528b071 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
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
<h3>3: Staging changes from 0a4ce91e to 03ab5887 on Mon Oct 14 19:00:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index d9817b06..5a9a174d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2d08db1d..8528b071 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
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
<h3>3: Development changes from 0a4ce91e to 03ab5887 on Mon Oct 14 19:00:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index d9817b06..5a9a174d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2d08db1d..8528b071 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0a4ce91e/development/components/release/development/kustomize.out.yaml
1997c1997
<         image: quay.io/konflux-ci/release-service:3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
---
>         image: quay.io/konflux-ci/release-service:36faeb1792ecf283a10e7ea8b7d1208af77b16ec 
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
<h3>4: Production changes from 0f168fa5 to 0a4ce91e on Mon Oct 14 17:54:13 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index b0de9f0c..2dff07c8 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index 660f2d31..5eca5804 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 900c4adf..cbcc121f 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
index 0bfc583c..0b485b0c 100644
--- a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/server/config/crd/
-
+- ../../team
diff --git a/components/workspaces/team/kustomization.yaml b/components/workspaces/team/kustomization.yaml
new file mode 100644
index 00000000..4207014d
--- /dev/null
+++ b/components/workspaces/team/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces-team-role.yaml
+- workspaces-team-rolebinding.yaml
diff --git a/components/workspaces/team/workspaces-team-role.yaml b/components/workspaces/team/workspaces-team-role.yaml
new file mode 100644
index 00000000..0ad6041e
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-role.yaml
@@ -0,0 +1,12 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspaces-service-maintainer
+rules:
+- apiGroups:
+  - workspaces.konflux-ci.dev
+  resources:
+  - '*'
+  verbs:
+  - '*'
diff --git a/components/workspaces/team/workspaces-team-rolebinding.yaml b/components/workspaces/team/workspaces-team-rolebinding.yaml
new file mode 100644
index 00000000..483e666f
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-rolebinding.yaml
@@ -0,0 +1,13 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-service-maintainer
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-core
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspaces-service-maintainer 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (84 lines)</summary>  

``` 
./commit-0f168fa5/production/components/workspaces/production/stone-prd-host1/kustomize.out.yaml
451,462d450
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
663,675d650
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
./commit-0f168fa5/production/components/workspaces/production/stone-prod-p01/kustomize.out.yaml
451,462d450
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
663,675d650
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
./commit-0f168fa5/production/components/workspaces/production/stone-prod-p02/kustomize.out.yaml
451,462d450
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
663,675d650
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
<h3>4: Staging changes from 0f168fa5 to 0a4ce91e on Mon Oct 14 17:54:13 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index b0de9f0c..2dff07c8 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index 660f2d31..5eca5804 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 900c4adf..cbcc121f 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
index 0bfc583c..0b485b0c 100644
--- a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/server/config/crd/
-
+- ../../team
diff --git a/components/workspaces/team/kustomization.yaml b/components/workspaces/team/kustomization.yaml
new file mode 100644
index 00000000..4207014d
--- /dev/null
+++ b/components/workspaces/team/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces-team-role.yaml
+- workspaces-team-rolebinding.yaml
diff --git a/components/workspaces/team/workspaces-team-role.yaml b/components/workspaces/team/workspaces-team-role.yaml
new file mode 100644
index 00000000..0ad6041e
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-role.yaml
@@ -0,0 +1,12 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspaces-service-maintainer
+rules:
+- apiGroups:
+  - workspaces.konflux-ci.dev
+  resources:
+  - '*'
+  verbs:
+  - '*'
diff --git a/components/workspaces/team/workspaces-team-rolebinding.yaml b/components/workspaces/team/workspaces-team-rolebinding.yaml
new file mode 100644
index 00000000..483e666f
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-rolebinding.yaml
@@ -0,0 +1,13 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-service-maintainer
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-core
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspaces-service-maintainer 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (83 lines)</summary>  

``` 
./commit-0f168fa5/staging/components/workspaces/staging/stone-stage-p01/kustomize.out.yaml
451,462d450
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
663,675d650
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
./commit-0f168fa5/staging/components/workspaces/staging/stone-stg-host/kustomize.out.yaml
451,462d450
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
663,675d650
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
./commit-0f168fa5/staging/components/workspaces/staging/stone-stg-rh01/kustomize.out.yaml
147,171d146
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
<h3>4: Development changes from 0f168fa5 to 0a4ce91e on Mon Oct 14 17:54:13 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index b0de9f0c..2dff07c8 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index 660f2d31..5eca5804 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 900c4adf..cbcc121f 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
index 0bfc583c..0b485b0c 100644
--- a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/server/config/crd/
-
+- ../../team
diff --git a/components/workspaces/team/kustomization.yaml b/components/workspaces/team/kustomization.yaml
new file mode 100644
index 00000000..4207014d
--- /dev/null
+++ b/components/workspaces/team/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces-team-role.yaml
+- workspaces-team-rolebinding.yaml
diff --git a/components/workspaces/team/workspaces-team-role.yaml b/components/workspaces/team/workspaces-team-role.yaml
new file mode 100644
index 00000000..0ad6041e
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-role.yaml
@@ -0,0 +1,12 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspaces-service-maintainer
+rules:
+- apiGroups:
+  - workspaces.konflux-ci.dev
+  resources:
+  - '*'
+  verbs:
+  - '*'
diff --git a/components/workspaces/team/workspaces-team-rolebinding.yaml b/components/workspaces/team/workspaces-team-rolebinding.yaml
new file mode 100644
index 00000000..483e666f
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-rolebinding.yaml
@@ -0,0 +1,13 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-service-maintainer
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-core
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspaces-service-maintainer 
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
```
 
</details> 
<br> 


</div>
