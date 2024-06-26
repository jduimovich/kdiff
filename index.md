# kustomize changes tracked by commits 
### This file generated at Wed Jun 26 08:03:59 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from aaabb475 to 91b0ed52 on Wed Jun 26 06:54:28 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 975b05b6..cbe30aa7 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -61,8 +61,8 @@ data:
   dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-fast-amd64.max-instances: "10"
   dynamic.linux-fast-amd64.disk: "200"
-  dynamic.linux-fast-amd64.iops: "16000"
-  dynamic.linux-fast-amd64.throughput: "1000"
+  #  dynamic.linux-fast-amd64.iops: "16000"
+  #  dynamic.linux-fast-amd64.throughput: "1000"
 
   dynamic.linux-extra-fast-amd64.type: aws
   dynamic.linux-extra-fast-amd64.region: us-east-1
@@ -76,7 +76,7 @@ data:
   dynamic.linux-extra-fast-amd64.max-instances: "10"
   dynamic.linux-extra-fast-amd64.disk: "200"
   # dynamic.linux-extra-fast-amd64.iops: "16000"
-  dynamic.linux-extra-fast-amd64.throughput: "1000"
+  # dynamic.linux-extra-fast-amd64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-aaabb475/production/components/multi-platform-controller/production/kustomize.out.yaml
207a208
>   dynamic.linux-extra-fast-amd64.throughput: "1000"
212a214
>   dynamic.linux-fast-amd64.iops: "16000"
218a221
>   dynamic.linux-fast-amd64.throughput: "1000" 
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
<h3>1: Staging changes from aaabb475 to 91b0ed52 on Wed Jun 26 06:54:28 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 975b05b6..cbe30aa7 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -61,8 +61,8 @@ data:
   dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-fast-amd64.max-instances: "10"
   dynamic.linux-fast-amd64.disk: "200"
-  dynamic.linux-fast-amd64.iops: "16000"
-  dynamic.linux-fast-amd64.throughput: "1000"
+  #  dynamic.linux-fast-amd64.iops: "16000"
+  #  dynamic.linux-fast-amd64.throughput: "1000"
 
   dynamic.linux-extra-fast-amd64.type: aws
   dynamic.linux-extra-fast-amd64.region: us-east-1
@@ -76,7 +76,7 @@ data:
   dynamic.linux-extra-fast-amd64.max-instances: "10"
   dynamic.linux-extra-fast-amd64.disk: "200"
   # dynamic.linux-extra-fast-amd64.iops: "16000"
-  dynamic.linux-extra-fast-amd64.throughput: "1000"
+  # dynamic.linux-extra-fast-amd64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1 
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
<h3>1: Development changes from aaabb475 to 91b0ed52 on Wed Jun 26 06:54:28 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 975b05b6..cbe30aa7 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -61,8 +61,8 @@ data:
   dynamic.linux-fast-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-fast-amd64.max-instances: "10"
   dynamic.linux-fast-amd64.disk: "200"
-  dynamic.linux-fast-amd64.iops: "16000"
-  dynamic.linux-fast-amd64.throughput: "1000"
+  #  dynamic.linux-fast-amd64.iops: "16000"
+  #  dynamic.linux-fast-amd64.throughput: "1000"
 
   dynamic.linux-extra-fast-amd64.type: aws
   dynamic.linux-extra-fast-amd64.region: us-east-1
@@ -76,7 +76,7 @@ data:
   dynamic.linux-extra-fast-amd64.max-instances: "10"
   dynamic.linux-extra-fast-amd64.disk: "200"
   # dynamic.linux-extra-fast-amd64.iops: "16000"
-  dynamic.linux-extra-fast-amd64.throughput: "1000"
+  # dynamic.linux-extra-fast-amd64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1 
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
<h3>2: Production changes from 20ac0750 to aaabb475 on Tue Jun 25 17:19:22 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3176c575..df5c461d 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
+  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0f443548..e09b76bf 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
+  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 20ac0750 to aaabb475 on Tue Jun 25 17:19:22 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3176c575..df5c461d 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
+  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0f443548..e09b76bf 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
+  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (76 lines)</summary>  

