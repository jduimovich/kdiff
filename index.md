# kustomize changes tracked by commits 
### This file generated at Mon Aug  5 12:07:00 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f017599b to 6ec4ce75 on Mon Aug 5 11:50:37 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 630b5c32..78005499 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f912d0d8e5c9b48657929f86e0c2fcd894588853
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f912d0d8e5c9b48657929f86e0c2fcd894588853
+- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f912d0d8e5c9b48657929f86e0c2fcd894588853
+  newTag: 695c489487a0acb390f51495927c06126bf55fbb
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-f017599b/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
---
>         image: quay.io/redhat-appstudio/integration-service:f912d0d8e5c9b48657929f86e0c2fcd894588853
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
---
>             image: quay.io/redhat-appstudio/integration-service:f912d0d8e5c9b48657929f86e0c2fcd894588853
./commit-f017599b/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
---
>         image: quay.io/redhat-appstudio/integration-service:f912d0d8e5c9b48657929f86e0c2fcd894588853
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
---
>             image: quay.io/redhat-appstudio/integration-service:f912d0d8e5c9b48657929f86e0c2fcd894588853 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f017599b to 6ec4ce75 on Mon Aug 5 11:50:37 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 630b5c32..78005499 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f912d0d8e5c9b48657929f86e0c2fcd894588853
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f912d0d8e5c9b48657929f86e0c2fcd894588853
+- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f912d0d8e5c9b48657929f86e0c2fcd894588853
+  newTag: 695c489487a0acb390f51495927c06126bf55fbb
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from f017599b to 6ec4ce75 on Mon Aug 5 11:50:37 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 630b5c32..78005499 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=f912d0d8e5c9b48657929f86e0c2fcd894588853
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f912d0d8e5c9b48657929f86e0c2fcd894588853
+- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: f912d0d8e5c9b48657929f86e0c2fcd894588853
+  newTag: 695c489487a0acb390f51495927c06126bf55fbb
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from b0d15790 to f017599b on Mon Aug 5 10:45:02 2024 </h3>  
 
