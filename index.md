# kustomize changes tracked by commits 
### This file generated at Fri Feb 23 00:07:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from edb0bcb2 to 6a638b76 on Thu Feb 22 21:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 6b936d3e..72239d14 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (77 lines)</summary>  

``` 
./commit-edb0bcb2/production/components/release/production/kustomize.out.yaml
337,341d336
<               releaseGracePeriodDays:
<                 default: 7
<                 description: ReleaseGracePeriodDays is the number of days a Release
<                   should be kept This value is used to define the Release ExpirationTime
<                 type: integer
510,513d504
<               gracePeriodDays:
<                 description: GracePeriodDays is the number of days a Release should
<                   be kept This value is used to define the Release ExpirationTime
<                 type: integer
644,647d634
<               expirationTime:
<                 description: ExpirationTime is the time when a Release can be purged
<                 format: date-time
<                 type: string
676,681d662
<                   roleBinding:
<                     description: RoleBinding contains the namespaced name of the roleBinding
<                       created for the managed Release PipelineRun executed as part
<                       of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
762,765d742
<               advisoryRepo:
<                 description: AdvisoryRepo is the repo to create advisories in during
<                   the managed release PipelineRun
<                 type: string
986,995d962
<   - internalrequests
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
1089,1100d1055
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
1742c1697
<         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86
---
>         image: quay.io/redhat-appstudio/release-service:5bb55c88e868015d2b62412eef174bd6c842441c
1890,1908d1844
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: release-service-webhook-service
<       namespace: release-service
<       path: /mutate-appstudio-redhat-com-v1alpha1-release
<   failurePolicy: Fail
<   name: mrelease.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     resources:
<     - releases 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from edb0bcb2 to 6a638b76 on Thu Feb 22 21:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 6b936d3e..72239d14 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from edb0bcb2 to 6a638b76 on Thu Feb 22 21:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 6b936d3e..72239d14 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from bf986224 to edb0bcb2 on Thu Feb 22 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index cd952d4a..83372f19 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from bf986224 to edb0bcb2 on Thu Feb 22 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index cd952d4a..83372f19 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (77 lines)</summary>  

``` 
./commit-bf986224/staging/components/release/staging/kustomize.out.yaml
337,341d336
<               releaseGracePeriodDays:
<                 default: 7
<                 description: ReleaseGracePeriodDays is the number of days a Release
<                   should be kept This value is used to define the Release ExpirationTime
<                 type: integer
510,513d504
<               gracePeriodDays:
<                 description: GracePeriodDays is the number of days a Release should
<                   be kept This value is used to define the Release ExpirationTime
<                 type: integer
644,647d634
<               expirationTime:
<                 description: ExpirationTime is the time when a Release can be purged
<                 format: date-time
<                 type: string
676,681d662
<                   roleBinding:
<                     description: RoleBinding contains the namespaced name of the roleBinding
<                       created for the managed Release PipelineRun executed as part
<                       of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
762,765d742
<               advisoryRepo:
<                 description: AdvisoryRepo is the repo to create advisories in during
<                   the managed release PipelineRun
<                 type: string
986,995d962
<   - internalrequests
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
1089,1100d1055
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
1742c1697
<         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86
---
>         image: quay.io/redhat-appstudio/release-service:5bb55c88e868015d2b62412eef174bd6c842441c
1890,1908d1844
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: release-service-webhook-service
<       namespace: release-service
<       path: /mutate-appstudio-redhat-com-v1alpha1-release
<   failurePolicy: Fail
<   name: mrelease.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     resources:
<     - releases 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from bf986224 to edb0bcb2 on Thu Feb 22 20:45:54 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index cd952d4a..83372f19 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (77 lines)</summary>  

