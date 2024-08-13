# kustomize changes tracked by commits 
### This file generated at Tue Aug 13 04:02:41 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5bace205 to 8c30e466 on Mon Aug 12 23:40:16 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 8d3cd0ea..c588b1b2 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -5,9 +5,11 @@ metadata:
   namespace: build-service
 data:
   config.yaml: |
-    default-pipeline-name: docker-build
+    default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:420bc92bb798935d84912c88eca05af798baa8ca
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:43cf5b8a617c87f7472b4f76542f8b7a428c511f
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:420bc92bb798935d84912c88eca05af798baa8ca
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:43cf5b8a617c87f7472b4f76542f8b7a428c511f
+    - name: docker-build-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:43cf5b8a617c87f7472b4f76542f8b7a428c511f 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-5bace205/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
436c436
<     default-pipeline-name: docker-build-oci-ta
---
>     default-pipeline-name: docker-build
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:43cf5b8a617c87f7472b4f76542f8b7a428c511f
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:420bc92bb798935d84912c88eca05af798baa8ca
441,443c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:43cf5b8a617c87f7472b4f76542f8b7a428c511f
<     - name: docker-build-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:43cf5b8a617c87f7472b4f76542f8b7a428c511f
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:420bc92bb798935d84912c88eca05af798baa8ca
./commit-5bace205/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
436c436
<     default-pipeline-name: docker-build-oci-ta
---
>     default-pipeline-name: docker-build
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:43cf5b8a617c87f7472b4f76542f8b7a428c511f
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:420bc92bb798935d84912c88eca05af798baa8ca
441,443c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:43cf5b8a617c87f7472b4f76542f8b7a428c511f
<     - name: docker-build-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:43cf5b8a617c87f7472b4f76542f8b7a428c511f
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:420bc92bb798935d84912c88eca05af798baa8ca 
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
<h3>1: Staging changes from 5bace205 to 8c30e466 on Mon Aug 12 23:40:16 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 8d3cd0ea..c588b1b2 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -5,9 +5,11 @@ metadata:
   namespace: build-service
 data:
   config.yaml: |
-    default-pipeline-name: docker-build
+    default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:420bc92bb798935d84912c88eca05af798baa8ca
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:43cf5b8a617c87f7472b4f76542f8b7a428c511f
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:420bc92bb798935d84912c88eca05af798baa8ca
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:43cf5b8a617c87f7472b4f76542f8b7a428c511f
+    - name: docker-build-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:43cf5b8a617c87f7472b4f76542f8b7a428c511f 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-5bace205/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
436c436
<     default-pipeline-name: docker-build-oci-ta
---
>     default-pipeline-name: docker-build
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:43cf5b8a617c87f7472b4f76542f8b7a428c511f
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:420bc92bb798935d84912c88eca05af798baa8ca
441,443c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:43cf5b8a617c87f7472b4f76542f8b7a428c511f
<     - name: docker-build-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:43cf5b8a617c87f7472b4f76542f8b7a428c511f
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:420bc92bb798935d84912c88eca05af798baa8ca 
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
<h3>1: Development changes from 5bace205 to 8c30e466 on Mon Aug 12 23:40:16 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 8d3cd0ea..c588b1b2 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -5,9 +5,11 @@ metadata:
   namespace: build-service
 data:
   config.yaml: |
-    default-pipeline-name: docker-build
+    default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:420bc92bb798935d84912c88eca05af798baa8ca
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:43cf5b8a617c87f7472b4f76542f8b7a428c511f
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:420bc92bb798935d84912c88eca05af798baa8ca
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:43cf5b8a617c87f7472b4f76542f8b7a428c511f
+    - name: docker-build-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:43cf5b8a617c87f7472b4f76542f8b7a428c511f 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-5bace205/development/components/build-service/development/kustomize.out.yaml
436c436
<     default-pipeline-name: docker-build-oci-ta
---
>     default-pipeline-name: docker-build
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:43cf5b8a617c87f7472b4f76542f8b7a428c511f
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:420bc92bb798935d84912c88eca05af798baa8ca
441,443c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:43cf5b8a617c87f7472b4f76542f8b7a428c511f
<     - name: docker-build-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:43cf5b8a617c87f7472b4f76542f8b7a428c511f
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:420bc92bb798935d84912c88eca05af798baa8ca 
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
<h3>2: Production changes from a5d201de to 5bace205 on Mon Aug 12 22:59:01 2024 </h3>  
 
