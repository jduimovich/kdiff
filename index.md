# kustomize changes tracked by commits 
### This file generated at Wed Nov 20 20:05:55 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 299ff114 to 6fc052da on Wed Nov 20 16:11:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index e0448ea8..30b368fb 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
+  schedule: "0 */4 * * 5-6" # every 4 hours from Friday to Saturday
   jobTemplate:
     spec:
       template: 
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
<h3>1: Staging changes from 299ff114 to 6fc052da on Wed Nov 20 16:11:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index e0448ea8..30b368fb 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
+  schedule: "0 */4 * * 5-6" # every 4 hours from Friday to Saturday
   jobTemplate:
     spec:
       template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-299ff114/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
1023c1023
<   schedule: 0 */4 * * 5-6
---
>   schedule: 0 */4 * * 5-7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 299ff114 to 6fc052da on Wed Nov 20 16:11:01 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index e0448ea8..30b368fb 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
+  schedule: "0 */4 * * 5-6" # every 4 hours from Friday to Saturday
   jobTemplate:
     spec:
       template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-299ff114/development/components/mintmaker/development/kustomize.out.yaml
907c907
<   schedule: 0 */4 * * 5-6
---
>   schedule: 0 */4 * * 5-7 
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
<h3>2: Production changes from 2b753fe6 to 299ff114 on Wed Nov 20 15:29:23 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 1641463b..e0448ea8 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * *" # every 4 hours
+  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
   jobTemplate:
     spec:
       template:
diff --git a/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p01/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p02/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs 
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
<h3>2: Staging changes from 2b753fe6 to 299ff114 on Wed Nov 20 15:29:23 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 1641463b..e0448ea8 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * *" # every 4 hours
+  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
   jobTemplate:
     spec:
       template:
diff --git a/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p01/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p02/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2b753fe6/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
1023c1023
<   schedule: 0 */4 * * 5-7
---
>   schedule: 0 */4 * * * 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 2b753fe6 to 299ff114 on Wed Nov 20 15:29:23 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
index 1641463b..e0448ea8 100644
--- a/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
+++ b/components/mintmaker/base/cronjobs/create-dependency-update-check.yaml
@@ -4,7 +4,7 @@ metadata:
   name: create-dependencyupdatecheck
   namespace: mintmaker
 spec:
-  schedule: "0 */4 * * *" # every 4 hours
+  schedule: "0 */4 * * 5-7" # every 4 hours from Friday to Sunday
   jobTemplate:
     spec:
       template:
diff --git a/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p01/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
new file mode 100644
index 00000000..5b9c2f2e
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/cronjob-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/schedule
+  value: "0 */4 * * *" # every 4 hours
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
index f55bcf8b..21e9a195 100644
--- a/components/mintmaker/production/stone-prod-p02/kustomization.yaml
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -10,6 +10,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: cronjob-patch.yaml
+    target:
+      name: create-dependencyupdatecheck
+      kind: CronJob
 
 components:
   - ../../components/rh-certs 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-2b753fe6/development/components/mintmaker/development/kustomize.out.yaml
907c907
<   schedule: 0 */4 * * 5-7
---
>   schedule: 0 */4 * * * 
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
<h3>3: Production changes from 19330408 to 2b753fe6 on Wed Nov 20 14:43:12 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index d80ffb83..91f96874 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
 
 namespace: mintmaker
  
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
<h3>3: Staging changes from 19330408 to 2b753fe6 on Wed Nov 20 14:43:12 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index d80ffb83..91f96874 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
 
 namespace: mintmaker
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (270 lines)</summary>  

``` 
./commit-19330408/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
539,541d538
<         ],
<         "schedule": [
<           "after 5am on saturday"
547,550c544
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on monday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
563,566c557
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "before 5am"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
574c565
<           "before 5am"
---
>           "at any time"
580,583c571
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on tuesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
587,590c575
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
594,597c579
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
601,604c583
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
608,611c587
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
615,618c591
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
622,625c595
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
629,632c599
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
636,639c603
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
643,646c607
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
650,653c611
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
657,660c615
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
664,667c619
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
671,674c623
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
678,681c627
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
685,688c631
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
692,695c635
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
700,703c640
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
707,710c644
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
715,718c649
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
722,725c653
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
729,732c657
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
736,739c661
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
743,746c665
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
750,753c669
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
757,760c673
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
764,767c677
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
771,774c681
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
778,781c685
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
785,788c689
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
792,795c693
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
799,802c697
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
806,809c701
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
813,816c705
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
820,823c709
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
827d712
<       "updateNotScheduled": false, 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 19330408 to 2b753fe6 on Wed Nov 20 14:43:12 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index d80ffb83..91f96874 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
 
 namespace: mintmaker
  
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
<h3>4: Production changes from 6f70ae93 to 19330408 on Wed Nov 20 11:30:52 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 3b4b4537..62e4c36c 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-6f70ae93/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
./commit-6f70ae93/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82 
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
<h3>4: Staging changes from 6f70ae93 to 19330408 on Wed Nov 20 11:30:52 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 3b4b4537..62e4c36c 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-6f70ae93/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 6f70ae93 to 19330408 on Wed Nov 20 11:30:52 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 3b4b4537..62e4c36c 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-6f70ae93/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:af6a6198a1f9ad40f6c44b649924b46d578fb408
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:1fa9e983e7b53a8fcb7904c4e459aa91a372fe82 
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
