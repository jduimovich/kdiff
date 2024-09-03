# kustomize changes tracked by commits 
### This file generated at Tue Sep  3 08:04:37 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b583ee93 to c5c7ec03 on Tue Sep 3 05:46:00 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ba5075ad..6f119583 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=4a1be0120d40c46a6a80826467bafffc83768212
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4a1be0120d40c46a6a80826467bafffc83768212
+- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4a1be0120d40c46a6a80826467bafffc83768212
+  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-b583ee93/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
---
>         image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
---
>             image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
./commit-b583ee93/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
---
>         image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
---
>             image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212 
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
<h3>1: Staging changes from b583ee93 to c5c7ec03 on Tue Sep 3 05:46:00 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ba5075ad..6f119583 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=4a1be0120d40c46a6a80826467bafffc83768212
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4a1be0120d40c46a6a80826467bafffc83768212
+- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4a1be0120d40c46a6a80826467bafffc83768212
+  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from b583ee93 to c5c7ec03 on Tue Sep 3 05:46:00 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ba5075ad..6f119583 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=4a1be0120d40c46a6a80826467bafffc83768212
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4a1be0120d40c46a6a80826467bafffc83768212
+- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4a1be0120d40c46a6a80826467bafffc83768212
+  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
 
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
<h3>2: Production changes from 24306a65 to b583ee93 on Mon Sep 2 09:25:00 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 8a6eb9fe..49fdb166 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,13 +5,13 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=af937884f71ef85a4cb9e6fd3e67ae608f34be66
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=af937884f71ef85a4cb9e6fd3e67ae608f34be66
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=65054dacb7333b7f866c3a604e7bffcecc3a9c5b
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=65054dacb7333b7f866c3a604e7bffcecc3a9c5b
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: af937884f71ef85a4cb9e6fd3e67ae608f34be66
+  newTag: 65054dacb7333b7f866c3a604e7bffcecc3a9c5b
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: af937884f71ef85a4cb9e6fd3e67ae608f34be66
+  newTag: 65054dacb7333b7f866c3a604e7bffcecc3a9c5b 
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
<h3>2: Staging changes from 24306a65 to b583ee93 on Mon Sep 2 09:25:00 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 8a6eb9fe..49fdb166 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,13 +5,13 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=af937884f71ef85a4cb9e6fd3e67ae608f34be66
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=af937884f71ef85a4cb9e6fd3e67ae608f34be66
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=65054dacb7333b7f866c3a604e7bffcecc3a9c5b
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=65054dacb7333b7f866c3a604e7bffcecc3a9c5b
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: af937884f71ef85a4cb9e6fd3e67ae608f34be66
+  newTag: 65054dacb7333b7f866c3a604e7bffcecc3a9c5b
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: af937884f71ef85a4cb9e6fd3e67ae608f34be66
+  newTag: 65054dacb7333b7f866c3a604e7bffcecc3a9c5b 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-24306a65/staging/components/multi-platform-controller/staging/kustomize.out.yaml
521c521
<         image: quay.io/konflux-ci/multi-platform-controller:65054dacb7333b7f866c3a604e7bffcecc3a9c5b
---
>         image: quay.io/konflux-ci/multi-platform-controller:af937884f71ef85a4cb9e6fd3e67ae608f34be66
563c563
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:65054dacb7333b7f866c3a604e7bffcecc3a9c5b
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:af937884f71ef85a4cb9e6fd3e67ae608f34be66 
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
<h3>2: Development changes from 24306a65 to b583ee93 on Mon Sep 2 09:25:00 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 8a6eb9fe..49fdb166 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,13 +5,13 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=af937884f71ef85a4cb9e6fd3e67ae608f34be66
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=af937884f71ef85a4cb9e6fd3e67ae608f34be66
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=65054dacb7333b7f866c3a604e7bffcecc3a9c5b
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=65054dacb7333b7f866c3a604e7bffcecc3a9c5b
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: af937884f71ef85a4cb9e6fd3e67ae608f34be66
+  newTag: 65054dacb7333b7f866c3a604e7bffcecc3a9c5b
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: af937884f71ef85a4cb9e6fd3e67ae608f34be66
+  newTag: 65054dacb7333b7f866c3a604e7bffcecc3a9c5b 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-24306a65/development/components/multi-platform-controller/development/kustomize.out.yaml
269c269
<         image: quay.io/konflux-ci/multi-platform-controller:65054dacb7333b7f866c3a604e7bffcecc3a9c5b
---
>         image: quay.io/konflux-ci/multi-platform-controller:af937884f71ef85a4cb9e6fd3e67ae608f34be66
311c311
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:65054dacb7333b7f866c3a604e7bffcecc3a9c5b
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:af937884f71ef85a4cb9e6fd3e67ae608f34be66 
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
<h3>3: Production changes from e290c8ba to 24306a65 on Mon Sep 2 07:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (209 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index fcf203a7..324898fa 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1553,6 +1553,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 64d7365a..cb8a5909 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1515,6 +1515,14 @@ spec:
               }
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 61299f62..7d070931 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a14eff49..0f6aea93 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 569e4f30..e1a822f8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 5a72a22c..6d592572 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bdb30b62..f28c27fb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1369,6 +1369,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2066c63..1838de6a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dda1dafe..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,9 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: tekton-config-patch.yaml
-    target:
-      name: config
-      group: operator.tekton.dev
-      version: v1alpha1
-      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
deleted file mode 100644
index 9fd45a9d..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  pipeline:
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 505b1e32..2db58599 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (40 lines)</summary>  

