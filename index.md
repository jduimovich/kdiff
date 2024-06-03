# kustomize changes tracked by commits 
### This file generated at Mon Jun  3 20:08:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c992601e to d5b91a2f on Mon Jun 3 18:18:48 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 68432c50..0df270fa 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-c992601e/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
800a801
>   - delete
1456c1457
<         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
1547c1548
<             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
./commit-c992601e/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
800a801
>   - delete
1456c1457
<         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
1547c1548
<             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from c992601e to d5b91a2f on Mon Jun 3 18:18:48 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 68432c50..0df270fa 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from c992601e to d5b91a2f on Mon Jun 3 18:18:48 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 68432c50..0df270fa 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 50342174 to c992601e on Mon Jun 3 17:04:31 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ec6252e2..b4a8f983 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a3130667..28c422d0 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 47b632ad..5381b1cf 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index bdc1c000..6704a8c1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-50342174/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1885d1884
<     enable-step-actions: true
./commit-50342174/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1885d1884
<     enable-step-actions: true
./commit-50342174/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1885d1884
<     enable-step-actions: true
./commit-50342174/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1879d1878
<     enable-step-actions: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 50342174 to c992601e on Mon Jun 3 17:04:31 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ec6252e2..b4a8f983 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a3130667..28c422d0 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 47b632ad..5381b1cf 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index bdc1c000..6704a8c1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
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
<h3>2: Development changes from 50342174 to c992601e on Mon Jun 3 17:04:31 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ec6252e2..b4a8f983 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a3130667..28c422d0 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 47b632ad..5381b1cf 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1883,6 +1883,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index bdc1c000..6704a8c1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
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
<h3>3: Production changes from 70142577 to 50342174 on Mon Jun 3 16:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (388 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
index 4a3973b5..576736fa 100644
--- a/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
@@ -27,6 +27,12 @@ spec:
       destination:
         namespace: cluster-as-a-service
         server: "{{server}}"
+      ignoreDifferences:
+        # Ignore generators applied by the CaaS operator to cluster template AppSets
+        - group: argoproj.io
+          kind: ApplicationSet
+          jqPathExpressions:
+            - .spec.generators
       syncPolicy:
         automated:
           prune: true
diff --git a/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
index b897292f..ec0ef130 100644
--- a/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
+++ b/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
@@ -8,3 +8,7 @@
       - key: app.kubernetes.io/name
         operator: NotIn
         values: [argocd-default-cluster-config]
+      # Prevent clusters provisioned by the cluster-as-a-service component from being used in
+      # an AppSet cluster generator.
+      - key: clustertemplateinstance.openshift.io/name
+        operator: DoesNotExist
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 8cd62c0c..74c0a289 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -2,7 +2,9 @@
 apiVersion: argoproj.io/v1beta1
 kind: ArgoCD
 metadata:
- name: openshift-gitops
- namespace: openshift-gitops
+  name: openshift-gitops
+  namespace: openshift-gitops
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
- resourceTrackingMethod: annotation
+  resourceTrackingMethod: annotation
diff --git a/components/cluster-as-a-service/base/cluster-aas-operator.yaml b/components/cluster-as-a-service/base/cluster-aas-operator.yaml
new file mode 100644
index 00000000..d459bcb0
--- /dev/null
+++ b/components/cluster-as-a-service/base/cluster-aas-operator.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: caas-operator
+  # OLM dependency resolution forces us to install the CaaS operator in the same namespace as the
+  # openshift-gitops operator. Otherwise, OLM will resolve and install the ArgoCD operator from the
+  # community catalog.
+  namespace: openshift-operators
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: alpha
+  installPlanApproval: Automatic
+  name: cluster-aas-operator
+  source: community-operators
+  sourceNamespace: openshift-marketplace
+
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: Config
+metadata:
+  name: config
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  argoCDNamespace: openshift-gitops
+  uiEnabled: false
diff --git a/components/cluster-as-a-service/base/clustertemplatequotas.yaml b/components/cluster-as-a-service/base/clustertemplatequotas.yaml
new file mode 100644
index 00000000..f2de2d95
--- /dev/null
+++ b/components/cluster-as-a-service/base/clustertemplatequotas.yaml
@@ -0,0 +1,13 @@
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: ClusterTemplateQuota
+metadata:
+  name: quota
+  namespace: clusters
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  budget: 100
+  allowedTemplates:
+    - name: hypershift-aws-cluster
+      deleteAfter: 2h
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
new file mode 100644
index 00000000..c3108c0c
--- /dev/null
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -0,0 +1,53 @@
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: ClusterTemplate
+metadata:
+  name: hypershift-aws-cluster
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  clusterDefinition: hypershift-aws-cluster
+  skipClusterRegistration: true
+  cost: 1
+
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: hypershift-aws-cluster
+  namespace: openshift-gitops
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  generators:
+    - {}
+  template:
+    metadata:
+      # Workaround for https://github.com/argoproj/argo-cd/issues/17181
+      finalizers:
+        - resources-finalizer.argocd.argoproj.io
+        - post-delete-finalizer.argocd.argoproj.io
+        - post-delete-finalizer.argocd.argoproj.io/cleanup
+    spec:
+      destination:
+        namespace: clusters
+        server: '{{ url }}'
+      project: default
+      source:
+        chart: hypershift-aws-template
+        repoURL: https://konflux-ci.dev/cluster-template-charts/
+        targetRevision: 0.0.2
+        helm:
+          parameters:
+            - name: region
+              value: us-east-1
+            - name: secret
+              value: hypershift
+            - name: serviceAccount
+              value: cluster-provisioner
+            - name: hypershiftImageTag
+              value: "4.14"
+            - name: nodePoolReplicas
+              value: "3"
+      syncPolicy:
+        automated: {}
diff --git a/components/cluster-as-a-service/base/kustomization.yaml b/components/cluster-as-a-service/base/kustomization.yaml
index 58afbe87..6b590b25 100644
--- a/components/cluster-as-a-service/base/kustomization.yaml
+++ b/components/cluster-as-a-service/base/kustomization.yaml
@@ -3,3 +3,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - argocd.yaml
+  - multicluster-engine.yaml
+  - cluster-aas-operator.yaml
+  - namespaces.yaml
+  - rbac.yaml
+  - clustertemplatequotas.yaml
+  - clustertemplates.yaml
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
new file mode 100644
index 00000000..5b4f4465
--- /dev/null
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: multicluster-engine
+
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: multicluster-engine
+  namespace: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+spec:
+  targetNamespaces:
+    - multicluster-engine
+
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: multicluster-engine
+  namespace: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: stable-2.5
+  installPlanApproval: Automatic
+  name: multicluster-engine
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+
+---
+apiVersion: multicluster.openshift.io/v1
+kind: MultiClusterEngine
+metadata:
+  name: engine
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/cluster-as-a-service/base/namespaces.yaml b/components/cluster-as-a-service/base/namespaces.yaml
new file mode 100644
index 00000000..f429a858
--- /dev/null
+++ b/components/cluster-as-a-service/base/namespaces.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: clusters
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
diff --git a/components/cluster-as-a-service/base/rbac.yaml b/components/cluster-as-a-service/base/rbac.yaml
new file mode 100644
index 00000000..7b661373
--- /dev/null
+++ b/components/cluster-as-a-service/base/rbac.yaml
@@ -0,0 +1,125 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: cluster-provisioner
+  namespace: clusters
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: cluster-provisioner
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - "*"
+- apiGroups:
+  - hypershift.openshift.io
+  resources:
+  - hostedclusters
+  - nodepools
+  verbs:
+  - "*"
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplateinstances
+  verbs:
+  - "*"
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplates
+  verbs:
+  - get
+  - list
+
+---
+# Allow the cluster-provisioner SA in the clusters namespace to manage clusters
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: cluster-provisioner-rb
+  namespace: clusters
+subjects:
+- kind: ServiceAccount
+  name: cluster-provisioner
+  namespace: clusters
+roleRef:
+  kind: ClusterRole
+  name: cluster-provisioner
+  apiGroup: rbac.authorization.k8s.io
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: oidc-configmap-reader
+  namespace: kube-public
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  resourceNames:
+  - oidc-storage-provider-s3-config
+  verbs:
+  - get
+
+---
+# Allow all service accounts to read the OIDC bucket configuration
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: oidc-configmap-reader-rb
+  namespace: kube-public
+subjects:
+- kind: Group
+  name: system:serviceaccounts
+  apiGroup: rbac.authorization.k8s.io
+roleRef:
+  kind: Role
+  name: oidc-configmap-reader
+  apiGroup: rbac.authorization.k8s.io
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: supported-versions-reader
+  namespace: hypershift
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  resourceNames:
+  - supported-versions
+  verbs:
+  - get
+
+---
+# Allow all authenticated users to read the supported hypershift versions
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: supported-versions-reader-rb
+  namespace: hypershift
+subjects:
+- kind: Group
+  name: system:authenticated
+  apiGroup: rbac.authorization.k8s.io
+roleRef:
+  kind: Role
+  name: supported-versions-reader
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/cluster-as-a-service/development/add-base-domain-param.yaml b/components/cluster-as-a-service/development/add-base-domain-param.yaml
new file mode 100644
index 00000000..d5459a58
--- /dev/null
+++ b/components/cluster-as-a-service/development/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: eaasdemo.com
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 736651a7..2d374f0d 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -3,3 +3,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (256 lines)</summary>  

``` 
./commit-70142577/production/components/cluster-as-a-service/production/kustomize.out.yaml
1,48d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: clusters
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   name: multicluster-engine
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: cluster-provisioner
<   namespace: clusters
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: supported-versions-reader
<   namespace: hypershift
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - supported-versions
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: oidc-configmap-reader
<   namespace: kube-public
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - oidc-storage-provider-s3-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
93,172d44
< kind: ClusterRole
< metadata:
<   name: cluster-provisioner
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - '*'
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - hostedclusters
<   - nodepools
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplateinstances
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   verbs:
<   - get
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: cluster-provisioner-rb
<   namespace: clusters
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: cluster-provisioner
< subjects:
< - kind: ServiceAccount
<   name: cluster-provisioner
<   namespace: clusters
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: supported-versions-reader-rb
<   namespace: hypershift
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: supported-versions-reader
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: oidc-configmap-reader-rb
<   namespace: kube-public
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: oidc-configmap-reader
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts
< ---
< apiVersion: rbac.authorization.k8s.io/v1
198,237d69
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: hypershift-aws-cluster
<   namespace: openshift-gitops
< spec:
<   generators:
<   - {}
<   template:
<     metadata:
<       finalizers:
<       - resources-finalizer.argocd.argoproj.io
<       - post-delete-finalizer.argocd.argoproj.io
<       - post-delete-finalizer.argocd.argoproj.io/cleanup
<     spec:
<       destination:
<         namespace: clusters
<         server: '{{ url }}'
<       project: default
<       source:
<         chart: hypershift-aws-template
<         helm:
<           parameters:
<           - name: region
<             value: us-east-1
<           - name: secret
<             value: hypershift
<           - name: serviceAccount
<             value: cluster-provisioner
<           - name: hypershiftImageTag
<             value: "4.14"
<           - name: nodePoolReplicas
<             value: "3"
<         repoURL: https://konflux-ci.dev/cluster-template-charts/
<         targetRevision: 0.0.2
<       syncPolicy:
<         automated: {}
< ---
241,242d72
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
247,326d76
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: ClusterTemplate
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: hypershift-aws-cluster
< spec:
<   clusterDefinition: hypershift-aws-cluster
<   cost: 1
<   skipClusterRegistration: true
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: ClusterTemplateQuota
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: quota
<   namespace: clusters
< spec:
<   allowedTemplates:
<   - deleteAfter: 2h
<     name: hypershift-aws-cluster
<   budget: 100
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: Config
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: config
< spec:
<   argoCDNamespace: openshift-gitops
<   uiEnabled: false
< ---
< apiVersion: multicluster.openshift.io/v1
< kind: MultiClusterEngine
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: engine
< ---
< apiVersion: operators.coreos.com/v1
< kind: OperatorGroup
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-2"
<   name: multicluster-engine
<   namespace: multicluster-engine
< spec:
<   targetNamespaces:
<   - multicluster-engine
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-1"
<   name: multicluster-engine
<   namespace: multicluster-engine
< spec:
<   channel: stable-2.5
<   installPlanApproval: Automatic
<   name: multicluster-engine
<   source: redhat-operators
<   sourceNamespace: openshift-marketplace
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-1"
<   name: caas-operator
<   namespace: openshift-operators
< spec:
<   channel: alpha
<   installPlanApproval: Automatic
<   name: cluster-aas-operator
<   source: community-operators
<   sourceNamespace: openshift-marketplace 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 70142577 to 50342174 on Mon Jun 3 16:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (388 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
index 4a3973b5..576736fa 100644
--- a/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
@@ -27,6 +27,12 @@ spec:
       destination:
         namespace: cluster-as-a-service
         server: "{{server}}"
+      ignoreDifferences:
+        # Ignore generators applied by the CaaS operator to cluster template AppSets
+        - group: argoproj.io
+          kind: ApplicationSet
+          jqPathExpressions:
+            - .spec.generators
       syncPolicy:
         automated:
           prune: true
diff --git a/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
index b897292f..ec0ef130 100644
--- a/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
+++ b/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
@@ -8,3 +8,7 @@
       - key: app.kubernetes.io/name
         operator: NotIn
         values: [argocd-default-cluster-config]
+      # Prevent clusters provisioned by the cluster-as-a-service component from being used in
+      # an AppSet cluster generator.
+      - key: clustertemplateinstance.openshift.io/name
+        operator: DoesNotExist
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 8cd62c0c..74c0a289 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -2,7 +2,9 @@
 apiVersion: argoproj.io/v1beta1
 kind: ArgoCD
 metadata:
- name: openshift-gitops
- namespace: openshift-gitops
+  name: openshift-gitops
+  namespace: openshift-gitops
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
- resourceTrackingMethod: annotation
+  resourceTrackingMethod: annotation
diff --git a/components/cluster-as-a-service/base/cluster-aas-operator.yaml b/components/cluster-as-a-service/base/cluster-aas-operator.yaml
new file mode 100644
index 00000000..d459bcb0
--- /dev/null
+++ b/components/cluster-as-a-service/base/cluster-aas-operator.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: caas-operator
+  # OLM dependency resolution forces us to install the CaaS operator in the same namespace as the
+  # openshift-gitops operator. Otherwise, OLM will resolve and install the ArgoCD operator from the
+  # community catalog.
+  namespace: openshift-operators
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: alpha
+  installPlanApproval: Automatic
+  name: cluster-aas-operator
+  source: community-operators
+  sourceNamespace: openshift-marketplace
+
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: Config
+metadata:
+  name: config
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  argoCDNamespace: openshift-gitops
+  uiEnabled: false
diff --git a/components/cluster-as-a-service/base/clustertemplatequotas.yaml b/components/cluster-as-a-service/base/clustertemplatequotas.yaml
new file mode 100644
index 00000000..f2de2d95
--- /dev/null
+++ b/components/cluster-as-a-service/base/clustertemplatequotas.yaml
@@ -0,0 +1,13 @@
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: ClusterTemplateQuota
+metadata:
+  name: quota
+  namespace: clusters
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  budget: 100
+  allowedTemplates:
+    - name: hypershift-aws-cluster
+      deleteAfter: 2h
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
new file mode 100644
index 00000000..c3108c0c
--- /dev/null
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -0,0 +1,53 @@
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: ClusterTemplate
+metadata:
+  name: hypershift-aws-cluster
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  clusterDefinition: hypershift-aws-cluster
+  skipClusterRegistration: true
+  cost: 1
+
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: hypershift-aws-cluster
+  namespace: openshift-gitops
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  generators:
+    - {}
+  template:
+    metadata:
+      # Workaround for https://github.com/argoproj/argo-cd/issues/17181
+      finalizers:
+        - resources-finalizer.argocd.argoproj.io
+        - post-delete-finalizer.argocd.argoproj.io
+        - post-delete-finalizer.argocd.argoproj.io/cleanup
+    spec:
+      destination:
+        namespace: clusters
+        server: '{{ url }}'
+      project: default
+      source:
+        chart: hypershift-aws-template
+        repoURL: https://konflux-ci.dev/cluster-template-charts/
+        targetRevision: 0.0.2
+        helm:
+          parameters:
+            - name: region
+              value: us-east-1
+            - name: secret
+              value: hypershift
+            - name: serviceAccount
+              value: cluster-provisioner
+            - name: hypershiftImageTag
+              value: "4.14"
+            - name: nodePoolReplicas
+              value: "3"
+      syncPolicy:
+        automated: {}
diff --git a/components/cluster-as-a-service/base/kustomization.yaml b/components/cluster-as-a-service/base/kustomization.yaml
index 58afbe87..6b590b25 100644
--- a/components/cluster-as-a-service/base/kustomization.yaml
+++ b/components/cluster-as-a-service/base/kustomization.yaml
@@ -3,3 +3,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - argocd.yaml
+  - multicluster-engine.yaml
+  - cluster-aas-operator.yaml
+  - namespaces.yaml
+  - rbac.yaml
+  - clustertemplatequotas.yaml
+  - clustertemplates.yaml
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
new file mode 100644
index 00000000..5b4f4465
--- /dev/null
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: multicluster-engine
+
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: multicluster-engine
+  namespace: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+spec:
+  targetNamespaces:
+    - multicluster-engine
+
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: multicluster-engine
+  namespace: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: stable-2.5
+  installPlanApproval: Automatic
+  name: multicluster-engine
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+
+---
+apiVersion: multicluster.openshift.io/v1
+kind: MultiClusterEngine
+metadata:
+  name: engine
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/cluster-as-a-service/base/namespaces.yaml b/components/cluster-as-a-service/base/namespaces.yaml
new file mode 100644
index 00000000..f429a858
--- /dev/null
+++ b/components/cluster-as-a-service/base/namespaces.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: clusters
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
diff --git a/components/cluster-as-a-service/base/rbac.yaml b/components/cluster-as-a-service/base/rbac.yaml
new file mode 100644
index 00000000..7b661373
--- /dev/null
+++ b/components/cluster-as-a-service/base/rbac.yaml
@@ -0,0 +1,125 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: cluster-provisioner
+  namespace: clusters
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: cluster-provisioner
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - "*"
+- apiGroups:
+  - hypershift.openshift.io
+  resources:
+  - hostedclusters
+  - nodepools
+  verbs:
+  - "*"
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplateinstances
+  verbs:
+  - "*"
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplates
+  verbs:
+  - get
+  - list
+
+---
+# Allow the cluster-provisioner SA in the clusters namespace to manage clusters
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: cluster-provisioner-rb
+  namespace: clusters
+subjects:
+- kind: ServiceAccount
+  name: cluster-provisioner
+  namespace: clusters
+roleRef:
+  kind: ClusterRole
+  name: cluster-provisioner
+  apiGroup: rbac.authorization.k8s.io
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: oidc-configmap-reader
+  namespace: kube-public
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  resourceNames:
+  - oidc-storage-provider-s3-config
+  verbs:
+  - get
+
+---
+# Allow all service accounts to read the OIDC bucket configuration
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: oidc-configmap-reader-rb
+  namespace: kube-public
+subjects:
+- kind: Group
+  name: system:serviceaccounts
+  apiGroup: rbac.authorization.k8s.io
+roleRef:
+  kind: Role
+  name: oidc-configmap-reader
+  apiGroup: rbac.authorization.k8s.io
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: supported-versions-reader
+  namespace: hypershift
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  resourceNames:
+  - supported-versions
+  verbs:
+  - get
+
+---
+# Allow all authenticated users to read the supported hypershift versions
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: supported-versions-reader-rb
+  namespace: hypershift
+subjects:
+- kind: Group
+  name: system:authenticated
+  apiGroup: rbac.authorization.k8s.io
+roleRef:
+  kind: Role
+  name: supported-versions-reader
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/cluster-as-a-service/development/add-base-domain-param.yaml b/components/cluster-as-a-service/development/add-base-domain-param.yaml
new file mode 100644
index 00000000..d5459a58
--- /dev/null
+++ b/components/cluster-as-a-service/development/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: eaasdemo.com
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 736651a7..2d374f0d 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -3,3 +3,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (256 lines)</summary>  

``` 
./commit-70142577/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
1,48d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: clusters
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   name: multicluster-engine
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: cluster-provisioner
<   namespace: clusters
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: supported-versions-reader
<   namespace: hypershift
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - supported-versions
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: oidc-configmap-reader
<   namespace: kube-public
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - oidc-storage-provider-s3-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
93,172d44
< kind: ClusterRole
< metadata:
<   name: cluster-provisioner
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - '*'
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - hostedclusters
<   - nodepools
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplateinstances
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   verbs:
<   - get
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: cluster-provisioner-rb
<   namespace: clusters
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: cluster-provisioner
< subjects:
< - kind: ServiceAccount
<   name: cluster-provisioner
<   namespace: clusters
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: supported-versions-reader-rb
<   namespace: hypershift
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: supported-versions-reader
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: oidc-configmap-reader-rb
<   namespace: kube-public
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: oidc-configmap-reader
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts
< ---
< apiVersion: rbac.authorization.k8s.io/v1
198,237d69
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: hypershift-aws-cluster
<   namespace: openshift-gitops
< spec:
<   generators:
<   - {}
<   template:
<     metadata:
<       finalizers:
<       - resources-finalizer.argocd.argoproj.io
<       - post-delete-finalizer.argocd.argoproj.io
<       - post-delete-finalizer.argocd.argoproj.io/cleanup
<     spec:
<       destination:
<         namespace: clusters
<         server: '{{ url }}'
<       project: default
<       source:
<         chart: hypershift-aws-template
<         helm:
<           parameters:
<           - name: region
<             value: us-east-1
<           - name: secret
<             value: hypershift
<           - name: serviceAccount
<             value: cluster-provisioner
<           - name: hypershiftImageTag
<             value: "4.14"
<           - name: nodePoolReplicas
<             value: "3"
<         repoURL: https://konflux-ci.dev/cluster-template-charts/
<         targetRevision: 0.0.2
<       syncPolicy:
<         automated: {}
< ---
241,242d72
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
247,326d76
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: ClusterTemplate
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: hypershift-aws-cluster
< spec:
<   clusterDefinition: hypershift-aws-cluster
<   cost: 1
<   skipClusterRegistration: true
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: ClusterTemplateQuota
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: quota
<   namespace: clusters
< spec:
<   allowedTemplates:
<   - deleteAfter: 2h
<     name: hypershift-aws-cluster
<   budget: 100
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: Config
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: config
< spec:
<   argoCDNamespace: openshift-gitops
<   uiEnabled: false
< ---
< apiVersion: multicluster.openshift.io/v1
< kind: MultiClusterEngine
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: engine
< ---
< apiVersion: operators.coreos.com/v1
< kind: OperatorGroup
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-2"
<   name: multicluster-engine
<   namespace: multicluster-engine
< spec:
<   targetNamespaces:
<   - multicluster-engine
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-1"
<   name: multicluster-engine
<   namespace: multicluster-engine
< spec:
<   channel: stable-2.5
<   installPlanApproval: Automatic
<   name: multicluster-engine
<   source: redhat-operators
<   sourceNamespace: openshift-marketplace
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-1"
<   name: caas-operator
<   namespace: openshift-operators
< spec:
<   channel: alpha
<   installPlanApproval: Automatic
<   name: cluster-aas-operator
<   source: community-operators
<   sourceNamespace: openshift-marketplace 
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
<h3>3: Development changes from 70142577 to 50342174 on Mon Jun 3 16:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (388 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
index 4a3973b5..576736fa 100644
--- a/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
@@ -27,6 +27,12 @@ spec:
       destination:
         namespace: cluster-as-a-service
         server: "{{server}}"
+      ignoreDifferences:
+        # Ignore generators applied by the CaaS operator to cluster template AppSets
+        - group: argoproj.io
+          kind: ApplicationSet
+          jqPathExpressions:
+            - .spec.generators
       syncPolicy:
         automated:
           prune: true
diff --git a/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
index b897292f..ec0ef130 100644
--- a/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
+++ b/argo-cd-apps/k-components/deploy-to-all-clusters/all-clusters-label-selector.yaml
@@ -8,3 +8,7 @@
       - key: app.kubernetes.io/name
         operator: NotIn
         values: [argocd-default-cluster-config]
+      # Prevent clusters provisioned by the cluster-as-a-service component from being used in
+      # an AppSet cluster generator.
+      - key: clustertemplateinstance.openshift.io/name
+        operator: DoesNotExist
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 8cd62c0c..74c0a289 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -2,7 +2,9 @@
 apiVersion: argoproj.io/v1beta1
 kind: ArgoCD
 metadata:
- name: openshift-gitops
- namespace: openshift-gitops
+  name: openshift-gitops
+  namespace: openshift-gitops
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
- resourceTrackingMethod: annotation
+  resourceTrackingMethod: annotation
diff --git a/components/cluster-as-a-service/base/cluster-aas-operator.yaml b/components/cluster-as-a-service/base/cluster-aas-operator.yaml
new file mode 100644
index 00000000..d459bcb0
--- /dev/null
+++ b/components/cluster-as-a-service/base/cluster-aas-operator.yaml
@@ -0,0 +1,28 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: caas-operator
+  # OLM dependency resolution forces us to install the CaaS operator in the same namespace as the
+  # openshift-gitops operator. Otherwise, OLM will resolve and install the ArgoCD operator from the
+  # community catalog.
+  namespace: openshift-operators
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: alpha
+  installPlanApproval: Automatic
+  name: cluster-aas-operator
+  source: community-operators
+  sourceNamespace: openshift-marketplace
+
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: Config
+metadata:
+  name: config
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  argoCDNamespace: openshift-gitops
+  uiEnabled: false
diff --git a/components/cluster-as-a-service/base/clustertemplatequotas.yaml b/components/cluster-as-a-service/base/clustertemplatequotas.yaml
new file mode 100644
index 00000000..f2de2d95
--- /dev/null
+++ b/components/cluster-as-a-service/base/clustertemplatequotas.yaml
@@ -0,0 +1,13 @@
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: ClusterTemplateQuota
+metadata:
+  name: quota
+  namespace: clusters
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  budget: 100
+  allowedTemplates:
+    - name: hypershift-aws-cluster
+      deleteAfter: 2h
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
new file mode 100644
index 00000000..c3108c0c
--- /dev/null
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -0,0 +1,53 @@
+---
+apiVersion: clustertemplate.openshift.io/v1alpha1
+kind: ClusterTemplate
+metadata:
+  name: hypershift-aws-cluster
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  clusterDefinition: hypershift-aws-cluster
+  skipClusterRegistration: true
+  cost: 1
+
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: hypershift-aws-cluster
+  namespace: openshift-gitops
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  generators:
+    - {}
+  template:
+    metadata:
+      # Workaround for https://github.com/argoproj/argo-cd/issues/17181
+      finalizers:
+        - resources-finalizer.argocd.argoproj.io
+        - post-delete-finalizer.argocd.argoproj.io
+        - post-delete-finalizer.argocd.argoproj.io/cleanup
+    spec:
+      destination:
+        namespace: clusters
+        server: '{{ url }}'
+      project: default
+      source:
+        chart: hypershift-aws-template
+        repoURL: https://konflux-ci.dev/cluster-template-charts/
+        targetRevision: 0.0.2
+        helm:
+          parameters:
+            - name: region
+              value: us-east-1
+            - name: secret
+              value: hypershift
+            - name: serviceAccount
+              value: cluster-provisioner
+            - name: hypershiftImageTag
+              value: "4.14"
+            - name: nodePoolReplicas
+              value: "3"
+      syncPolicy:
+        automated: {}
diff --git a/components/cluster-as-a-service/base/kustomization.yaml b/components/cluster-as-a-service/base/kustomization.yaml
index 58afbe87..6b590b25 100644
--- a/components/cluster-as-a-service/base/kustomization.yaml
+++ b/components/cluster-as-a-service/base/kustomization.yaml
@@ -3,3 +3,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - argocd.yaml
+  - multicluster-engine.yaml
+  - cluster-aas-operator.yaml
+  - namespaces.yaml
+  - rbac.yaml
+  - clustertemplatequotas.yaml
+  - clustertemplates.yaml
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
new file mode 100644
index 00000000..5b4f4465
--- /dev/null
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -0,0 +1,40 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: multicluster-engine
+
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: multicluster-engine
+  namespace: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+spec:
+  targetNamespaces:
+    - multicluster-engine
+
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: multicluster-engine
+  namespace: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: stable-2.5
+  installPlanApproval: Automatic
+  name: multicluster-engine
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+
+---
+apiVersion: multicluster.openshift.io/v1
+kind: MultiClusterEngine
+metadata:
+  name: engine
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/cluster-as-a-service/base/namespaces.yaml b/components/cluster-as-a-service/base/namespaces.yaml
new file mode 100644
index 00000000..f429a858
--- /dev/null
+++ b/components/cluster-as-a-service/base/namespaces.yaml
@@ -0,0 +1,7 @@
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: clusters
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
diff --git a/components/cluster-as-a-service/base/rbac.yaml b/components/cluster-as-a-service/base/rbac.yaml
new file mode 100644
index 00000000..7b661373
--- /dev/null
+++ b/components/cluster-as-a-service/base/rbac.yaml
@@ -0,0 +1,125 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: cluster-provisioner
+  namespace: clusters
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: cluster-provisioner
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - "*"
+- apiGroups:
+  - hypershift.openshift.io
+  resources:
+  - hostedclusters
+  - nodepools
+  verbs:
+  - "*"
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplateinstances
+  verbs:
+  - "*"
+- apiGroups:
+  - clustertemplate.openshift.io
+  resources:
+  - clustertemplates
+  verbs:
+  - get
+  - list
+
+---
+# Allow the cluster-provisioner SA in the clusters namespace to manage clusters
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: cluster-provisioner-rb
+  namespace: clusters
+subjects:
+- kind: ServiceAccount
+  name: cluster-provisioner
+  namespace: clusters
+roleRef:
+  kind: ClusterRole
+  name: cluster-provisioner
+  apiGroup: rbac.authorization.k8s.io
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: oidc-configmap-reader
+  namespace: kube-public
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  resourceNames:
+  - oidc-storage-provider-s3-config
+  verbs:
+  - get
+
+---
+# Allow all service accounts to read the OIDC bucket configuration
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: oidc-configmap-reader-rb
+  namespace: kube-public
+subjects:
+- kind: Group
+  name: system:serviceaccounts
+  apiGroup: rbac.authorization.k8s.io
+roleRef:
+  kind: Role
+  name: oidc-configmap-reader
+  apiGroup: rbac.authorization.k8s.io
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: supported-versions-reader
+  namespace: hypershift
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  resourceNames:
+  - supported-versions
+  verbs:
+  - get
+
+---
+# Allow all authenticated users to read the supported hypershift versions
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: supported-versions-reader-rb
+  namespace: hypershift
+subjects:
+- kind: Group
+  name: system:authenticated
+  apiGroup: rbac.authorization.k8s.io
+roleRef:
+  kind: Role
+  name: supported-versions-reader
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/cluster-as-a-service/development/add-base-domain-param.yaml b/components/cluster-as-a-service/development/add-base-domain-param.yaml
new file mode 100644
index 00000000..d5459a58
--- /dev/null
+++ b/components/cluster-as-a-service/development/add-base-domain-param.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: eaasdemo.com
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 736651a7..2d374f0d 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -3,3 +3,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+patches:
+  - path: add-base-domain-param.yaml
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      version: v1alpha1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (275 lines)</summary>  

``` 
./commit-70142577/development/app-of-apps-development.yaml
183,187d182
<       ignoreDifferences:
<       - group: argoproj.io
<         jqPathExpressions:
<         - .spec.generators
<         kind: ApplicationSet
258,259d252
<             - key: clustertemplateinstance.openshift.io/name
<               operator: DoesNotExist
308,309d300
<             - key: clustertemplateinstance.openshift.io/name
<               operator: DoesNotExist
662,663d652
<             - key: clustertemplateinstance.openshift.io/name
<               operator: DoesNotExist
715,716d703
<             - key: clustertemplateinstance.openshift.io/name
<               operator: DoesNotExist
./commit-70142577/development/components/cluster-as-a-service/development/kustomize.out.yaml
1,170d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: clusters
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   name: multicluster-engine
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: cluster-provisioner
<   namespace: clusters
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: supported-versions-reader
<   namespace: hypershift
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - supported-versions
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: oidc-configmap-reader
<   namespace: kube-public
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - oidc-storage-provider-s3-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: cluster-provisioner
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - namespaces
<   verbs:
<   - patch
< - apiGroups:
<   - ""
<   resources:
<   - secrets
<   verbs:
<   - '*'
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - hostedclusters
<   - nodepools
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplateinstances
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   verbs:
<   - get
<   - list
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: cluster-provisioner-rb
<   namespace: clusters
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: cluster-provisioner
< subjects:
< - kind: ServiceAccount
<   name: cluster-provisioner
<   namespace: clusters
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: supported-versions-reader-rb
<   namespace: hypershift
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: supported-versions-reader
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: oidc-configmap-reader-rb
<   namespace: kube-public
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: oidc-configmap-reader
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:serviceaccounts
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: hypershift-aws-cluster
<   namespace: openshift-gitops
< spec:
<   generators:
<   - {}
<   template:
<     metadata:
<       finalizers:
<       - resources-finalizer.argocd.argoproj.io
<       - post-delete-finalizer.argocd.argoproj.io
<       - post-delete-finalizer.argocd.argoproj.io/cleanup
<     spec:
<       destination:
<         namespace: clusters
<         server: '{{ url }}'
<       project: default
<       source:
<         chart: hypershift-aws-template
<         helm:
<           parameters:
<           - name: region
<             value: us-east-1
<           - name: secret
<             value: hypershift
<           - name: serviceAccount
<             value: cluster-provisioner
<           - name: hypershiftImageTag
<             value: "4.14"
<           - name: nodePoolReplicas
<             value: "3"
<           - name: baseDomain
<             value: eaasdemo.com
<         repoURL: https://konflux-ci.dev/cluster-template-charts/
<         targetRevision: 0.0.2
<       syncPolicy:
<         automated: {}
< ---
174,175d3
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
180,259d7
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: ClusterTemplate
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: hypershift-aws-cluster
< spec:
<   clusterDefinition: hypershift-aws-cluster
<   cost: 1
<   skipClusterRegistration: true
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: ClusterTemplateQuota
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: quota
<   namespace: clusters
< spec:
<   allowedTemplates:
<   - deleteAfter: 2h
<     name: hypershift-aws-cluster
<   budget: 100
< ---
< apiVersion: clustertemplate.openshift.io/v1alpha1
< kind: Config
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: config
< spec:
<   argoCDNamespace: openshift-gitops
<   uiEnabled: false
< ---
< apiVersion: multicluster.openshift.io/v1
< kind: MultiClusterEngine
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: engine
< ---
< apiVersion: operators.coreos.com/v1
< kind: OperatorGroup
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-2"
<   name: multicluster-engine
<   namespace: multicluster-engine
< spec:
<   targetNamespaces:
<   - multicluster-engine
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-1"
<   name: multicluster-engine
<   namespace: multicluster-engine
< spec:
<   channel: stable-2.5
<   installPlanApproval: Automatic
<   name: multicluster-engine
<   source: redhat-operators
<   sourceNamespace: openshift-marketplace
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-1"
<   name: caas-operator
<   namespace: openshift-operators
< spec:
<   channel: alpha
<   installPlanApproval: Automatic
<   name: cluster-aas-operator
<   source: community-operators
<   sourceNamespace: openshift-marketplace 
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
<h3>4: Production changes from fe552926 to 70142577 on Mon Jun 3 12:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index 3431d104..328d4cd3 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=c74e02a133e09ed7cbb628919aaaa5cd3325375d
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
+  newTag: c74e02a133e09ed7cbb628919aaaa5cd3325375d
 
 namespace: ci-helper-app
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from fe552926 to 70142577 on Mon Jun 3 12:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index 3431d104..328d4cd3 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=c74e02a133e09ed7cbb628919aaaa5cd3325375d
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
+  newTag: c74e02a133e09ed7cbb628919aaaa5cd3325375d
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-fe552926/staging/components/ci-helper-app/staging/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:c74e02a133e09ed7cbb628919aaaa5cd3325375d
---
>         image: quay.io/konflux-ci/ci-helper-app:3d5effdd4bde8b319a653b0e39a18f324b7c7c4c 
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
<h3>4: Development changes from fe552926 to 70142577 on Mon Jun 3 12:02:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index 3431d104..328d4cd3 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=c74e02a133e09ed7cbb628919aaaa5cd3325375d
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
+  newTag: c74e02a133e09ed7cbb628919aaaa5cd3325375d
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-fe552926/development/components/ci-helper-app/development/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:c74e02a133e09ed7cbb628919aaaa5cd3325375d
---
>         image: quay.io/konflux-ci/ci-helper-app:3d5effdd4bde8b319a653b0e39a18f324b7c7c4c 
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
```
 
</details> 
<br> 


</div>