<details> 
<summary>Git Diff (97 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/allow-argocd-to-manage.yaml b/components/multi-platform-controller/base/common/allow-argocd-to-manage.yaml
similarity index 100%
rename from components/multi-platform-controller/base/allow-argocd-to-manage.yaml
rename to components/multi-platform-controller/base/common/allow-argocd-to-manage.yaml
diff --git a/components/multi-platform-controller/base/common/kustomization.yaml b/components/multi-platform-controller/base/common/kustomization.yaml
new file mode 100644
index 00000000..d540fe9e
--- /dev/null
+++ b/components/multi-platform-controller/base/common/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- monitoring.yaml
+- allow-argocd-to-manage.yaml
diff --git a/components/multi-platform-controller/base/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
similarity index 100%
rename from components/multi-platform-controller/base/monitoring.yaml
rename to components/multi-platform-controller/base/common/monitoring.yaml
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index efbeaa6e..48f37b4f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -1,9 +1,10 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
+namespace: multi-platform-controller
+
 resources:
-- monitoring.yaml
-- allow-argocd-to-manage.yaml
+- common
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 
@@ -14,7 +15,3 @@ images:
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
-
-namespace: multi-platform-controller
-
-
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index edfa9ff5..5adf326f 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -1,8 +1,19 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+namespace: multi-platform-controller
+
 resources:
-- ../base
+- ../base/common
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - host-config.yaml
 - external-secrets.yaml
 
-namespace: multi-platform-controller
+images:
+- name: multi-platform-controller
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
+- name: multi-platform-otp-server
+  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index fce62070..5adf326f 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -1,9 +1,19 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+namespace: multi-platform-controller
+
 resources:
-- ../base
+- ../base/common
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - host-config.yaml
 - external-secrets.yaml
 
-
-namespace: multi-platform-controller
+images:
+- name: multi-platform-controller
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
+- name: multi-platform-otp-server
+  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from b0d15790 to f017599b on Mon Aug 5 10:45:02 2024 </h3>  
 
<details> 
<summary>Git Diff (97 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/allow-argocd-to-manage.yaml b/components/multi-platform-controller/base/common/allow-argocd-to-manage.yaml
similarity index 100%
rename from components/multi-platform-controller/base/allow-argocd-to-manage.yaml
rename to components/multi-platform-controller/base/common/allow-argocd-to-manage.yaml
diff --git a/components/multi-platform-controller/base/common/kustomization.yaml b/components/multi-platform-controller/base/common/kustomization.yaml
new file mode 100644
index 00000000..d540fe9e
--- /dev/null
+++ b/components/multi-platform-controller/base/common/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- monitoring.yaml
+- allow-argocd-to-manage.yaml
diff --git a/components/multi-platform-controller/base/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
similarity index 100%
rename from components/multi-platform-controller/base/monitoring.yaml
rename to components/multi-platform-controller/base/common/monitoring.yaml
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index efbeaa6e..48f37b4f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -1,9 +1,10 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
+namespace: multi-platform-controller
+
 resources:
-- monitoring.yaml
-- allow-argocd-to-manage.yaml
+- common
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 
@@ -14,7 +15,3 @@ images:
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
-
-namespace: multi-platform-controller
-
-
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index edfa9ff5..5adf326f 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -1,8 +1,19 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+namespace: multi-platform-controller
+
 resources:
-- ../base
+- ../base/common
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - host-config.yaml
 - external-secrets.yaml
 
-namespace: multi-platform-controller
+images:
+- name: multi-platform-controller
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
+- name: multi-platform-otp-server
+  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index fce62070..5adf326f 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -1,9 +1,19 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+namespace: multi-platform-controller
+
 resources:
-- ../base
+- ../base/common
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - host-config.yaml
 - external-secrets.yaml
 
-
-namespace: multi-platform-controller
+images:
+- name: multi-platform-controller
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
+- name: multi-platform-otp-server
+  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2 
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
<h3>2: Development changes from b0d15790 to f017599b on Mon Aug 5 10:45:02 2024 </h3>  
 
<details> 
<summary>Git Diff (97 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/allow-argocd-to-manage.yaml b/components/multi-platform-controller/base/common/allow-argocd-to-manage.yaml
similarity index 100%
rename from components/multi-platform-controller/base/allow-argocd-to-manage.yaml
rename to components/multi-platform-controller/base/common/allow-argocd-to-manage.yaml
diff --git a/components/multi-platform-controller/base/common/kustomization.yaml b/components/multi-platform-controller/base/common/kustomization.yaml
new file mode 100644
index 00000000..d540fe9e
--- /dev/null
+++ b/components/multi-platform-controller/base/common/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- monitoring.yaml
+- allow-argocd-to-manage.yaml
diff --git a/components/multi-platform-controller/base/monitoring.yaml b/components/multi-platform-controller/base/common/monitoring.yaml
similarity index 100%
rename from components/multi-platform-controller/base/monitoring.yaml
rename to components/multi-platform-controller/base/common/monitoring.yaml
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index efbeaa6e..48f37b4f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -1,9 +1,10 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
+namespace: multi-platform-controller
+
 resources:
-- monitoring.yaml
-- allow-argocd-to-manage.yaml
+- common
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 
@@ -14,7 +15,3 @@ images:
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
   newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
-
-namespace: multi-platform-controller
-
-
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index edfa9ff5..5adf326f 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -1,8 +1,19 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+namespace: multi-platform-controller
+
 resources:
-- ../base
+- ../base/common
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - host-config.yaml
 - external-secrets.yaml
 
-namespace: multi-platform-controller
+images:
+- name: multi-platform-controller
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
+- name: multi-platform-otp-server
+  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index fce62070..5adf326f 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -1,9 +1,19 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+namespace: multi-platform-controller
+
 resources:
-- ../base
+- ../base/common
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=f54047c5bc77752ce64eb78774535eb35eb406f2
 - host-config.yaml
 - external-secrets.yaml
 
-
-namespace: multi-platform-controller
+images:
+- name: multi-platform-controller
+  newName: quay.io/konflux-ci/multi-platform-controller
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2
+- name: multi-platform-otp-server
+  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
+  newTag: f54047c5bc77752ce64eb78774535eb35eb406f2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from d9b1bf49 to b0d15790 on Mon Aug 5 10:03:26 2024 </h3>  
 
<details> 
<summary>Git Diff (180 lines)</summary>  

``` 
diff --git a/components/release/base/monitor/development/configmap.yaml b/components/release/base/monitor/development/configmap.yaml
new file mode 100644
index 00000000..33410e79
--- /dev/null
+++ b/components/release/base/monitor/development/configmap.yaml
@@ -0,0 +1,28 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: development
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          username: test+testbot
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.preprod.api.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/development/kustomization.yaml b/components/release/base/monitor/development/kustomization.yaml
new file mode 100644
index 00000000..d215ab96
--- /dev/null
+++ b/components/release/base/monitor/development/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag:	73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
+
diff --git a/components/release/base/monitor/production/configmap.yaml b/components/release/base/monitor/production/configmap.yaml
new file mode 100644
index 00000000..1a8bf403
--- /dev/null
+++ b/components/release/base/monitor/production/configmap.yaml
@@ -0,0 +1,27 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: production
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.api.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/production/kustomization.yaml b/components/release/base/monitor/production/kustomization.yaml
new file mode 100644
index 00000000..19223782
--- /dev/null
+++ b/components/release/base/monitor/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag: 73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
diff --git a/components/release/base/monitor/staging/configmap.yaml b/components/release/base/monitor/staging/configmap.yaml
new file mode 100644
index 00000000..7bc119fb
--- /dev/null
+++ b/components/release/base/monitor/staging/configmap.yaml
@@ -0,0 +1,28 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: development
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          username: test+testbot
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.nonprod.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/staging/kustomization.yaml b/components/release/base/monitor/staging/kustomization.yaml
new file mode 100644
index 00000000..19223782
--- /dev/null
+++ b/components/release/base/monitor/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag: 73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 7489122f..34f9721f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - ../base/monitor/development
   - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
 
 images:
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 293f4e39..8e7688d2 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - ../base/monitor/staging
   - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
 
 components: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from d9b1bf49 to b0d15790 on Mon Aug 5 10:03:26 2024 </h3>  
 
<details> 
<summary>Git Diff (180 lines)</summary>  

``` 
diff --git a/components/release/base/monitor/development/configmap.yaml b/components/release/base/monitor/development/configmap.yaml
new file mode 100644
index 00000000..33410e79
--- /dev/null
+++ b/components/release/base/monitor/development/configmap.yaml
@@ -0,0 +1,28 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: development
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          username: test+testbot
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.preprod.api.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/development/kustomization.yaml b/components/release/base/monitor/development/kustomization.yaml
new file mode 100644
index 00000000..d215ab96
--- /dev/null
+++ b/components/release/base/monitor/development/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag:	73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
+
diff --git a/components/release/base/monitor/production/configmap.yaml b/components/release/base/monitor/production/configmap.yaml
new file mode 100644
index 00000000..1a8bf403
--- /dev/null
+++ b/components/release/base/monitor/production/configmap.yaml
@@ -0,0 +1,27 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: production
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.api.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/production/kustomization.yaml b/components/release/base/monitor/production/kustomization.yaml
new file mode 100644
index 00000000..19223782
--- /dev/null
+++ b/components/release/base/monitor/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag: 73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
diff --git a/components/release/base/monitor/staging/configmap.yaml b/components/release/base/monitor/staging/configmap.yaml
new file mode 100644
index 00000000..7bc119fb
--- /dev/null
+++ b/components/release/base/monitor/staging/configmap.yaml
@@ -0,0 +1,28 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: development
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          username: test+testbot
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.nonprod.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/staging/kustomization.yaml b/components/release/base/monitor/staging/kustomization.yaml
new file mode 100644
index 00000000..19223782
--- /dev/null
+++ b/components/release/base/monitor/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag: 73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 7489122f..34f9721f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - ../base/monitor/development
   - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
 
 images:
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 293f4e39..8e7688d2 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - ../base/monitor/staging
   - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
 
 components: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (122 lines)</summary>  

``` 
./commit-d9b1bf49/staging/components/release/staging/kustomize.out.yaml
1727,1755d1726
< data:
<   server-config.yaml: |
<     ---
<     service:
<       listen_port: 8080
<       pool_interval: 120
<       metrics_prefix: release_service
<     checks:
<       git:
<         - name: github
<           url: https://github.com/konflux-ci/release-service-catalog
<           revision: development
<           path: pipelines/fbc-release/fbc-release.yaml
<       quay:
<         - name: quayio
<           tags:
<             - latest
<           username: test+testbot
<           pullspec: quay.io/konflux-ci/release-service-utils
<       http:
<         - name: pyxis
<           url: https://pyxis.nonprod.redhat.com/v1/ping
<           insecure: true
< kind: ConfigMap
< metadata:
<   name: release-service-monitor-config
<   namespace: release-service
< ---
< apiVersion: v1
1783,1799d1753
<   labels:
<     app: release-service-monitor-app
<   name: release-service-monitor-service
<   namespace: release-service
< spec:
<   ports:
<   - name: metricshttp
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   selector:
<     app: release-service-monitor-app
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
1924,1978d1877
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   name: release-service-monitor-deployment
<   namespace: release-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: release-service-monitor-app
<   template:
<     metadata:
<       labels:
<         app: release-service-monitor-app
<     spec:
<       containers:
<       - command:
<         - /bin/metrics-server
<         - /config/server-config.yaml
<         env:
<         - name: HOME
<           value: /var/tmp
<         - name: TMPDIR
<           value: /var/tmp
<         image: quay.io/konflux-ci/release-service-monitor:73e63a3db71ab5084150b31277710aabff613b03
<         name: release-service-monitor
<         ports:
<         - containerPort: 8080
<         resources:
<           limits:
<             cpu: 500m
<             memory: 512Mi
<           requests:
<             cpu: 10m
<             memory: 256Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /config
<           name: config
<           readOnly: true
<         - mountPath: /var/tmp
<           name: temp-directory
<       volumes:
<       - configMap:
<           items:
<           - key: server-config.yaml
<             path: server-config.yaml
<           name: release-service-monitor-config
<         name: config
<       - emptyDir: {}
<         name: temp-directory
< ---
2076,2091d1974
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app: release-service-monitor-app
<   name: release-service-monitor
<   namespace: release-service
< spec:
<   endpoints:
<   - path: /metrics
<     port: metricshttp
<     scheme: http
<   selector:
<     matchLabels:
<       app: release-service-monitor-app 
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
<h3>3: Development changes from d9b1bf49 to b0d15790 on Mon Aug 5 10:03:26 2024 </h3>  
 
<details> 
<summary>Git Diff (180 lines)</summary>  

``` 
diff --git a/components/release/base/monitor/development/configmap.yaml b/components/release/base/monitor/development/configmap.yaml
new file mode 100644
index 00000000..33410e79
--- /dev/null
+++ b/components/release/base/monitor/development/configmap.yaml
@@ -0,0 +1,28 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: development
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          username: test+testbot
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.preprod.api.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/development/kustomization.yaml b/components/release/base/monitor/development/kustomization.yaml
new file mode 100644
index 00000000..d215ab96
--- /dev/null
+++ b/components/release/base/monitor/development/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag:	73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
+
diff --git a/components/release/base/monitor/production/configmap.yaml b/components/release/base/monitor/production/configmap.yaml
new file mode 100644
index 00000000..1a8bf403
--- /dev/null
+++ b/components/release/base/monitor/production/configmap.yaml
@@ -0,0 +1,27 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: production
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.api.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/production/kustomization.yaml b/components/release/base/monitor/production/kustomization.yaml
new file mode 100644
index 00000000..19223782
--- /dev/null
+++ b/components/release/base/monitor/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag: 73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
diff --git a/components/release/base/monitor/staging/configmap.yaml b/components/release/base/monitor/staging/configmap.yaml
new file mode 100644
index 00000000..7bc119fb
--- /dev/null
+++ b/components/release/base/monitor/staging/configmap.yaml
@@ -0,0 +1,28 @@
+apiVersion: v1
+data:
+  server-config.yaml: |
+    ---
+    service:
+      listen_port: 8080
+      pool_interval: 120
+      metrics_prefix: release_service
+    checks:
+      git:
+        - name: github
+          url: https://github.com/konflux-ci/release-service-catalog
+          revision: development
+          path: pipelines/fbc-release/fbc-release.yaml
+      quay:
+        - name: quayio
+          tags:
+            - latest
+          username: test+testbot
+          pullspec: quay.io/konflux-ci/release-service-utils
+      http:
+        - name: pyxis
+          url: https://pyxis.nonprod.redhat.com/v1/ping
+          insecure: true
+kind: ConfigMap
+metadata:
+  name: release-service-monitor-config
+  namespace: release-service
diff --git a/components/release/base/monitor/staging/kustomization.yaml b/components/release/base/monitor/staging/kustomization.yaml
new file mode 100644
index 00000000..19223782
--- /dev/null
+++ b/components/release/base/monitor/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - configmap.yaml
+  - https://github.com/hacbs-release/release-service-monitor/config/default?ref=73e63a3db71ab5084150b31277710aabff613b03
+
+images:
+  - name: quay.io/konflux-ci/release-service-monitor
+    newName: quay.io/konflux-ci/release-service-monitor
+    newTag: 73e63a3db71ab5084150b31277710aabff613b03
+
+namespace: release-service
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 7489122f..34f9721f 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - ../base/monitor/development
   - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
 
 images:
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 293f4e39..8e7688d2 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - ../base/monitor/staging
   - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
 
 components: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (122 lines)</summary>  

``` 
./commit-d9b1bf49/development/components/release/development/kustomize.out.yaml
1727,1755d1726
< data:
<   server-config.yaml: |
<     ---
<     service:
<       listen_port: 8080
<       pool_interval: 120
<       metrics_prefix: release_service
<     checks:
<       git:
<         - name: github
<           url: https://github.com/konflux-ci/release-service-catalog
<           revision: development
<           path: pipelines/fbc-release/fbc-release.yaml
<       quay:
<         - name: quayio
<           tags:
<             - latest
<           username: test+testbot
<           pullspec: quay.io/konflux-ci/release-service-utils
<       http:
<         - name: pyxis
<           url: https://pyxis.preprod.api.redhat.com/v1/ping
<           insecure: true
< kind: ConfigMap
< metadata:
<   name: release-service-monitor-config
<   namespace: release-service
< ---
< apiVersion: v1
1783,1799d1753
<   labels:
<     app: release-service-monitor-app
<   name: release-service-monitor-service
<   namespace: release-service
< spec:
<   ports:
<   - name: metricshttp
<     port: 8080
<     protocol: TCP
<     targetPort: 8080
<   selector:
<     app: release-service-monitor-app
<   type: ClusterIP
< ---
< apiVersion: v1
< kind: Service
< metadata:
1924,1978d1877
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   name: release-service-monitor-deployment
<   namespace: release-service
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: release-service-monitor-app
<   template:
<     metadata:
<       labels:
<         app: release-service-monitor-app
<     spec:
<       containers:
<       - command:
<         - /bin/metrics-server
<         - /config/server-config.yaml
<         env:
<         - name: HOME
<           value: /var/tmp
<         - name: TMPDIR
<           value: /var/tmp
<         image: quay.io/konflux-ci/release-service-monitor:73e63a3db71ab5084150b31277710aabff613b03
<         name: release-service-monitor
<         ports:
<         - containerPort: 8080
<         resources:
<           limits:
<             cpu: 500m
<             memory: 512Mi
<           requests:
<             cpu: 10m
<             memory: 256Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<         volumeMounts:
<         - mountPath: /config
<           name: config
<           readOnly: true
<         - mountPath: /var/tmp
<           name: temp-directory
<       volumes:
<       - configMap:
<           items:
<           - key: server-config.yaml
<             path: server-config.yaml
<           name: release-service-monitor-config
<         name: config
<       - emptyDir: {}
<         name: temp-directory
< ---
2076,2091d1974
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app: release-service-monitor-app
<   name: release-service-monitor
<   namespace: release-service
< spec:
<   endpoints:
<   - path: /metrics
<     port: metricshttp
<     scheme: http
<   selector:
<     matchLabels:
<       app: release-service-monitor-app 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from db70b6b8 to d9b1bf49 on Mon Aug 5 07:20:22 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index da738f63..77b46ac9 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -55,3 +55,5 @@ spec:
         - konflux-otel
         - local-cluster
         - clusters
+        - konflux-qe-team-tenant
+        - rhtap-shared-team-tenant 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-db70b6b8/production/components/cluster-secret-store/production/kustomize.out.yaml
38,39d37
<     - konflux-qe-team-tenant
<     - rhtap-shared-team-tenant 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from db70b6b8 to d9b1bf49 on Mon Aug 5 07:20:22 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index da738f63..77b46ac9 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -55,3 +55,5 @@ spec:
         - konflux-otel
         - local-cluster
         - clusters
+        - konflux-qe-team-tenant
+        - rhtap-shared-team-tenant 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-db70b6b8/staging/components/cluster-secret-store/staging/kustomize.out.yaml
38,39d37
<     - konflux-qe-team-tenant
<     - rhtap-shared-team-tenant 
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
<h3>4: Development changes from db70b6b8 to d9b1bf49 on Mon Aug 5 07:20:22 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index da738f63..77b46ac9 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -55,3 +55,5 @@ spec:
         - konflux-otel
         - local-cluster
         - clusters
+        - konflux-qe-team-tenant
+        - rhtap-shared-team-tenant 
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
```
 
</details> 
<br> 


</div>
