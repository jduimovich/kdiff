# kustomize changes tracked by commits 
### This file generated at Thu Apr 18 16:09:15 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b069469e to 6c50484c on Thu Apr 18 15:36:12 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d8445be6..9f163af7 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-b069469e/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
266c266
<             memory: 2Gi
---
>             memory: 512Mi
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
474d473
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME 
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
<h3>1: Staging changes from b069469e to 6c50484c on Thu Apr 18 15:36:12 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d8445be6..9f163af7 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-b069469e/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
256c256
<             memory: 2Gi
---
>             memory: 512Mi
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
418d417
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME 
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
<h3>1: Development changes from b069469e to 6c50484c on Thu Apr 18 15:36:12 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d8445be6..9f163af7 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-b069469e/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
218c218
<             memory: 2Gi
---
>             memory: 512Mi
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
311d310
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME 
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
<h3>2: Production changes from 9a21a900 to b069469e on Thu Apr 18 15:11:46 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d0fb6aff..e7c3810f 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index d20cbd53..d82e7423 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
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
<h3>2: Staging changes from 9a21a900 to b069469e on Thu Apr 18 15:11:46 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d0fb6aff..e7c3810f 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index d20cbd53..d82e7423 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9a21a900/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
694c694
<         image: quay.io/redhat-appstudio/build-service:c214c7ecad9e2b65834089c123d89d8157ad078c
---
>         image: quay.io/redhat-appstudio/build-service:6185859e63a32de41a8e436a8daa1ac3a5b1f364 
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
<h3>2: Development changes from 9a21a900 to b069469e on Thu Apr 18 15:11:46 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d0fb6aff..e7c3810f 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index d20cbd53..d82e7423 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9a21a900/development/components/build-service/development/kustomize.out.yaml
689c689
<         image: quay.io/redhat-appstudio/build-service:c214c7ecad9e2b65834089c123d89d8157ad078c
---
>         image: quay.io/redhat-appstudio/build-service:6185859e63a32de41a8e436a8daa1ac3a5b1f364 
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
<h3>3: Production changes from c551c479 to 9a21a900 on Thu Apr 18 13:57:33 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d6133dd2..5f158d66 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e857d6b3..31d1e577 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
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
<h3>3: Staging changes from c551c479 to 9a21a900 on Thu Apr 18 13:57:33 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d6133dd2..5f158d66 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e857d6b3..31d1e577 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c551c479/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
---
>         image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556
1298c1298
<             image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
---
>             image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556 
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
<h3>3: Development changes from c551c479 to 9a21a900 on Thu Apr 18 13:57:33 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d6133dd2..5f158d66 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e857d6b3..31d1e577 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c551c479/development/components/integration/development/kustomize.out.yaml
1205c1205
<         image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
---
>         image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556
1299c1299
<             image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
---
>             image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556 
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
<h3>4: Production changes from 4e79722b to c551c479 on Thu Apr 18 13:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
new file mode 100644
index 00000000..3a725fcf
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubesaw-common
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/sandbox/common
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: kubesaw-common-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: kubesaw-common
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml
new file mode 100644
index 00000000..cced2a80
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - kubesaw-common.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index e3596c0f..3e8ab42f 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,6 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - backup
+  - kubesaw-common
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 293eeaf4..13168393 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -82,3 +82,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubesaw-common
+$patch: delete
diff --git a/components/sandbox/base/kustomization.yaml b/components/sandbox/common/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/kustomization.yaml
rename to components/sandbox/common/kustomization.yaml
diff --git a/components/sandbox/base/olm-restart/cronjob.yaml b/components/sandbox/common/olm-restart/cronjob.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/cronjob.yaml
rename to components/sandbox/common/olm-restart/cronjob.yaml
diff --git a/components/sandbox/base/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/kustomization.yaml
rename to components/sandbox/common/olm-restart/kustomization.yaml
diff --git a/components/sandbox/base/olm-restart/sandbox-sre-olm-restart.yaml b/components/sandbox/common/olm-restart/sandbox-sre-olm-restart.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/sandbox-sre-olm-restart.yaml
rename to components/sandbox/common/olm-restart/sandbox-sre-olm-restart.yaml
diff --git a/components/sandbox/base/rbac/kustomization.yaml b/components/sandbox/common/rbac/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/rbac/kustomization.yaml
rename to components/sandbox/common/rbac/kustomization.yaml
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/common/rbac/sandbox-sre-admins.yaml
similarity index 100%
rename from components/sandbox/base/rbac/sandbox-sre-admins.yaml
rename to components/sandbox/common/rbac/sandbox-sre-admins.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 60bf269b..df54c578 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-host-operator
 resources:
-- ../../base
 - ./rbac
 - ./monitoring
 - ./proxy
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index 2e323db7..f14a47f0 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -2,6 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
-- ../../base
 - ./rbac
 - ./olm 
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
<h3>4: Staging changes from 4e79722b to c551c479 on Thu Apr 18 13:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
new file mode 100644
index 00000000..3a725fcf
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubesaw-common
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/sandbox/common
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: kubesaw-common-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: kubesaw-common
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml
new file mode 100644
index 00000000..cced2a80
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - kubesaw-common.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index e3596c0f..3e8ab42f 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,6 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - backup
+  - kubesaw-common
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 293eeaf4..13168393 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -82,3 +82,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubesaw-common
+$patch: delete
diff --git a/components/sandbox/base/kustomization.yaml b/components/sandbox/common/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/kustomization.yaml
rename to components/sandbox/common/kustomization.yaml
diff --git a/components/sandbox/base/olm-restart/cronjob.yaml b/components/sandbox/common/olm-restart/cronjob.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/cronjob.yaml
rename to components/sandbox/common/olm-restart/cronjob.yaml
diff --git a/components/sandbox/base/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/kustomization.yaml
rename to components/sandbox/common/olm-restart/kustomization.yaml
diff --git a/components/sandbox/base/olm-restart/sandbox-sre-olm-restart.yaml b/components/sandbox/common/olm-restart/sandbox-sre-olm-restart.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/sandbox-sre-olm-restart.yaml
rename to components/sandbox/common/olm-restart/sandbox-sre-olm-restart.yaml
diff --git a/components/sandbox/base/rbac/kustomization.yaml b/components/sandbox/common/rbac/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/rbac/kustomization.yaml
rename to components/sandbox/common/rbac/kustomization.yaml
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/common/rbac/sandbox-sre-admins.yaml
similarity index 100%
rename from components/sandbox/base/rbac/sandbox-sre-admins.yaml
rename to components/sandbox/common/rbac/sandbox-sre-admins.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 60bf269b..df54c578 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-host-operator
 resources:
-- ../../base
 - ./rbac
 - ./monitoring
 - ./proxy
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index 2e323db7..f14a47f0 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -2,6 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
-- ../../base
 - ./rbac
 - ./olm 
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
<h3>4: Development changes from 4e79722b to c551c479 on Thu Apr 18 13:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
new file mode 100644
index 00000000..3a725fcf
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kubesaw-common.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubesaw-common
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/sandbox/common
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: kubesaw-common-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: kubesaw-common
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml
new file mode 100644
index 00000000..cced2a80
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kubesaw-common/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - kubesaw-common.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index e3596c0f..3e8ab42f 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,6 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - backup
+  - kubesaw-common
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 293eeaf4..13168393 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -82,3 +82,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: kubesaw-common
+$patch: delete
diff --git a/components/sandbox/base/kustomization.yaml b/components/sandbox/common/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/kustomization.yaml
rename to components/sandbox/common/kustomization.yaml
diff --git a/components/sandbox/base/olm-restart/cronjob.yaml b/components/sandbox/common/olm-restart/cronjob.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/cronjob.yaml
rename to components/sandbox/common/olm-restart/cronjob.yaml
diff --git a/components/sandbox/base/olm-restart/kustomization.yaml b/components/sandbox/common/olm-restart/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/kustomization.yaml
rename to components/sandbox/common/olm-restart/kustomization.yaml
diff --git a/components/sandbox/base/olm-restart/sandbox-sre-olm-restart.yaml b/components/sandbox/common/olm-restart/sandbox-sre-olm-restart.yaml
similarity index 100%
rename from components/sandbox/base/olm-restart/sandbox-sre-olm-restart.yaml
rename to components/sandbox/common/olm-restart/sandbox-sre-olm-restart.yaml
diff --git a/components/sandbox/base/rbac/kustomization.yaml b/components/sandbox/common/rbac/kustomization.yaml
similarity index 100%
rename from components/sandbox/base/rbac/kustomization.yaml
rename to components/sandbox/common/rbac/kustomization.yaml
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/common/rbac/sandbox-sre-admins.yaml
similarity index 100%
rename from components/sandbox/base/rbac/sandbox-sre-admins.yaml
rename to components/sandbox/common/rbac/sandbox-sre-admins.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 60bf269b..df54c578 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-host-operator
 resources:
-- ../../base
 - ./rbac
 - ./monitoring
 - ./proxy
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index 2e323db7..f14a47f0 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -2,6 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
-- ../../base
 - ./rbac
 - ./olm 
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
