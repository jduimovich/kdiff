# kustomize changes tracked by commits 
### This file generated at Fri Apr 19 16:04:17 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e8a9174a to eabb93e3 on Fri Apr 19 15:25:39 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index d9ef0e81..4c6f9fa9 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -41,7 +41,7 @@ spec:
                        #
                        # expirationTime should be smaller than today in seconds so it can be deleted
                        if(now > expirationTime) {
-                         args="%s:%s"
+                         args="%s:%s\n"
                          printf(args, $1, $2)
                        } 
                     }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e8a9174a/production/components/release/production/kustomize.out.yaml
1851c1851
<               > expirationTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
---
>               > expirationTime) {\n       args=\"%s:%s\"\n       printf(args, $1, 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from e8a9174a to eabb93e3 on Fri Apr 19 15:25:39 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index d9ef0e81..4c6f9fa9 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -41,7 +41,7 @@ spec:
                        #
                        # expirationTime should be smaller than today in seconds so it can be deleted
                        if(now > expirationTime) {
-                         args="%s:%s"
+                         args="%s:%s\n"
                          printf(args, $1, $2)
                        } 
                     }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e8a9174a/staging/components/release/staging/kustomize.out.yaml
1851c1851
<               > expirationTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
---
>               > expirationTime) {\n       args=\"%s:%s\"\n       printf(args, $1, 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from e8a9174a to eabb93e3 on Fri Apr 19 15:25:39 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index d9ef0e81..4c6f9fa9 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -41,7 +41,7 @@ spec:
                        #
                        # expirationTime should be smaller than today in seconds so it can be deleted
                        if(now > expirationTime) {
-                         args="%s:%s"
+                         args="%s:%s\n"
                          printf(args, $1, $2)
                        } 
                     }' $KUBECTL_OUTPUT > $EXPIRED_RELEASES_FILE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e8a9174a/development/components/release/development/kustomize.out.yaml
1851c1851
<               > expirationTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
---
>               > expirationTime) {\n       args=\"%s:%s\"\n       printf(args, $1, 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from a7e7c075 to e8a9174a on Fri Apr 19 12:02:07 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5f158d66..ce948b55 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 31d1e577..2d38bf35 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from a7e7c075 to e8a9174a on Fri Apr 19 12:02:07 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5f158d66..ce948b55 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 31d1e577..2d38bf35 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a7e7c075/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
---
>         image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
1298c1298
<             image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
---
>             image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a7e7c075 to e8a9174a on Fri Apr 19 12:02:07 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 5f158d66..ce948b55 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 31d1e577..2d38bf35 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
+  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a7e7c075/development/components/integration/development/kustomize.out.yaml
1205c1205
<         image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
---
>         image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
1299c1299
<             image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
---
>             image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 4c946d9a to a7e7c075 on Fri Apr 19 01:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 9f163af7..ff981726 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-4c946d9a/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
467a468
>       set -o pipefail
473c474
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
---
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME
607a609,610
>       set -eu
>       set -o pipefail
613,628d615
< 
<       #now clean up any dangling users, if their cleanup failed for whatever reason
< 
<       cat >script.sh <<EOF
<       threshold=$(date -d "1 day ago" +%s)
<       cd /home
<       for file in *; do
<         # Check if the file is a regular file and older than the threshold
<         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
<         # Delete the user
<         sudo userdel -f -r -Z $file
<         echo "Deleted: $file"
<         fi
<       done
<       EOF
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 4c946d9a to a7e7c075 on Fri Apr 19 01:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 9f163af7..ff981726 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-4c946d9a/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
411a412
>       set -o pipefail
417c418
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
---
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME
551a553,554
>       set -eu
>       set -o pipefail
557,572d559
< 
<       #now clean up any dangling users, if their cleanup failed for whatever reason
< 
<       cat >script.sh <<EOF
<       threshold=$(date -d "1 day ago" +%s)
<       cd /home
<       for file in *; do
<         # Check if the file is a regular file and older than the threshold
<         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
<         # Delete the user
<         sudo userdel -f -r -Z $file
<         echo "Deleted: $file"
<         fi
<       done
<       EOF
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 4c946d9a to a7e7c075 on Fri Apr 19 01:29:35 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 9f163af7..ff981726 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: c528daeafa497195049316087828594ab988ccc1
+  newTag: 6491fb49fdeb1c371011d89e551874bc8b53f0e3
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-4c946d9a/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:6491fb49fdeb1c371011d89e551874bc8b53f0e3
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
304a305
>       set -o pipefail
310c311
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME || true
---
>       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME
444a446,447
>       set -eu
>       set -o pipefail
450,465d452
< 
<       #now clean up any dangling users, if their cleanup failed for whatever reason
< 
<       cat >script.sh <<EOF
<       threshold=$(date -d "1 day ago" +%s)
<       cd /home
<       for file in *; do
<         # Check if the file is a regular file and older than the threshold
<         if [[ $(stat -c "%Y" "$file") -lt $threshold ]]; then
<         # Delete the user
<         sudo userdel -f -r -Z $file
<         echo "Deleted: $file"
<         fi
<       done
<       EOF
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST "bash -s" <script.sh 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 383aa69e to 4c946d9a on Fri Apr 19 00:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 95e44273..2c6f0fd4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -25,14 +25,14 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubesaw-common
+        namespace: ksaw-common
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=false
+          - CreateNamespace=true
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index 9dc1053b..b2d378a8 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
deleted file mode 100644
index 45c562d3..00000000
--- a/components/sandbox/common/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index 01f7d942..9a125719 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-namespace: kubesaw-common
+namespace: ksaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 383aa69e to 4c946d9a on Fri Apr 19 00:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 95e44273..2c6f0fd4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -25,14 +25,14 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubesaw-common
+        namespace: ksaw-common
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=false
+          - CreateNamespace=true
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index 9dc1053b..b2d378a8 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
deleted file mode 100644
index 45c562d3..00000000
--- a/components/sandbox/common/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index 01f7d942..9a125719 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-namespace: kubesaw-common
+namespace: ksaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 383aa69e to 4c946d9a on Fri Apr 19 00:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
index 95e44273..2c6f0fd4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -25,14 +25,14 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: kubesaw-common
+        namespace: ksaw-common
         server: '{{server}}'
       syncPolicy:
         automated:
           prune: true
           selfHeal: true
         syncOptions:
-          - CreateNamespace=false
+          - CreateNamespace=true
         retry:
           limit: -1
           backoff:
diff --git a/components/sandbox/common/kustomization.yaml b/components/sandbox/common/kustomization.yaml
index 9dc1053b..b2d378a8 100644
--- a/components/sandbox/common/kustomization.yaml
+++ b/components/sandbox/common/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- namespace.yaml
diff --git a/components/sandbox/common/namespace.yaml b/components/sandbox/common/namespace.yaml
deleted file mode 100644
index 45c562d3..00000000
--- a/components/sandbox/common/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: kubesaw-common
diff --git a/components/sandbox/common/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
index 01f7d942..9a125719 100644
--- a/components/sandbox/common/olm-restart/kustomization.yaml
+++ b/components/sandbox/common/olm-restart/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
-namespace: kubesaw-common
+namespace: ksaw-common
 resources:
 - cronjob.yaml
 - sandbox-sre-olm-restart.yaml 
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
```
 
</details> 
<br> 


</div>
