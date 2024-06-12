# kustomize changes tracked by commits 
### This file generated at Wed Jun 12 08:02:40 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8bfe8fa5 to a0502729 on Tue Jun 11 14:57:51 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 48a3fc5a..66d6c8b5 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=2dde965fce17ab7d522b5d7aa8b68851052e4b62
+- https://github.com/konflux-ci/application-api/config/crd?ref=2dde965fce17ab7d522b5d7aa8b68851052e4b62
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index f9463fc3..d425c77e 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -18,7 +18,7 @@ kind: Repository
 metadata:
   name: application-api
 spec:
-  url: "https://github.com/redhat-appstudio/application-api"
+  url: "https://github.com/konflux-ci/application-api"
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8bfe8fa5/production/components/tekton-ci/production/kustomize.out.yaml
289c289
<   url: https://github.com/konflux-ci/application-api
---
>   url: https://github.com/redhat-appstudio/application-api 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 8bfe8fa5 to a0502729 on Tue Jun 11 14:57:51 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 48a3fc5a..66d6c8b5 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=2dde965fce17ab7d522b5d7aa8b68851052e4b62
+- https://github.com/konflux-ci/application-api/config/crd?ref=2dde965fce17ab7d522b5d7aa8b68851052e4b62
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index f9463fc3..d425c77e 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -18,7 +18,7 @@ kind: Repository
 metadata:
   name: application-api
 spec:
-  url: "https://github.com/redhat-appstudio/application-api"
+  url: "https://github.com/konflux-ci/application-api"
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8bfe8fa5/staging/components/tekton-ci/staging/kustomize.out.yaml
217c217
<   url: https://github.com/konflux-ci/application-api
---
>   url: https://github.com/redhat-appstudio/application-api 
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
<h3>1: Development changes from 8bfe8fa5 to a0502729 on Tue Jun 11 14:57:51 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 48a3fc5a..66d6c8b5 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=2dde965fce17ab7d522b5d7aa8b68851052e4b62
+- https://github.com/konflux-ci/application-api/config/crd?ref=2dde965fce17ab7d522b5d7aa8b68851052e4b62
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index f9463fc3..d425c77e 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -18,7 +18,7 @@ kind: Repository
 metadata:
   name: application-api
 spec:
-  url: "https://github.com/redhat-appstudio/application-api"
+  url: "https://github.com/konflux-ci/application-api"
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository 
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
<h3>2: Production changes from ed991a2c to 8bfe8fa5 on Tue Jun 11 14:57:44 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index d6c24021..510828be 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ed991a2c to 8bfe8fa5 on Tue Jun 11 14:57:44 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index d6c24021..510828be 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (483 lines)</summary>  