<details> 
<summary>Git Diff (236 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
similarity index 98%
rename from components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
rename to components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
index 405d6ddb..9d719269 100644
--- a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
+++ b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
@@ -4,9 +4,9 @@ kind: CustomResourceDefinition
 metadata:
   annotations:
     controller-gen.kubebuilder.io/version: v0.14.0
-  name: internalworkspaces.workspaces.konflux.io
+  name: internalworkspaces.workspaces.konflux-ci.dev
 spec:
-  group: workspaces.konflux.io
+  group: workspaces.konflux-ci.dev
   names:
     kind: InternalWorkspace
     listKind: InternalWorkspaceList
diff --git a/components/workspaces/base/operator/config/crd/kustomization.yaml b/components/workspaces/base/operator/config/crd/kustomization.yaml
index 5a877825..d65647e6 100644
--- a/components/workspaces/base/operator/config/crd/kustomization.yaml
+++ b/components/workspaces/base/operator/config/crd/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- bases/workspaces.konflux.io_internalworkspaces.yaml
+- bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
 #+kubebuilder:scaffold:crdkustomizeresource
 
 patches: []
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index 00ca6753..7ab93730 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
index f5cb6303..db391703 100644
--- a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
@@ -8,7 +8,7 @@ metadata:
   name: workspace-editor-role
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -20,7 +20,7 @@ rules:
   - update
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
index dcd07c69..c4733bd9 100644
--- a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
@@ -8,7 +8,7 @@ metadata:
   name: workspace-viewer-role
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -16,7 +16,7 @@ rules:
   - list
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
index fd9a514a..a589096c 100644
--- a/components/workspaces/base/operator/config/rbac/role.yaml
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -61,7 +61,7 @@ rules:
   - list
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -74,13 +74,13 @@ rules:
   - update
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/finalizers
   verbs:
   - update
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml b/components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
similarity index 98%
rename from components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
rename to components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
index 26fdb2bc..4a99e8a8 100644
--- a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
+++ b/components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
@@ -4,9 +4,9 @@ kind: CustomResourceDefinition
 metadata:
   annotations:
     controller-gen.kubebuilder.io/version: v0.14.0
-  name: workspaces.workspaces.konflux.io
+  name: workspaces.workspaces.konflux-ci.dev
 spec:
-  group: workspaces.konflux.io
+  group: workspaces.konflux-ci.dev
   names:
     kind: Workspace
     listKind: WorkspaceList
diff --git a/components/workspaces/base/server/config/crd/kustomization.yaml b/components/workspaces/base/server/config/crd/kustomization.yaml
index 5534b22c..1cc95a86 100644
--- a/components/workspaces/base/server/config/crd/kustomization.yaml
+++ b/components/workspaces/base/server/config/crd/kustomization.yaml
@@ -2,6 +2,6 @@
 # since it depends on service name and namespace that are out of this kustomize package.
 # It should be run by config/default
 resources:
-- bases/workspaces.konflux.io_workspaces.yaml
+- bases/workspaces.konflux-ci.dev_workspaces.yaml
 #+kubebuilder:scaffold:crdkustomizeresource
 
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
index c087b138..5e5a32e0 100644
--- a/components/workspaces/base/server/config/default/kustomization.yaml
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -6,10 +6,10 @@ resources:
 - ../server
 namePrefix: workspaces-
 
-      # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
-      # create Role and RoleBinding to read UserSignups into toolchain-host-operator
-      # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
-      # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
+  # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
+  # create Role and RoleBinding to read UserSignups into toolchain-host-operator
+  # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
+  # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
 replacements:
 - source:
     fieldPath: data.[kubesaw.namespace]
diff --git a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
index 749a74e3..217aa852 100644
--- a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
+++ b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: system
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 8b976885..59590c6c 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
index 90715b38..fab2b210 100644
--- a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -9,7 +9,7 @@ http:
       service: web
       entrypoints:
       - web
-      rule: PathPrefix(`/apis/workspaces.konflux.io`) && ( Method(`GET`) || Method(`PUT`) )
+      rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) )
       middlewares:
         - jwt-authorizer
     app-healthz:
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index dc9e23a0..6735eba9 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index c475db68..434d07b3 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -5,9 +5,9 @@ resources:
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 
 configMapGenerator:
 - behavior: merge 
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
<h3>2: Staging changes from a5d201de to 5bace205 on Mon Aug 12 22:59:01 2024 </h3>  
 