``` 
./commit-20ac0750/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
822a823,854
>   - deploymenttargetclaims
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - deploymenttargetclasses
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - deploymenttargets
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
824a857,858
>   - create
>   - delete
826a861,862
>   - patch
>   - update
830a867,872
>   - environments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
894a937,954
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
1014a1075
>   - snapshotenvironmentbindings
1395c1456
<         image: quay.io/redhat-appstudio/integration-service:60d590e7f217d831f6c16bb0ddce925c64c6ba41
---
>         image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
1486c1547
<             image: quay.io/redhat-appstudio/integration-service:60d590e7f217d831f6c16bb0ddce925c64c6ba41
---
>             image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef 
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
<h3>2: Development changes from 20ac0750 to aaabb475 on Tue Jun 25 17:19:22 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3176c575..df5c461d 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
+  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0f443548..e09b76bf 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=4d698c316347decc9907ffaae2959780a51e8fef
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4d698c316347decc9907ffaae2959780a51e8fef
+- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4d698c316347decc9907ffaae2959780a51e8fef
+  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (76 lines)</summary>  

``` 
./commit-20ac0750/development/components/integration/development/kustomize.out.yaml
822a823,854
>   - deploymenttargetclaims
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - deploymenttargetclasses
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - deploymenttargets
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
824a857,858
>   - create
>   - delete
826a861,862
>   - patch
>   - update
830a867,872
>   - environments/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
894a937,954
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
1014a1075
>   - snapshotenvironmentbindings
1393c1454
<         image: quay.io/redhat-appstudio/integration-service:60d590e7f217d831f6c16bb0ddce925c64c6ba41
---
>         image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef
1487c1548
<             image: quay.io/redhat-appstudio/integration-service:60d590e7f217d831f6c16bb0ddce925c64c6ba41
---
>             image: quay.io/redhat-appstudio/integration-service:4d698c316347decc9907ffaae2959780a51e8fef 
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
<h3>3: Production changes from da3b4316 to 20ac0750 on Tue Jun 25 16:25:44 2024 </h3>  
 
<details> 
<summary>Git Diff (128 lines)</summary>  

``` 
diff --git a/components/build-service/README.md b/components/build-service/README.md
index 3ddf59c5..529a6b0c 100644
--- a/components/build-service/README.md
+++ b/components/build-service/README.md
@@ -21,16 +21,16 @@ To try out a pre-configured, follow these steps.
 | Steps    |    |
 | ----------- | ----------- |
 | 1.  Create project for your pipelines execution. This can be run as any non-admin user (or admin)  and is needed to hold your execution pipelines.  |  oc new-project demo     |
-| 2.  Run build-deploy example with a quarkus app. | ./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-code-with-quarkus
+| 2.  Run build-deploy example with a quarkus app. | ./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-code-with-quarkus src/main/docker/Dockerfile.jvm.staged
 | 3.  View your build on the OpenShift Console under the pipelines page or view the logs via CLI. | `tkn pipelinerun logs`      |
 
 ## Tests via RHTAP
 
 To validate execution via RHTAP you can run `./hack/build/build-via-appstudio.sh` script which sets credentials and RHTAP application and components. Without parameters it creates example components.
-To build specific repository, pass its URL as argument as shown below:
+To build specific repository, pass its URL and path to repository's Dockerfile as arguments as shown below:
 
 ```
-./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-java-springboot-basic
+./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-java-springboot-basic docker/Dockerfile
 ```
 
 To enable PipelineAsCode integration you need to set `PIPELINESASCODE` env variable to `1` and also have to have set GitHub credentials in your `./hack/preview.env`.
@@ -40,7 +40,7 @@ Alternatively, to use GitHub webhook set `PAC_GITHUB_TOKEN` with [required permi
 Then run:
 
 ```
-PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov/devfile-sample-go-basic
+PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov/devfile-sample-go-basic docker/Dockerfile
 ```
 
 ### Change of default pipeline bundle
diff --git a/docs/development/deployment.md b/docs/development/deployment.md
index 876f3634..319fdfd0 100644
--- a/docs/development/deployment.md
+++ b/docs/development/deployment.md
@@ -184,7 +184,7 @@ access to all the repos you're going to create/fork into your org in the future.
 **Simple build:**
 
 * Fork <https://github.com/devfile-samples/devfile-sample-python-basic> into your GitHub organization.
-* Run `hack/build/build-via-appstudio.sh https://github.com/MY_STONESOUP_ORG/devfile-sample-python-basic`
+* Run `hack/build/build-via-appstudio.sh https://github.com/MY_STONESOUP_ORG/devfile-sample-python-basic <path-to-repository-dockerfile>`
 
 The script will create a test application and a component for you:
 
diff --git a/hack/build/build-via-appstudio.sh b/hack/build/build-via-appstudio.sh
index 87e26520..62625254 100755
--- a/hack/build/build-via-appstudio.sh
+++ b/hack/build/build-via-appstudio.sh
@@ -2,36 +2,37 @@
 SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
 
 COMPONENT=$1
+PATH_TO_DOCKERFILE=$2
+[ -z "$MY_GITHUB_TOKEN" ] && echo "error: MY_GITHUB_TOKEN env var is not exported" && exit 1
 
 # Configure namespace
 $SCRIPTDIR/setup-namespace.sh
 
 oc delete --ignore-not-found -f $SCRIPTDIR/templates/application.yaml
 oc create -f $SCRIPTDIR/templates/application.yaml
-if ! oc wait --for=condition=Created application/test-application; then
-  echo "Application was not created sucessfully, check:"
-  echo "oc get applications test-application -o yaml"
-  exit 1
-fi
+
+function create-secret {
+  yq e "(.stringData.password=\"$MY_GITHUB_TOKEN\")" $SCRIPTDIR/templates/secret.yaml | oc apply -f-
+}
 
 function create-component {
   GIT_URL=$1
+  PATH_TO_DOCKERFILE=$2
   REPO=$(echo $GIT_URL | grep -o '[^/]*$')
   NAME=${REPO%%.git}
   oc delete --ignore-not-found component $NAME
   [ -n "$SKIP_INITIAL_CHECKS" ] && ANNOTATE_SKIP_INITIAL_CHECKS='| (.metadata.annotations.skip-initial-checks="true")'
   [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."build.appstudio.openshift.io/request"="configure-pac")'
-  yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.containerImage=\"$IMAGE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
+  yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.source.git.dockerfileUrl=\"$PATH_TO_DOCKERFILE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
 }
 
-echo Git Repo created:
-oc get application/test-application -o jsonpath='{.status.devfile}' | grep appModelRepository.url | cut -f2- -d':'
+create-secret
 
 if [ -z "$COMPONENT" ]; then
-  create-component https://github.com/devfile-samples/devfile-sample-java-springboot-basic
-  create-component https://github.com/devfile-samples/devfile-sample-code-with-quarkus
-  create-component https://github.com/devfile-samples/devfile-sample-python-basic
+  create-component https://github.com/devfile-samples/devfile-sample-java-springboot-basic docker/Dockerfile
+  create-component https://github.com/devfile-samples/devfile-sample-code-with-quarkus src/main/docker/Dockerfile.jvm.staged
+  create-component https://github.com/devfile-samples/devfile-sample-python-basic docker/Dockerfile
 else
-  create-component $COMPONENT
+  create-component $COMPONENT $PATH_TO_DOCKERFILE
 fi
 echo "Run this to show running builds: tkn pr list"