``` 
./commit-e290c8ba/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule"
./commit-e290c8ba/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule"
./commit-e290c8ba/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule"
./commit-e290c8ba/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule" 
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
<h3>3: Staging changes from e290c8ba to 24306a65 on Mon Sep 2 07:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (209 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index fcf203a7..324898fa 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1553,6 +1553,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 64d7365a..cb8a5909 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1515,6 +1515,14 @@ spec:
               }
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 61299f62..7d070931 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a14eff49..0f6aea93 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 569e4f30..e1a822f8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 5a72a22c..6d592572 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bdb30b62..f28c27fb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1369,6 +1369,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2066c63..1838de6a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dda1dafe..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,9 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: tekton-config-patch.yaml
-    target:
-      name: config
-      group: operator.tekton.dev
-      version: v1alpha1
-      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
deleted file mode 100644
index 9fd45a9d..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  pipeline:
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 505b1e32..2db58599 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-e290c8ba/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1847,1854d1846
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule"
./commit-e290c8ba/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1847,1854d1846
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule" 
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
<h3>3: Development changes from e290c8ba to 24306a65 on Mon Sep 2 07:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (209 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index fcf203a7..324898fa 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1553,6 +1553,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 64d7365a..cb8a5909 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1515,6 +1515,14 @@ spec:
               }
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 61299f62..7d070931 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a14eff49..0f6aea93 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 569e4f30..e1a822f8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 5a72a22c..6d592572 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bdb30b62..f28c27fb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1369,6 +1369,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2066c63..1838de6a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dda1dafe..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,9 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: tekton-config-patch.yaml
-    target:
-      name: config
-      group: operator.tekton.dev
-      version: v1alpha1
-      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
deleted file mode 100644
index 9fd45a9d..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  pipeline:
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 505b1e32..2db58599 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-e290c8ba/development/components/pipeline-service/development/kustomize.out.yaml
1915,1922d1914
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule" 
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
<h3>4: Production changes from 10c00192 to e290c8ba on Mon Sep 2 03:49:02 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index f81e2ddb..b097e035 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:333b7ba" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-10c00192/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
627c627
<           value: quay.io/konflux-ci/mintmaker-renovate-image:333b7ba
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7
./commit-10c00192/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
627c627
<           value: quay.io/konflux-ci/mintmaker-renovate-image:333b7ba
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7 
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
<h3>4: Staging changes from 10c00192 to e290c8ba on Mon Sep 2 03:49:02 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index f81e2ddb..b097e035 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:333b7ba" 
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
<h3>4: Development changes from 10c00192 to e290c8ba on Mon Sep 2 03:49:02 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index f81e2ddb..b097e035 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:333b7ba" 
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