<details> 
<summary>Git Diff (236 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
similarity index 98%
rename from components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
rename to components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
index 405d6ddb..9d719269 100644
--- a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
+++ b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
@@ -4,9 +4,9 @@ kind: CustomResourceDefinition
 metadata:
   annotations:
     controller-gen.kubebuilder.io/version: v0.14.0
-  name: internalworkspaces.workspaces.konflux.io
+  name: internalworkspaces.workspaces.konflux-ci.dev
 spec:
-  group: workspaces.konflux.io
+  group: workspaces.konflux-ci.dev
   names:
     kind: InternalWorkspace
     listKind: InternalWorkspaceList
diff --git a/components/workspaces/base/operator/config/crd/kustomization.yaml b/components/workspaces/base/operator/config/crd/kustomization.yaml
index 5a877825..d65647e6 100644
--- a/components/workspaces/base/operator/config/crd/kustomization.yaml
+++ b/components/workspaces/base/operator/config/crd/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- bases/workspaces.konflux.io_internalworkspaces.yaml
+- bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
 #+kubebuilder:scaffold:crdkustomizeresource
 
 patches: []
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index 00ca6753..7ab93730 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
index f5cb6303..db391703 100644
--- a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
@@ -8,7 +8,7 @@ metadata:
   name: workspace-editor-role
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -20,7 +20,7 @@ rules:
   - update
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
index dcd07c69..c4733bd9 100644
--- a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
@@ -8,7 +8,7 @@ metadata:
   name: workspace-viewer-role
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -16,7 +16,7 @@ rules:
   - list
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
index fd9a514a..a589096c 100644
--- a/components/workspaces/base/operator/config/rbac/role.yaml
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -61,7 +61,7 @@ rules:
   - list
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -74,13 +74,13 @@ rules:
   - update
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/finalizers
   verbs:
   - update
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml b/components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
similarity index 98%
rename from components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
rename to components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
index 26fdb2bc..4a99e8a8 100644
--- a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
+++ b/components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
@@ -4,9 +4,9 @@ kind: CustomResourceDefinition
 metadata:
   annotations:
     controller-gen.kubebuilder.io/version: v0.14.0
-  name: workspaces.workspaces.konflux.io
+  name: workspaces.workspaces.konflux-ci.dev
 spec:
-  group: workspaces.konflux.io
+  group: workspaces.konflux-ci.dev
   names:
     kind: Workspace
     listKind: WorkspaceList
diff --git a/components/workspaces/base/server/config/crd/kustomization.yaml b/components/workspaces/base/server/config/crd/kustomization.yaml
index 5534b22c..1cc95a86 100644
--- a/components/workspaces/base/server/config/crd/kustomization.yaml
+++ b/components/workspaces/base/server/config/crd/kustomization.yaml
@@ -2,6 +2,6 @@
 # since it depends on service name and namespace that are out of this kustomize package.
 # It should be run by config/default
 resources:
-- bases/workspaces.konflux.io_workspaces.yaml
+- bases/workspaces.konflux-ci.dev_workspaces.yaml
 #+kubebuilder:scaffold:crdkustomizeresource
 
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
index c087b138..5e5a32e0 100644
--- a/components/workspaces/base/server/config/default/kustomization.yaml
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -6,10 +6,10 @@ resources:
 - ../server
 namePrefix: workspaces-
 
-      # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
-      # create Role and RoleBinding to read UserSignups into toolchain-host-operator
-      # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
-      # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
+  # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
+  # create Role and RoleBinding to read UserSignups into toolchain-host-operator
+  # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
+  # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
 replacements:
 - source:
     fieldPath: data.[kubesaw.namespace]
diff --git a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
index 749a74e3..217aa852 100644
--- a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
+++ b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: system
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 8b976885..59590c6c 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
index 90715b38..fab2b210 100644
--- a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -9,7 +9,7 @@ http:
       service: web
       entrypoints:
       - web
-      rule: PathPrefix(`/apis/workspaces.konflux.io`) && ( Method(`GET`) || Method(`PUT`) )
+      rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) )
       middlewares:
         - jwt-authorizer
     app-healthz:
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index dc9e23a0..6735eba9 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index c475db68..434d07b3 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -5,9 +5,9 @@ resources:
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 
 configMapGenerator:
 - behavior: merge 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (90 lines)</summary>  