diff --git a/hack/build/templates/component.yaml b/hack/build/templates/component.yaml
index f5a11724..4c7e8b2b 100644
--- a/hack/build/templates/component.yaml
+++ b/hack/build/templates/component.yaml
@@ -9,5 +9,5 @@ spec:
   application: test-application
   source:
     git:
+      dockerfileUrl:
       url:
-  containerImage:
diff --git a/hack/build/templates/secret.yaml b/hack/build/templates/secret.yaml
new file mode 100644
index 00000000..37da7e7e
--- /dev/null
+++ b/hack/build/templates/secret.yaml
@@ -0,0 +1,10 @@
+apiVersion: v1
+kind: Secret
+metadata:
+  name: test-scm-secret
+  labels:
+    appstudio.redhat.com/credentials: scm
+    appstudio.redhat.com/scm.host: github.com
+type: kubernetes.io/basic-auth
+stringData:
+  password: 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from da3b4316 to 20ac0750 on Tue Jun 25 16:25:44 2024 </h3>  
 
<details> 
<summary>Git Diff (128 lines)</summary>  

``` 
diff --git a/components/build-service/README.md b/components/build-service/README.md
index 3ddf59c5..529a6b0c 100644
--- a/components/build-service/README.md
+++ b/components/build-service/README.md
@@ -21,16 +21,16 @@ To try out a pre-configured, follow these steps.
 | Steps    |    |
 | ----------- | ----------- |
 | 1.  Create project for your pipelines execution. This can be run as any non-admin user (or admin)  and is needed to hold your execution pipelines.  |  oc new-project demo     |
-| 2.  Run build-deploy example with a quarkus app. | ./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-code-with-quarkus
+| 2.  Run build-deploy example with a quarkus app. | ./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-code-with-quarkus src/main/docker/Dockerfile.jvm.staged
 | 3.  View your build on the OpenShift Console under the pipelines page or view the logs via CLI. | `tkn pipelinerun logs`      |
 
 ## Tests via RHTAP
 
 To validate execution via RHTAP you can run `./hack/build/build-via-appstudio.sh` script which sets credentials and RHTAP application and components. Without parameters it creates example components.
-To build specific repository, pass its URL as argument as shown below:
+To build specific repository, pass its URL and path to repository's Dockerfile as arguments as shown below:
 
 ```
-./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-java-springboot-basic
+./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-java-springboot-basic docker/Dockerfile
 ```
 
 To enable PipelineAsCode integration you need to set `PIPELINESASCODE` env variable to `1` and also have to have set GitHub credentials in your `./hack/preview.env`.
@@ -40,7 +40,7 @@ Alternatively, to use GitHub webhook set `PAC_GITHUB_TOKEN` with [required permi
 Then run:
 
 ```
-PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov/devfile-sample-go-basic
+PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov/devfile-sample-go-basic docker/Dockerfile
 ```
 
 ### Change of default pipeline bundle
diff --git a/docs/development/deployment.md b/docs/development/deployment.md
index 876f3634..319fdfd0 100644
--- a/docs/development/deployment.md
+++ b/docs/development/deployment.md
@@ -184,7 +184,7 @@ access to all the repos you're going to create/fork into your org in the future.
 **Simple build:**
 
 * Fork <https://github.com/devfile-samples/devfile-sample-python-basic> into your GitHub organization.
-* Run `hack/build/build-via-appstudio.sh https://github.com/MY_STONESOUP_ORG/devfile-sample-python-basic`
+* Run `hack/build/build-via-appstudio.sh https://github.com/MY_STONESOUP_ORG/devfile-sample-python-basic <path-to-repository-dockerfile>`
 
 The script will create a test application and a component for you:
 
diff --git a/hack/build/build-via-appstudio.sh b/hack/build/build-via-appstudio.sh
index 87e26520..62625254 100755
--- a/hack/build/build-via-appstudio.sh
+++ b/hack/build/build-via-appstudio.sh
@@ -2,36 +2,37 @@
 SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
 
 COMPONENT=$1
