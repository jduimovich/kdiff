# kustomize changes tracked by commits 
### This file generated at Thu Aug 29 12:07:36 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b19ba179 to a4540027 on Thu Aug 29 11:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
index 13948d36..64a5fd6c 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -34,3 +34,11 @@ rules:
       - toolchain.dev.openshift.com
     resources:
       - spacerequests
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - tekton.dev
+    resources:
+      - pipelineruns
+      - taskruns 
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
<h3>1: Staging changes from b19ba179 to a4540027 on Thu Aug 29 11:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
index 13948d36..64a5fd6c 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -34,3 +34,11 @@ rules:
       - toolchain.dev.openshift.com
     resources:
       - spacerequests
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - tekton.dev
+    resources:
+      - pipelineruns
+      - taskruns 
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
<h3>1: Development changes from b19ba179 to a4540027 on Thu Aug 29 11:56:57 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
index 13948d36..64a5fd6c 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -34,3 +34,11 @@ rules:
       - toolchain.dev.openshift.com
     resources:
       - spacerequests
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - tekton.dev
+    resources:
+      - pipelineruns
+      - taskruns 
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
<h3>2: Production changes from 6392437d to b19ba179 on Thu Aug 29 10:34:27 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e5512585..905be112 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
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
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 81bd5e63..04894186 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 6392437d to b19ba179 on Thu Aug 29 10:34:27 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e5512585..905be112 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
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
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 81bd5e63..04894186 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
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
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6392437d/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 6392437d to b19ba179 on Thu Aug 29 10:34:27 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e5512585..905be112 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
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
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 81bd5e63..04894186 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
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
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-6392437d/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
---
>         image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
1487c1487
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 00b6f364 to 6392437d on Thu Aug 29 07:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (1000 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 1db56665..fcf203a7 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -551,22 +491,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -583,21 +507,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1399,69 +1308,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b1168be6..bdb30b62 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1285,69 +1194,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aae4fd24..5b35af46 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78acf8d8..790e8a46 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f326a39d..42f6ee8e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
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
<h3>3: Staging changes from 00b6f364 to 6392437d on Thu Aug 29 07:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (1000 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 1db56665..fcf203a7 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -551,22 +491,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -583,21 +507,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1399,69 +1308,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b1168be6..bdb30b62 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1285,69 +1194,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aae4fd24..5b35af46 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78acf8d8..790e8a46 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f326a39d..42f6ee8e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (483 lines)</summary>  

``` 
./commit-00b6f364/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
661a722,737
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
676a753,767
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1571a1663,1725
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *'
./commit-00b6f364/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
661a722,737
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
676a753,767
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1571a1663,1725
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *'
./commit-00b6f364/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
32a33,40
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159a168,198
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
177a217,237
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
661a722,737
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
676a753,767
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1571a1663,1725
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *' 
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
<h3>3: Development changes from 00b6f364 to 6392437d on Thu Aug 29 07:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (1000 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 1db56665..fcf203a7 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -29,14 +29,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -159,37 +151,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -209,27 +170,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -551,22 +491,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -583,21 +507,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1399,69 +1308,6 @@ spec:
             secretName: tekton-results-tls
 ---
 apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
-apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b1168be6..bdb30b62 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,14 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -129,37 +121,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -179,27 +140,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -504,22 +444,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -536,21 +460,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1285,69 +1194,6 @@ spec:
           secret:
             secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aae4fd24..5b35af46 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78acf8d8..790e8a46 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index f326a39d..42f6ee8e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,14 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -161,37 +153,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - pac-secret-manager
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - batch
-  resources:
-  - cronjobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -211,27 +172,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - namespaces
-  verbs:
-  - list
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -715,22 +655,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-cronjobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-cronjobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -747,21 +671,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-manager
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pac-secret-manager
-subjects:
-- kind: ServiceAccount
-  name: pac-secret-manager
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1661,69 +1570,6 @@ spec:
         secret:
           secretName: tekton-results-tls
 ---
-apiVersion: batch/v1
-kind: CronJob
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pac-secret-reaper
-  namespace: openshift-pipelines
-spec:
-  concurrencyPolicy: Forbid
-  jobTemplate:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      template:
-        metadata:
-          annotations:
-            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        spec:
-          containers:
-          - command:
-            - /bin/bash
-            - -c
-            - |
-              # Delete "pac-gitauth-*" secrets older than a day
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
-                echo "$namespace: Cleaning pac-gitauth secrets"
-                kubectl get secrets --namespace $namespace -o json | \
-                  jq -r '.items[] |
-                    select(.metadata.name |
-                    startswith("pac-gitauth-")) |
-                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
-                    "secret/" + .metadata.name
-                  ' | \
-                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
-              done
-              echo "Done"
-            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
-            imagePullPolicy: Always
-            name: delete-pac-secrets
-            resources:
-              limits:
-                cpu: 200m
-                memory: 200Mi
-              requests:
-                cpu: 10m
-                memory: 10Mi
-            securityContext:
-              allowPrivilegeEscalation: false
-              capabilities:
-                drop:
-                - ALL
-              readOnlyRootFilesystem: true
-              runAsNonRoot: true
-              seccompProfile:
-                type: RuntimeDefault
-          restartPolicy: Never
-          serviceAccountName: pac-secret-manager
-  schedule: '*/10 * * * *'
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (161 lines)</summary>  

``` 
./commit-00b6f364/development/components/pipeline-service/development/kustomize.out.yaml
34a35,42
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
174a183,213
>   name: openshift-gitops-cronjobs-admin
> rules:
> - apiGroups:
>   - ""
>   resourceNames:
>   - pac-secret-manager
>   resources:
>   - serviceaccounts
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> - apiGroups:
>   - batch
>   resources:
>   - cronjobs
>   verbs:
>   - get
>   - list
>   - patch
>   - create
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
224a264,284
>   name: pac-secret-manager
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - namespaces
>   verbs:
>   - list
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
693a754,769
>   name: openshift-gitops-cronjobs-admin
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: openshift-gitops-cronjobs-admin
> subjects:
> - kind: ServiceAccount
>   name: openshift-gitops-argocd-application-controller
>   namespace: openshift-gitops
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "0"
724a801,815
>   name: pac-secret-manager
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: pac-secret-manager
> subjects:
> - kind: ServiceAccount
>   name: pac-secret-manager
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1551a1643,1705
> ---
> apiVersion: batch/v1
> kind: CronJob
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: pac-secret-reaper
>   namespace: openshift-pipelines
> spec:
>   concurrencyPolicy: Forbid
>   jobTemplate:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       template:
>         metadata:
>           annotations:
>             argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>         spec:
>           containers:
>           - command:
>             - /bin/bash
>             - -c
>             - |
>               # Delete "pac-gitauth-*" secrets older than a day
>               set -o errexit
>               set -o nounset
>               set -o pipefail
>               for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
>                 echo "$namespace: Cleaning pac-gitauth secrets"
>                 kubectl get secrets --namespace $namespace -o json | \
>                   jq -r '.items[] |
>                     select(.metadata.name |
>                     startswith("pac-gitauth-")) |
>                     select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
>                     "secret/" + .metadata.name
>                   ' | \
>                   xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
>               done
>               echo "Done"
>             image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
>             imagePullPolicy: Always
>             name: delete-pac-secrets
>             resources:
>               limits:
>                 cpu: 200m
>                 memory: 200Mi
>               requests:
>                 cpu: 10m
>                 memory: 10Mi
>             securityContext:
>               allowPrivilegeEscalation: false
>               capabilities:
>                 drop:
>                 - ALL
>               readOnlyRootFilesystem: true
>               runAsNonRoot: true
>               seccompProfile:
>                 type: RuntimeDefault
>           restartPolicy: Never
>           serviceAccountName: pac-secret-manager
>   schedule: '*/10 * * * *' 
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
<h3>4: Production changes from 902c28b5 to 00b6f364 on Thu Aug 29 02:57:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 4e4e324e..819954c7 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-902c28b5/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
./commit-902c28b5/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a 
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
<h3>4: Staging changes from 902c28b5 to 00b6f364 on Thu Aug 29 02:57:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 4e4e324e..819954c7 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-902c28b5/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a 
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
<h3>4: Development changes from 902c28b5 to 00b6f364 on Thu Aug 29 02:57:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 4e4e324e..819954c7 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-902c28b5/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:e8c7e24ee3010cba6bc56e650086724a3db7a60c
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:168db5704eb0cb2403683d5bd37185eb2e8f3f5a 
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