``` 
./commit-a5d201de/staging/components/workspaces/staging/stone-stage-p01/kustomize.out.yaml
19c19
<   name: internalworkspaces.workspaces.konflux-ci.dev
---
>   name: internalworkspaces.workspaces.konflux.io
21c21
<   group: workspaces.konflux-ci.dev
---
>   group: workspaces.konflux.io
192c192
<   name: workspaces.workspaces.konflux-ci.dev
---
>   name: workspaces.workspaces.konflux.io
194c194
<   group: workspaces.konflux-ci.dev
---
>   group: workspaces.konflux.io
435c435
<   - workspaces.konflux-ci.dev
---
>   - workspaces.konflux.io
506c506
<   - workspaces.konflux-ci.dev
---
>   - workspaces.konflux.io
519c519
<   - workspaces.konflux-ci.dev
---
>   - workspaces.konflux.io
525c525
<   - workspaces.konflux-ci.dev
---
>   - workspaces.konflux.io
647c647
<           rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) )
---
>           rule: PathPrefix(`/apis/workspaces.konflux.io`) && ( Method(`GET`) || Method(`PUT`) )
827c827
<         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha5
---
>         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha4
919c919
<         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha5
---
>         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha4
./commit-a5d201de/staging/components/workspaces/staging/stone-stg-host/kustomize.out.yaml
19c19
<   name: internalworkspaces.workspaces.konflux-ci.dev
---
>   name: internalworkspaces.workspaces.konflux.io
21c21
<   group: workspaces.konflux-ci.dev
---
>   group: workspaces.konflux.io
192c192
<   name: workspaces.workspaces.konflux-ci.dev
---
>   name: workspaces.workspaces.konflux.io
194c194
<   group: workspaces.konflux-ci.dev
---
>   group: workspaces.konflux.io
435c435
<   - workspaces.konflux-ci.dev
---
>   - workspaces.konflux.io
506c506
<   - workspaces.konflux-ci.dev
---
>   - workspaces.konflux.io
519c519
<   - workspaces.konflux-ci.dev
---
>   - workspaces.konflux.io
525c525
<   - workspaces.konflux-ci.dev
---
>   - workspaces.konflux.io
647c647
<           rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) )
---
>           rule: PathPrefix(`/apis/workspaces.konflux.io`) && ( Method(`GET`) || Method(`PUT`) )
827c827
<         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha5
---
>         image: quay.io/konflux-workspaces/workspaces-operator:v0.1.0-alpha4
919c919
<         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha5
---
>         image: quay.io/konflux-workspaces/workspaces-server:v0.1.0-alpha4 
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
<h3>2: Development changes from a5d201de to 5bace205 on Mon Aug 12 22:59:01 2024 </h3>  
 
<details> 
<summary>Git Diff (236 lines)</summary>  

``` 
diff --git a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
similarity index 98%
rename from components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
rename to components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
index 405d6ddb..9d719269 100644
--- a/components/workspaces/base/operator/config/crd/bases/workspaces.konflux.io_internalworkspaces.yaml
+++ b/components/workspaces/base/operator/config/crd/bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
@@ -4,9 +4,9 @@ kind: CustomResourceDefinition
 metadata:
   annotations:
     controller-gen.kubebuilder.io/version: v0.14.0