+PATH_TO_DOCKERFILE=$2
+[ -z "$MY_GITHUB_TOKEN" ] && echo "error: MY_GITHUB_TOKEN env var is not exported" && exit 1
 
 # Configure namespace
 $SCRIPTDIR/setup-namespace.sh
 
 oc delete --ignore-not-found -f $SCRIPTDIR/templates/application.yaml
 oc create -f $SCRIPTDIR/templates/application.yaml
-if ! oc wait --for=condition=Created application/test-application; then
-  echo "Application was not created sucessfully, check:"
-  echo "oc get applications test-application -o yaml"
-  exit 1
-fi
+
+function create-secret {
+  yq e "(.stringData.password=\"$MY_GITHUB_TOKEN\")" $SCRIPTDIR/templates/secret.yaml | oc apply -f-
+}
 
 function create-component {
   GIT_URL=$1
+  PATH_TO_DOCKERFILE=$2
   REPO=$(echo $GIT_URL | grep -o '[^/]*$')
   NAME=${REPO%%.git}
   oc delete --ignore-not-found component $NAME
   [ -n "$SKIP_INITIAL_CHECKS" ] && ANNOTATE_SKIP_INITIAL_CHECKS='| (.metadata.annotations.skip-initial-checks="true")'
   [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."build.appstudio.openshift.io/request"="configure-pac")'
-  yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.containerImage=\"$IMAGE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
+  yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.source.git.dockerfileUrl=\"$PATH_TO_DOCKERFILE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
 }
 
-echo Git Repo created:
-oc get application/test-application -o jsonpath='{.status.devfile}' | grep appModelRepository.url | cut -f2- -d':'
+create-secret
 
 if [ -z "$COMPONENT" ]; then
-  create-component https://github.com/devfile-samples/devfile-sample-java-springboot-basic
-  create-component https://github.com/devfile-samples/devfile-sample-code-with-quarkus
-  create-component https://github.com/devfile-samples/devfile-sample-python-basic
+  create-component https://github.com/devfile-samples/devfile-sample-java-springboot-basic docker/Dockerfile
+  create-component https://github.com/devfile-samples/devfile-sample-code-with-quarkus src/main/docker/Dockerfile.jvm.staged
+  create-component https://github.com/devfile-samples/devfile-sample-python-basic docker/Dockerfile
 else
-  create-component $COMPONENT
+  create-component $COMPONENT $PATH_TO_DOCKERFILE
 fi
 echo "Run this to show running builds: tkn pr list"
diff --git a/hack/build/templates/component.yaml b/hack/build/templates/component.yaml
index f5a11724..4c7e8b2b 100644
--- a/hack/build/templates/component.yaml
+++ b/hack/build/templates/component.yaml
@@ -9,5 +9,5 @@ spec:
   application: test-application
   source:
     git:
+      dockerfileUrl:
       url:
-  containerImage:
diff --git a/hack/build/templates/secret.yaml b/hack/build/templates/secret.yaml
new file mode 100644
index 00000000..37da7e7e
--- /dev/null
+++ b/hack/build/templates/secret.yaml
@@ -0,0 +1,10 @@
+apiVersion: v1
+kind: Secret
+metadata:
+  name: test-scm-secret
+  labels:
+    appstudio.redhat.com/credentials: scm
+    appstudio.redhat.com/scm.host: github.com
+type: kubernetes.io/basic-auth
+stringData:
+  password: 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from da3b4316 to 20ac0750 on Tue Jun 25 16:25:44 2024 </h3>  
 
<details> 
<summary>Git Diff (128 lines)</summary>  