``` 
./commit-ed991a2c/staging/components/release/staging/kustomize.out.yaml
12c12,13
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
39,43c40,42
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
46,51c45,47
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
156,164c152,159
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
167,169c162,165
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
173,175c169,170
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
179,182c174,178
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
187,191c183,187
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
205,210c201,205
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
244a240,245
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
250c251,252
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
276,280c278,280
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
283,288c283,285
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
305,307c302,304
<               pipeline:
<                 description: Pipeline contains all the information about the tenant
<                   Pipeline
---
>               pipelineRef:
>                 description: PipelineRef is an optional reference to a Pipeline that
>                   would be executed before the managed Release Pipeline
326,357c323,325
<                   pipelineRef:
<                     description: PipelineRef is the reference to the Pipeline
<                     properties:
<                       params:
<                         description: Params is a slice of parameters for a given resolver
<                         items:
<                           description: Param defines the parameters for a given resolver
<                             in PipelineRef
<                           properties:
<                             name:
<                               description: Name is the name of the parameter
<                               type: string
<                             value:
<                               description: Value is the value of the parameter
<                               type: string
<                           required:
<                           - name
<                           - value
<                           type: object
<                         type: array
<                       resolver:
<                         description: Resolver is the name of a Tekton resolver to
<                           be used (e.g. git)
<                         type: string
<                     required:
<                     - params
<                     - resolver
<                     type: object
<                   serviceAccountName:
<                     description: ServiceAccount is the ServiceAccount to use during
<                       the execution of the Pipeline
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
---
>                   resolver:
>                     description: Resolver is the name of a Tekton resolver to be used
>                       (e.g. git)
359,376d326
<                   timeouts:
<                     description: Timeouts defines the different Timeouts to use in
<                       the PipelineRun execution
<                     properties:
<                       finally:
<                         description: Finally sets the maximum allowed duration of
<                           this pipeline's finally
<                         type: string
<                       pipeline:
<                         description: Pipeline sets the maximum allowed duration for
<                           execution of the entire pipeline. The sum of individual
<                           timeouts for tasks and finally must not exceed this value.
<                         type: string
<                       tasks:
<                         description: Tasks sets the maximum allowed duration of this
<                           pipeline's tasks
<                         type: string
<                     type: object
378c328,329
<                 - pipelineRef
---
>                 - params
>                 - resolver
382,384c333,334
<                 description: |-
<                   ReleaseGracePeriodDays is the number of days a Release should be kept
<                   This value is used to define the Release ExpirationTime
---
>                 description: ReleaseGracePeriodDays is the number of days a Release
>                   should be kept This value is used to define the Release ExpirationTime
385a336,340
>               serviceAccount:
>                 description: ServiceAccount is the name of the service account to
>                   use in the Pipeline to gain elevated privileges
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
391a347
>             - target
401,409c357,364
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
412,414c367,370
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
418,420c374,375
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
424,427c379,383
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
432,436c388,392
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
450,455c406,410
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
468,470c423,424
<                 description: |-
<                   ReleasePlanAdmission contains the information of the releasePlanAdmission this ReleasePlan is
<                   matched to
---
>                 description: ReleasePlanAdmission contains the information of the
>                   releasePlanAdmission this ReleasePlan is matched to
485a440,445
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
491c451,452
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
523,527c484,486
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
530,535c489,491
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
548,550c504,505
<                 description: |-
<                   GracePeriodDays is the number of days a Release should be kept
<                   This value is used to define the Release ExpirationTime
---
>                 description: GracePeriodDays is the number of days a Release should
>                   be kept This value is used to define the Release ExpirationTime
567,571d521
<               artifacts:
<                 description: Artifacts is an unstructured key used for storing all
<                   the artifacts generated by the managed Release Pipeline
<                 type: object
<                 x-kubernetes-preserve-unknown-fields: true
598,606c548,555
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
609,611c558,561
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
615,617c565,566
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
621,624c570,574
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
629,633c579,583
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
647,652c597,601
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
697,699c646,648
<                     description: |-
<                       RoleBinding contains the namespaced name of the roleBinding created for the managed Release PipelineRun
<                       executed as part of this release
---
>                     description: RoleBinding contains the namespaced name of the roleBinding
>                       created for the managed Release PipelineRun executed as part
>                       of this release
735a685,690
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
741c696,697
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
761,765c717,719
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
768,773c722,724
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
785,787c736,737
<                 description: |-
<                   Debug is the boolean that specifies whether or not the Release Service should run
<                   in debug mode
---
>                 description: Debug is the boolean that specifies whether or not the
>                   Release Service should run in debug mode
790,792c740,742
<                 description: |-
<                   DefaultTimeouts contain the default Tekton timeouts to be used in case they are
<                   not specified in the ReleasePlanAdmission resource.
---
>                 description: DefaultTimeouts contain the default Tekton timeouts to
>                   be used in case they are not specified in the ReleasePlanAdmission
>                   resource.
817a768,773
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
998a955
>   creationTimestamp: null
1815c1772
<         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62
---
>         image: quay.io/redhat-appstudio/release-service:ec5cca73ee273dcfa4b49aa5bde471f824171405
2010a1968
>   creationTimestamp: null
2096a2055
>   creationTimestamp: null 
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
<h3>2: Development changes from ed991a2c to 8bfe8fa5 on Tue Jun 11 14:57:44 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index d6c24021..510828be 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 398822e5 to ed991a2c on Tue Jun 11 14:08:13 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 0c6f60a8..4059480c 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (483 lines)</summary>  

``` 
./commit-398822e5/production/components/release/production/kustomize.out.yaml
12c12,13
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
39,43c40,42
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
46,51c45,47
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
156,164c152,159
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
167,169c162,165
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
173,175c169,170
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
179,182c174,178
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
187,191c183,187
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
205,210c201,205
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
244a240,245
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
250c251,252
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
276,280c278,280
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
283,288c283,285
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
305,307c302,304
<               pipeline:
<                 description: Pipeline contains all the information about the tenant
<                   Pipeline
---
>               pipelineRef:
>                 description: PipelineRef is an optional reference to a Pipeline that
>                   would be executed before the managed Release Pipeline
326,357c323,325
<                   pipelineRef:
<                     description: PipelineRef is the reference to the Pipeline
<                     properties:
<                       params:
<                         description: Params is a slice of parameters for a given resolver
<                         items:
<                           description: Param defines the parameters for a given resolver
<                             in PipelineRef
<                           properties:
<                             name:
<                               description: Name is the name of the parameter
<                               type: string
<                             value:
<                               description: Value is the value of the parameter
<                               type: string
<                           required:
<                           - name
<                           - value
<                           type: object
<                         type: array
<                       resolver:
<                         description: Resolver is the name of a Tekton resolver to
<                           be used (e.g. git)
<                         type: string
<                     required:
<                     - params
<                     - resolver
<                     type: object
<                   serviceAccountName:
<                     description: ServiceAccount is the ServiceAccount to use during
<                       the execution of the Pipeline
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
---
>                   resolver:
>                     description: Resolver is the name of a Tekton resolver to be used
>                       (e.g. git)
359,376d326
<                   timeouts:
<                     description: Timeouts defines the different Timeouts to use in
<                       the PipelineRun execution
<                     properties:
<                       finally:
<                         description: Finally sets the maximum allowed duration of
<                           this pipeline's finally
<                         type: string
<                       pipeline:
<                         description: Pipeline sets the maximum allowed duration for
<                           execution of the entire pipeline. The sum of individual
<                           timeouts for tasks and finally must not exceed this value.
<                         type: string
<                       tasks:
<                         description: Tasks sets the maximum allowed duration of this
<                           pipeline's tasks
<                         type: string
<                     type: object
378c328,329
<                 - pipelineRef
---
>                 - params
>                 - resolver
382,384c333,334
<                 description: |-
<                   ReleaseGracePeriodDays is the number of days a Release should be kept
<                   This value is used to define the Release ExpirationTime
---
>                 description: ReleaseGracePeriodDays is the number of days a Release
>                   should be kept This value is used to define the Release ExpirationTime
385a336,340
>               serviceAccount:
>                 description: ServiceAccount is the name of the service account to
>                   use in the Pipeline to gain elevated privileges
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
391a347
>             - target
401,409c357,364
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
412,414c367,370
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
418,420c374,375
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
424,427c379,383
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
432,436c388,392
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
450,455c406,410
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
468,470c423,424
<                 description: |-
<                   ReleasePlanAdmission contains the information of the releasePlanAdmission this ReleasePlan is
<                   matched to
---
>                 description: ReleasePlanAdmission contains the information of the
>                   releasePlanAdmission this ReleasePlan is matched to
485a440,445
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
491c451,452
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
523,527c484,486
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
530,535c489,491
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
548,550c504,505
<                 description: |-
<                   GracePeriodDays is the number of days a Release should be kept
<                   This value is used to define the Release ExpirationTime
---
>                 description: GracePeriodDays is the number of days a Release should
>                   be kept This value is used to define the Release ExpirationTime
567,571d521
<               artifacts:
<                 description: Artifacts is an unstructured key used for storing all
<                   the artifacts generated by the managed Release Pipeline
<                 type: object
<                 x-kubernetes-preserve-unknown-fields: true
598,606c548,555
<                     state of this API Resource.\n---\nThis struct is intended for
<                     direct use as an array at the field path .status.conditions.  For
<                     example,\n\n\n\ttype FooStatus struct{\n\t    // Represents the
<                     observations of a foo's current state.\n\t    // Known .status.conditions.type
<                     are: \"Available\", \"Progressing\", and \"Degraded\"\n\t    //
<                     +patchMergeKey=type\n\t    // +patchStrategy=merge\n\t    // +listType=map\n\t
<                     \   // +listMapKey=type\n\t    Conditions []metav1.Condition `json:\"conditions,omitempty\"
<                     patchStrategy:\"merge\" patchMergeKey:\"type\" protobuf:\"bytes,1,rep,name=conditions\"`\n\n\n\t
<                     \   // other fields\n\t}"
---
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
609,611c558,561
<                       description: |-
<                         lastTransitionTime is the last time the condition transitioned from one status to another.
<                         This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
---
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
615,617c565,566
<                       description: |-
<                         message is a human readable message indicating details about the transition.
<                         This may be an empty string.
---
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
621,624c570,574
<                       description: |-
<                         observedGeneration represents the .metadata.generation that the condition was set based upon.
<                         For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
<                         with respect to the current state of the instance.
---
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
629,633c579,583
<                       description: |-
<                         reason contains a programmatic identifier indicating the reason for the condition's last transition.
<                         Producers of specific condition types may define expected values and meanings for this field,
<                         and whether the values are considered a guaranteed API.
<                         The value should be a CamelCase string.
---
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
647,652c597,601
<                       description: |-
<                         type of condition in CamelCase or in foo.example.com/CamelCase.
<                         ---
<                         Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
<                         useful (see .node.status.conditions), the ability to deconflict is important.
<                         The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
---
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
697,699c646,648
<                     description: |-
<                       RoleBinding contains the namespaced name of the roleBinding created for the managed Release PipelineRun
<                       executed as part of this release
---
>                     description: RoleBinding contains the namespaced name of the roleBinding
>                       created for the managed Release PipelineRun executed as part
>                       of this release
735a685,690
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
741c696,697
<     controller-gen.kubebuilder.io/version: v0.14.0
---
>     controller-gen.kubebuilder.io/version: v0.8.0
>   creationTimestamp: null
761,765c717,719
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
768,773c722,724
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
785,787c736,737
<                 description: |-
<                   Debug is the boolean that specifies whether or not the Release Service should run
<                   in debug mode
---
>                 description: Debug is the boolean that specifies whether or not the
>                   Release Service should run in debug mode
790,792c740,742
<                 description: |-
<                   DefaultTimeouts contain the default Tekton timeouts to be used in case they are
<                   not specified in the ReleasePlanAdmission resource.
---
>                 description: DefaultTimeouts contain the default Tekton timeouts to
>                   be used in case they are not specified in the ReleasePlanAdmission
>                   resource.
817a768,773
> status:
>   acceptedNames:
>     kind: ""
>     plural: ""
>   conditions: []
>   storedVersions: []
998a955
>   creationTimestamp: null
1815c1772
<         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62
---
>         image: quay.io/redhat-appstudio/release-service:ec5cca73ee273dcfa4b49aa5bde471f824171405
2010a1968
>   creationTimestamp: null
2096a2055
>   creationTimestamp: null 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 398822e5 to ed991a2c on Tue Jun 11 14:08:13 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 0c6f60a8..4059480c 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
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
<h3>3: Development changes from 398822e5 to ed991a2c on Tue Jun 11 14:08:13 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 0c6f60a8..4059480c 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
+  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
+    newTag: 386031571e33e33fa211b1029b359c93ee363c62
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from bff38c19 to 398822e5 on Tue Jun 11 13:11:39 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ec2e4158..ca57cc61 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -19,11 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -40,11 +40,11 @@ spec:
         include:
           - '*'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -63,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -84,11 +84,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -106,11 +106,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index ae47d50e..708b7552 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f575b6dcf2c4768b9230756c1c12cdc0c71057c5
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=62077017c96466f58162b75789dd18b0e49d43bb
+      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-bff38c19/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
378c378
<   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
---
>   verify_ec_task_git_revision: 62077017c96466f58162b75789dd18b0e49d43bb
608c608
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
633c633
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
657c657
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
684c684
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
729c729
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from bff38c19 to 398822e5 on Tue Jun 11 13:11:39 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ec2e4158..ca57cc61 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -19,11 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -40,11 +40,11 @@ spec:
         include:
           - '*'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -63,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -84,11 +84,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -106,11 +106,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index ae47d50e..708b7552 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f575b6dcf2c4768b9230756c1c12cdc0c71057c5
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=62077017c96466f58162b75789dd18b0e49d43bb
+      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-bff38c19/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
378c378
<   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
---
>   verify_ec_task_git_revision: 62077017c96466f58162b75789dd18b0e49d43bb
608c608
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
633c633
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
657c657
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
684c684
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
729c729
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5 
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
<h3>4: Development changes from bff38c19 to 398822e5 on Tue Jun 11 13:11:39 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index ec2e4158..ca57cc61 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -19,11 +19,11 @@ spec:
         include:
           - '@slsa3'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -40,11 +40,11 @@ spec:
         include:
           - '*'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -63,11 +63,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -84,11 +84,11 @@ spec:
         include:
           - '@redhat'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -106,11 +106,11 @@ spec:
           - '@minimal'
           - '@slsa3'
       data:
-        - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
+        - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index ae47d50e..708b7552 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=f575b6dcf2c4768b9230756c1c12cdc0c71057c5
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9bacde26dcd1893dc3482752c96d8b882b3f2d7e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=62077017c96466f58162b75789dd18b0e49d43bb
+      - verify_ec_task_git_revision=c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-bff38c19/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:c9fbfa05ff4eaec6998777302d11a1f3a1cf709f@sha256:25faf174db78c737a596e8592bccdb2ad02f852611f9aae534ec521750524fc8
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62077017c96466f58162b75789dd18b0e49d43bb@sha256:ba43a492aa6aab9d788cb10e4f9ed383f84def26e8a404ab86d8081eeda8ba2f
378c378
<   verify_ec_task_git_revision: c9fbfa05ff4eaec6998777302d11a1f3a1cf709f
---
>   verify_ec_task_git_revision: 62077017c96466f58162b75789dd18b0e49d43bb
608c608
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
633c633
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
657c657
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
684c684
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5c0e2bf@sha256:789c77d54d5b4786a5f507e8a28e7bfa19bdbe5162ac0a0a7f88f5d1d6e42156
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-eebc52b@sha256:c53aa7b3c98a2a7e1c26135480118e3e7a7886c389d5d837ebfb306997df2398
729c729
<     - oci::quay.io/redhat-appstudio-tekton-catalog/data-acceptable-bundles:latest
---
>     - oci::quay.io/konflux-ci/tekton-catalog/data-acceptable-bundles:latest
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-d74116f@sha256:64e3ba81c0996f05cd8f982df4d2c2d15c99435070a929dd38c7e47d04a6306c
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-5ecd517@sha256:e4947f3c658bf34ac9b66e91e8bdcf3ab52fd634d95949d958829edfee24e4e5 
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