-  name: internalworkspaces.workspaces.konflux.io
+  name: internalworkspaces.workspaces.konflux-ci.dev
 spec:
-  group: workspaces.konflux.io
+  group: workspaces.konflux-ci.dev
   names:
     kind: InternalWorkspace
     listKind: InternalWorkspaceList
diff --git a/components/workspaces/base/operator/config/crd/kustomization.yaml b/components/workspaces/base/operator/config/crd/kustomization.yaml
index 5a877825..d65647e6 100644
--- a/components/workspaces/base/operator/config/crd/kustomization.yaml
+++ b/components/workspaces/base/operator/config/crd/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- bases/workspaces.konflux.io_internalworkspaces.yaml
+- bases/workspaces.konflux-ci.dev_internalworkspaces.yaml
 #+kubebuilder:scaffold:crdkustomizeresource
 
 patches: []
diff --git a/components/workspaces/base/operator/config/manager/kustomization.yaml b/components/workspaces/base/operator/config/manager/kustomization.yaml
index 00ca6753..7ab93730 100644
--- a/components/workspaces/base/operator/config/manager/kustomization.yaml
+++ b/components/workspaces/base/operator/config/manager/kustomization.yaml
@@ -5,7 +5,7 @@ resources:
 images:
 - name: controller
   newName: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 configMapGenerator:
 - behavior: replace
   literals:
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
index f5cb6303..db391703 100644
--- a/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_editor_role.yaml
@@ -8,7 +8,7 @@ metadata:
   name: workspace-editor-role
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -20,7 +20,7 @@ rules:
   - update
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
index dcd07c69..c4733bd9 100644
--- a/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
+++ b/components/workspaces/base/operator/config/rbac/internalworkspace_viewer_role.yaml
@@ -8,7 +8,7 @@ metadata:
   name: workspace-viewer-role
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -16,7 +16,7 @@ rules:
   - list
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/operator/config/rbac/role.yaml b/components/workspaces/base/operator/config/rbac/role.yaml
index fd9a514a..a589096c 100644
--- a/components/workspaces/base/operator/config/rbac/role.yaml
+++ b/components/workspaces/base/operator/config/rbac/role.yaml
@@ -61,7 +61,7 @@ rules:
   - list
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
@@ -74,13 +74,13 @@ rules:
   - update
   - watch
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/finalizers
   verbs:
   - update
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces/status
   verbs:
diff --git a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml b/components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
similarity index 98%
rename from components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
rename to components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
index 26fdb2bc..4a99e8a8 100644
--- a/components/workspaces/base/server/config/crd/bases/workspaces.konflux.io_workspaces.yaml
+++ b/components/workspaces/base/server/config/crd/bases/workspaces.konflux-ci.dev_workspaces.yaml
@@ -4,9 +4,9 @@ kind: CustomResourceDefinition
 metadata:
   annotations:
     controller-gen.kubebuilder.io/version: v0.14.0
-  name: workspaces.workspaces.konflux.io
+  name: workspaces.workspaces.konflux-ci.dev
 spec:
-  group: workspaces.konflux.io
+  group: workspaces.konflux-ci.dev
   names:
     kind: Workspace
     listKind: WorkspaceList