``` 
diff --git a/components/build-service/README.md b/components/build-service/README.md
index 3ddf59c5..529a6b0c 100644
--- a/components/build-service/README.md
+++ b/components/build-service/README.md
@@ -21,16 +21,16 @@ To try out a pre-configured, follow these steps.
 | Steps    |    |
 | ----------- | ----------- |
 | 1.  Create project for your pipelines execution. This can be run as any non-admin user (or admin)  and is needed to hold your execution pipelines.  |  oc new-project demo     |
-| 2.  Run build-deploy example with a quarkus app. | ./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-code-with-quarkus
+| 2.  Run build-deploy example with a quarkus app. | ./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-code-with-quarkus src/main/docker/Dockerfile.jvm.staged
 | 3.  View your build on the OpenShift Console under the pipelines page or view the logs via CLI. | `tkn pipelinerun logs`      |
 
 ## Tests via RHTAP
 
 To validate execution via RHTAP you can run `./hack/build/build-via-appstudio.sh` script which sets credentials and RHTAP application and components. Without parameters it creates example components.
-To build specific repository, pass its URL as argument as shown below:
+To build specific repository, pass its URL and path to repository's Dockerfile as arguments as shown below:
 
 ```
-./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-java-springboot-basic
+./hack/build/build-via-appstudio.sh https://github.com/devfile-samples/devfile-sample-java-springboot-basic docker/Dockerfile
 ```
 
 To enable PipelineAsCode integration you need to set `PIPELINESASCODE` env variable to `1` and also have to have set GitHub credentials in your `./hack/preview.env`.
@@ -40,7 +40,7 @@ Alternatively, to use GitHub webhook set `PAC_GITHUB_TOKEN` with [required permi
 Then run:
 
 ```
-PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov/devfile-sample-go-basic
+PIPELINESASCODE=1 ./hack/build/build-via-appstudio.sh https://github.com/Michkov/devfile-sample-go-basic docker/Dockerfile
 ```
 
 ### Change of default pipeline bundle
diff --git a/docs/development/deployment.md b/docs/development/deployment.md
index 876f3634..319fdfd0 100644
--- a/docs/development/deployment.md
+++ b/docs/development/deployment.md
@@ -184,7 +184,7 @@ access to all the repos you're going to create/fork into your org in the future.
 **Simple build:**
 
 * Fork <https://github.com/devfile-samples/devfile-sample-python-basic> into your GitHub organization.
-* Run `hack/build/build-via-appstudio.sh https://github.com/MY_STONESOUP_ORG/devfile-sample-python-basic`
+* Run `hack/build/build-via-appstudio.sh https://github.com/MY_STONESOUP_ORG/devfile-sample-python-basic <path-to-repository-dockerfile>`
 
 The script will create a test application and a component for you:
 
diff --git a/hack/build/build-via-appstudio.sh b/hack/build/build-via-appstudio.sh
index 87e26520..62625254 100755
--- a/hack/build/build-via-appstudio.sh
+++ b/hack/build/build-via-appstudio.sh
@@ -2,36 +2,37 @@
 SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
 
 COMPONENT=$1
+PATH_TO_DOCKERFILE=$2
+[ -z "$MY_GITHUB_TOKEN" ] && echo "error: MY_GITHUB_TOKEN env var is not exported" && exit 1
 
 # Configure namespace
 $SCRIPTDIR/setup-namespace.sh
 
 oc delete --ignore-not-found -f $SCRIPTDIR/templates/application.yaml
 oc create -f $SCRIPTDIR/templates/application.yaml