``` 
./commit-c477e838/development/components/release/development/kustomize.out.yaml
337,341d336
<               releaseGracePeriodDays:
<                 default: 7
<                 description: ReleaseGracePeriodDays is the number of days a Release
<                   should be kept This value is used to define the Release ExpirationTime
<                 type: integer
510,513d504
<               gracePeriodDays:
<                 description: GracePeriodDays is the number of days a Release should
<                   be kept This value is used to define the Release ExpirationTime
<                 type: integer
644,647d634
<               expirationTime:
<                 description: ExpirationTime is the time when a Release can be purged
<                 format: date-time
<                 type: string
676,681d662
<                   roleBinding:
<                     description: RoleBinding contains the namespaced name of the roleBinding
<                       created for the managed Release PipelineRun executed as part
<                       of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
762,765d742
<               advisoryRepo:
<                 description: AdvisoryRepo is the repo to create advisories in during
<                   the managed release PipelineRun
<                 type: string
986,995d962
<   - internalrequests
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
1089,1100d1055
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
1742c1697
<         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86
---
>         image: quay.io/redhat-appstudio/release-service:a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
1890,1908d1844
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: release-service-webhook-service
<       namespace: release-service
<       path: /mutate-appstudio-redhat-com-v1alpha1-release
<   failurePolicy: Fail
<   name: mrelease.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     resources:
<     - releases 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from d12c6c5c to c477e838 on Thu Feb 22 16:52:08 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 3bcd2317..dcde4adb 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-toolchain-host-schedule.yaml
+  - schedules
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
similarity index 100%
rename from components/backup/base/host/backup-toolchain-host-schedule.yaml
rename to components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/host/schedules/kustomization.yaml b/components/backup/base/host/schedules/kustomization.yaml
new file mode 100644
index 00000000..491fa46f
--- /dev/null
+++ b/components/backup/base/host/schedules/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index ffa4ee8a..dcde4adb 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-tenants-schedule.yaml
-  - backup-toolchain-member-schedule.yaml
+  - schedules
diff --git a/components/backup/base/member/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-tenants-schedule.yaml
rename to components/backup/base/member/schedules/backup-tenants-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-toolchain-member-schedule.yaml
rename to components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
diff --git a/components/backup/base/member/schedules/kustomization.yaml b/components/backup/base/member/schedules/kustomization.yaml
new file mode 100644
index 00000000..82489ce2
--- /dev/null
+++ b/components/backup/base/member/schedules/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..d0ab2f88
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..b846210a
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..720d118c
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: acab68d3-4bbd-453b-a31e-0ce354f0db4b
diff --git a/components/backup/production/stone-prod-p01/kustomization.yaml b/components/backup/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..49236b0e
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f376eac6
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..ec4ef510
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 71be430c-e08f-4604-a3d6-f660d7b61072
diff --git a/components/backup/staging/stone-stage-p01/kustomization.yaml b/components/backup/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-c477e838/production/components/backup/production: stone-prod-p01 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from d12c6c5c to c477e838 on Thu Feb 22 16:52:08 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 3bcd2317..dcde4adb 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-toolchain-host-schedule.yaml
+  - schedules
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
similarity index 100%
rename from components/backup/base/host/backup-toolchain-host-schedule.yaml
rename to components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/host/schedules/kustomization.yaml b/components/backup/base/host/schedules/kustomization.yaml
new file mode 100644
index 00000000..491fa46f
--- /dev/null
+++ b/components/backup/base/host/schedules/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index ffa4ee8a..dcde4adb 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-tenants-schedule.yaml
-  - backup-toolchain-member-schedule.yaml
+  - schedules
diff --git a/components/backup/base/member/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-tenants-schedule.yaml
rename to components/backup/base/member/schedules/backup-tenants-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-toolchain-member-schedule.yaml
rename to components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
diff --git a/components/backup/base/member/schedules/kustomization.yaml b/components/backup/base/member/schedules/kustomization.yaml
new file mode 100644
index 00000000..82489ce2
--- /dev/null
+++ b/components/backup/base/member/schedules/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..d0ab2f88
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..b846210a
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..720d118c
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: acab68d3-4bbd-453b-a31e-0ce354f0db4b
diff --git a/components/backup/production/stone-prod-p01/kustomization.yaml b/components/backup/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..49236b0e
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f376eac6
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..ec4ef510
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 71be430c-e08f-4604-a3d6-f660d7b61072
diff --git a/components/backup/staging/stone-stage-p01/kustomization.yaml b/components/backup/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-c477e838/staging/components/backup/staging: stone-stage-p01 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from d12c6c5c to c477e838 on Thu Feb 22 16:52:08 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 3bcd2317..dcde4adb 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-toolchain-host-schedule.yaml
+  - schedules
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
similarity index 100%
rename from components/backup/base/host/backup-toolchain-host-schedule.yaml
rename to components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/host/schedules/kustomization.yaml b/components/backup/base/host/schedules/kustomization.yaml
new file mode 100644
index 00000000..491fa46f
--- /dev/null
+++ b/components/backup/base/host/schedules/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index ffa4ee8a..dcde4adb 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-tenants-schedule.yaml
-  - backup-toolchain-member-schedule.yaml
+  - schedules
diff --git a/components/backup/base/member/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-tenants-schedule.yaml
rename to components/backup/base/member/schedules/backup-tenants-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-toolchain-member-schedule.yaml
rename to components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
diff --git a/components/backup/base/member/schedules/kustomization.yaml b/components/backup/base/member/schedules/kustomization.yaml
new file mode 100644
index 00000000..82489ce2
--- /dev/null
+++ b/components/backup/base/member/schedules/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..d0ab2f88
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..b846210a
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..720d118c
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: acab68d3-4bbd-453b-a31e-0ce354f0db4b
diff --git a/components/backup/production/stone-prod-p01/kustomization.yaml b/components/backup/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..49236b0e
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f376eac6
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..ec4ef510
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 71be430c-e08f-4604-a3d6-f660d7b61072
diff --git a/components/backup/staging/stone-stage-p01/kustomization.yaml b/components/backup/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-bucket-patch.yaml
+  - target:
+      group: oadp.openshift.io
+      version: v1alpha1
+      kind: DataProtectionApplication
+      name: velero-aws
+    path: dpa-kmskeyid-patch.yaml 
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
```
 
</details> 
<br> 


</div>