diff --git a/components/workspaces/base/server/config/crd/kustomization.yaml b/components/workspaces/base/server/config/crd/kustomization.yaml
index 5534b22c..1cc95a86 100644
--- a/components/workspaces/base/server/config/crd/kustomization.yaml
+++ b/components/workspaces/base/server/config/crd/kustomization.yaml
@@ -2,6 +2,6 @@
 # since it depends on service name and namespace that are out of this kustomize package.
 # It should be run by config/default
 resources:
-- bases/workspaces.konflux.io_workspaces.yaml
+- bases/workspaces.konflux-ci.dev_workspaces.yaml
 #+kubebuilder:scaffold:crdkustomizeresource
 
diff --git a/components/workspaces/base/server/config/default/kustomization.yaml b/components/workspaces/base/server/config/default/kustomization.yaml
index c087b138..5e5a32e0 100644
--- a/components/workspaces/base/server/config/default/kustomization.yaml
+++ b/components/workspaces/base/server/config/default/kustomization.yaml
@@ -6,10 +6,10 @@ resources:
 - ../server
 namePrefix: workspaces-
 
-      # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
-      # create Role and RoleBinding to read UserSignups into toolchain-host-operator
-      # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
-      # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
+  # create Role and RoleBinding to read SpaceBinding into toolchain-host-operator
+  # create Role and RoleBinding to read UserSignups into toolchain-host-operator
+  # RoleBinding to read SpaceBinding should target the ServiceAccount in workspaces-system
+  # RoleBinding to read UserSignups should target the ServiceAccount in workspaces-system
 replacements:
 - source:
     fieldPath: data.[kubesaw.namespace]
diff --git a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
index 749a74e3..217aa852 100644
--- a/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
+++ b/components/workspaces/base/server/config/rbac/role_workspace_server_editor.yaml
@@ -5,7 +5,7 @@ metadata:
   namespace: system
 rules:
 - apiGroups:
-  - workspaces.konflux.io
+  - workspaces.konflux-ci.dev
   resources:
   - internalworkspaces
   verbs:
diff --git a/components/workspaces/base/server/config/server/kustomization.yaml b/components/workspaces/base/server/config/server/kustomization.yaml
index 8b976885..59590c6c 100644
--- a/components/workspaces/base/server/config/server/kustomization.yaml
+++ b/components/workspaces/base/server/config/server/kustomization.yaml
@@ -19,4 +19,4 @@ configMapGenerator:
 images:
 - name: workspaces/rest-api
   newName: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
index 90715b38..fab2b210 100644
--- a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -9,7 +9,7 @@ http:
       service: web
       entrypoints:
       - web
-      rule: PathPrefix(`/apis/workspaces.konflux.io`) && ( Method(`GET`) || Method(`PUT`) )
+      rule: PathPrefix(`/apis/workspaces.konflux-ci.dev`) && ( Method(`GET`) || Method(`PUT`) )
       middlewares:
         - jwt-authorizer
     app-healthz:
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index dc9e23a0..6735eba9 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -4,9 +4,9 @@ resources:
 - ../../base/
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 
 configMapGenerator:
 - behavior: merge
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index c475db68..434d07b3 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -5,9 +5,9 @@ resources:
 - route.yaml
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 - name: quay.io/konflux-workspaces/workspaces-operator
-  newTag: v0.1.0-alpha4
+  newTag: v0.1.0-alpha5
 
 configMapGenerator:
 - behavior: merge 
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
<h3>3: Production changes from a5c31454 to a5d201de on Mon Aug 12 22:01:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c911dd68..651022f4 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0022ca43..bd7772ff 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
+  - https://github.com/konflux-ci/release-service/config/default?ref=0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: d951e5de1c61d24f61d3693307f01f4c6ba87100
+    newTag: 0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from a5c31454 to a5d201de on Mon Aug 12 22:01:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c911dd68..651022f4 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0022ca43..bd7772ff 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
+  - https://github.com/konflux-ci/release-service/config/default?ref=0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: d951e5de1c61d24f61d3693307f01f4c6ba87100
+    newTag: 0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from a5c31454 to a5d201de on Mon Aug 12 22:01:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c911dd68..651022f4 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0022ca43..bd7772ff 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=d951e5de1c61d24f61d3693307f01f4c6ba87100
+  - https://github.com/konflux-ci/release-service/config/default?ref=0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: d951e5de1c61d24f61d3693307f01f4c6ba87100
+    newTag: 0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a5c31454/development/components/release/development/kustomize.out.yaml
1861c1861
<         image: quay.io/konflux-ci/release-service:0d18fc98c5b6d60e273bcabccb4e42cb2bc934fb
---
>         image: quay.io/konflux-ci/release-service:d951e5de1c61d24f61d3693307f01f4c6ba87100 
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
<h3>4: Production changes from c4f43ebf to a5c31454 on Mon Aug 12 21:20:03 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 4c3586dc..adb20a9c 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -42,12 +42,12 @@ spec:
       url: # added by overlays
       writeRelabelConfigs:
       - action: LabelKeep