-if ! oc wait --for=condition=Created application/test-application; then
-  echo "Application was not created sucessfully, check:"
-  echo "oc get applications test-application -o yaml"
-  exit 1
-fi
+
+function create-secret {
+  yq e "(.stringData.password=\"$MY_GITHUB_TOKEN\")" $SCRIPTDIR/templates/secret.yaml | oc apply -f-
+}
 
 function create-component {
   GIT_URL=$1
+  PATH_TO_DOCKERFILE=$2
   REPO=$(echo $GIT_URL | grep -o '[^/]*$')
   NAME=${REPO%%.git}
   oc delete --ignore-not-found component $NAME
   [ -n "$SKIP_INITIAL_CHECKS" ] && ANNOTATE_SKIP_INITIAL_CHECKS='| (.metadata.annotations.skip-initial-checks="true")'
   [ -n "$ENABLE_PAC" ] && ANNOTATE_PAC_PROVISION='| (.metadata.annotations."build.appstudio.openshift.io/request"="configure-pac")'
-  yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.containerImage=\"$IMAGE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
+  yq e "(.metadata.name=\"$NAME\") | (.spec.componentName=\"$NAME\") | (.spec.source.git.url=\"$GIT_URL\") | (.spec.source.git.dockerfileUrl=\"$PATH_TO_DOCKERFILE\") $ANNOTATE_PAC_PROVISION $ANNOTATE_SKIP_INITIAL_CHECKS" $SCRIPTDIR/templates/component.yaml | oc apply -f-
 }
 
-echo Git Repo created:
-oc get application/test-application -o jsonpath='{.status.devfile}' | grep appModelRepository.url | cut -f2- -d':'
+create-secret
 
 if [ -z "$COMPONENT" ]; then
-  create-component https://github.com/devfile-samples/devfile-sample-java-springboot-basic
-  create-component https://github.com/devfile-samples/devfile-sample-code-with-quarkus
-  create-component https://github.com/devfile-samples/devfile-sample-python-basic
+  create-component https://github.com/devfile-samples/devfile-sample-java-springboot-basic docker/Dockerfile
+  create-component https://github.com/devfile-samples/devfile-sample-code-with-quarkus src/main/docker/Dockerfile.jvm.staged
+  create-component https://github.com/devfile-samples/devfile-sample-python-basic docker/Dockerfile
 else
-  create-component $COMPONENT
+  create-component $COMPONENT $PATH_TO_DOCKERFILE
 fi
 echo "Run this to show running builds: tkn pr list"
diff --git a/hack/build/templates/component.yaml b/hack/build/templates/component.yaml
index f5a11724..4c7e8b2b 100644
--- a/hack/build/templates/component.yaml
+++ b/hack/build/templates/component.yaml
@@ -9,5 +9,5 @@ spec:
   application: test-application
   source:
     git:
+      dockerfileUrl:
       url:
-  containerImage:
diff --git a/hack/build/templates/secret.yaml b/hack/build/templates/secret.yaml
new file mode 100644
index 00000000..37da7e7e
--- /dev/null
+++ b/hack/build/templates/secret.yaml
@@ -0,0 +1,10 @@
+apiVersion: v1
+kind: Secret
+metadata:
+  name: test-scm-secret
+  labels:
+    appstudio.redhat.com/credentials: scm
+    appstudio.redhat.com/scm.host: github.com
+type: kubernetes.io/basic-auth
+stringData:
+  password: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 717549ac to da3b4316 on Tue Jun 25 15:30:55 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 2cfb3cb9..60459450 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,3 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..3fa41ce9
--- /dev/null
+++ b/components/mintmaker/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2048Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-717549ac/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
541c541
<             memory: 2048Mi
---
>             memory: 512Mi
543c543
<             cpu: 100m
---
>             cpu: 10m
./commit-717549ac/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
541c541
<             memory: 2048Mi
---
>             memory: 512Mi
543c543
<             cpu: 100m
---
>             cpu: 10m 
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
<h3>4: Staging changes from 717549ac to da3b4316 on Tue Jun 25 15:30:55 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 2cfb3cb9..60459450 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,3 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..3fa41ce9
--- /dev/null
+++ b/components/mintmaker/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2048Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi 
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
<h3>4: Development changes from 717549ac to da3b4316 on Tue Jun 25 15:30:55 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 2cfb3cb9..60459450 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,3 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..3fa41ce9
--- /dev/null
+++ b/components/mintmaker/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2048Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi 
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