-        regex: "__name__|source_environment|source_cluster|namespace|pod|container|\
+        regex: "__name__|source_environment|source_cluster|namespace|app|pod|container|\
           label_pipelines_appstudio_openshift_io_type|health_status|dest_namespace|\
           controller|service|reason|phase|type|resource|resourcequota|le|app|image|\
           commit_hash|job|operation|tokenName|rateLimited|state|persistentvolumeclaim|\
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
-          validation_reason|strategy|succeeded|target|name|method|code|sp|\
+          validation_reason|strategy|succeeded|target|name|method|code|sp|le|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
           pipeline|pipelinename|pipelinerun|schedule|check"
 ---
@@ -104,6 +104,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_node"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
+        - '{__name__="watcher_workqueue_depth"}'
+        - '{__name__="watcher_client_latency_bucket"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>4: Staging changes from c4f43ebf to a5c31454 on Mon Aug 12 21:20:03 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 4c3586dc..adb20a9c 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -42,12 +42,12 @@ spec:
       url: # added by overlays
       writeRelabelConfigs:
       - action: LabelKeep
-        regex: "__name__|source_environment|source_cluster|namespace|pod|container|\
+        regex: "__name__|source_environment|source_cluster|namespace|app|pod|container|\
           label_pipelines_appstudio_openshift_io_type|health_status|dest_namespace|\
           controller|service|reason|phase|type|resource|resourcequota|le|app|image|\
           commit_hash|job|operation|tokenName|rateLimited|state|persistentvolumeclaim|\
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
-          validation_reason|strategy|succeeded|target|name|method|code|sp|\
+          validation_reason|strategy|succeeded|target|name|method|code|sp|le|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
           pipeline|pipelinename|pipelinerun|schedule|check"
 ---
@@ -104,6 +104,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_node"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
+        - '{__name__="watcher_workqueue_depth"}'
+        - '{__name__="watcher_client_latency_bucket"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>4: Development changes from c4f43ebf to a5c31454 on Mon Aug 12 21:20:03 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 4c3586dc..adb20a9c 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -42,12 +42,12 @@ spec:
       url: # added by overlays
       writeRelabelConfigs:
       - action: LabelKeep
-        regex: "__name__|source_environment|source_cluster|namespace|pod|container|\
+        regex: "__name__|source_environment|source_cluster|namespace|app|pod|container|\
           label_pipelines_appstudio_openshift_io_type|health_status|dest_namespace|\
           controller|service|reason|phase|type|resource|resourcequota|le|app|image|\
           commit_hash|job|operation|tokenName|rateLimited|state|persistentvolumeclaim|\
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
-          validation_reason|strategy|succeeded|target|name|method|code|sp|\
+          validation_reason|strategy|succeeded|target|name|method|code|sp|le|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
           pipeline|pipelinename|pipelinerun|schedule|check"
 ---
@@ -104,6 +104,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_running_taskruns_throttled_by_node"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_sum"}'
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
+        - '{__name__="watcher_workqueue_depth"}'
+        - '{__name__="watcher_client_latency_bucket"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
