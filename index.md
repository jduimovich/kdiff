# kustomize changes tracked by commits 
### This file generated at Tue Aug  6 16:06:39 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b22c3e3d to c15a5eff on Tue Aug 6 14:42:41 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index c3108c0c..8bffd78f 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.2
+        targetRevision: 0.0.3
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b22c3e3d/production/components/cluster-as-a-service/production/kustomize.out.yaml
234c234
<         targetRevision: 0.0.3
---
>         targetRevision: 0.0.2 
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
<h3>1: Staging changes from b22c3e3d to c15a5eff on Tue Aug 6 14:42:41 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index c3108c0c..8bffd78f 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.2
+        targetRevision: 0.0.3
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b22c3e3d/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
236c236
<         targetRevision: 0.0.3
---
>         targetRevision: 0.0.2 
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
<h3>1: Development changes from b22c3e3d to c15a5eff on Tue Aug 6 14:42:41 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index c3108c0c..8bffd78f 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.0.2
+        targetRevision: 0.0.3
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b22c3e3d/development/components/cluster-as-a-service/development/kustomize.out.yaml
167c167
<         targetRevision: 0.0.3
---
>         targetRevision: 0.0.2 
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
<h3>2: Production changes from 634b7be2 to b22c3e3d on Tue Aug 6 13:42:13 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
deleted file mode 100644
index 4db7cf76..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - rh-managed-workspaces-config.yaml
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
deleted file mode 100644
index e4b9f956..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/managed/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: rh-managed-workspaces-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
diff --git a/argo-cd-apps/base/tenants-config/kustomization.yaml b/argo-cd-apps/base/tenants-config/kustomization.yaml
deleted file mode 100644
index b98cae12..00000000
--- a/argo-cd-apps/base/tenants-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - tenants-config.yaml
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
deleted file mode 100644
index 71915803..00000000
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ /dev/null
@@ -1,42 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/tenants/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: tenants-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
-      ignoreDifferences:
-        - group: appstudio.redhat.com
-          kind: Component
-          jsonPointers:
-            - /metadata/annotations/build.appstudio.openshift.io~1request
-            - /metadata/annotations/image.redhat.com~1image
-            - /metadata/annotations/image.redhat.com~1generate
-        - group: appstudio.redhat.com
-          kind: ImageRepository
-          jsonPointers:
-            - /metadata/annotations/image-controller.appstudio.redhat.com~1update-component-image
-        - group: appstudio.redhat.com
-          kind: ReleasePlan
-          jsonPointers:
-            - /metadata/labels/release.appstudio.openshift.io~1author
-            - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index cb0a3a09..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,17 +17,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-$patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 9d73892d..ad0eb82e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -7,9 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
-  - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
-  - ../../base/rh-managed-workspaces-config
   - ../../base/toolchain-member
 
 namespace: konflux-public-production 
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
<h3>2: Staging changes from 634b7be2 to b22c3e3d on Tue Aug 6 13:42:13 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
deleted file mode 100644
index 4db7cf76..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - rh-managed-workspaces-config.yaml
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
deleted file mode 100644
index e4b9f956..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/managed/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: rh-managed-workspaces-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
diff --git a/argo-cd-apps/base/tenants-config/kustomization.yaml b/argo-cd-apps/base/tenants-config/kustomization.yaml
deleted file mode 100644
index b98cae12..00000000
--- a/argo-cd-apps/base/tenants-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - tenants-config.yaml
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
deleted file mode 100644
index 71915803..00000000
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ /dev/null
@@ -1,42 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/tenants/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: tenants-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
-      ignoreDifferences:
-        - group: appstudio.redhat.com
-          kind: Component
-          jsonPointers:
-            - /metadata/annotations/build.appstudio.openshift.io~1request
-            - /metadata/annotations/image.redhat.com~1image
-            - /metadata/annotations/image.redhat.com~1generate
-        - group: appstudio.redhat.com
-          kind: ImageRepository
-          jsonPointers:
-            - /metadata/annotations/image-controller.appstudio.redhat.com~1update-component-image
-        - group: appstudio.redhat.com
-          kind: ReleasePlan
-          jsonPointers:
-            - /metadata/labels/release.appstudio.openshift.io~1author
-            - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index cb0a3a09..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,17 +17,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-$patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 9d73892d..ad0eb82e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -7,9 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
-  - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
-  - ../../base/rh-managed-workspaces-config
   - ../../base/toolchain-member
 
 namespace: konflux-public-production 
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
<h3>2: Development changes from 634b7be2 to b22c3e3d on Tue Aug 6 13:42:13 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
deleted file mode 100644
index 4db7cf76..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - rh-managed-workspaces-config.yaml
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
deleted file mode 100644
index e4b9f956..00000000
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ /dev/null
@@ -1,26 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/managed/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: rh-managed-workspaces-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
diff --git a/argo-cd-apps/base/tenants-config/kustomization.yaml b/argo-cd-apps/base/tenants-config/kustomization.yaml
deleted file mode 100644
index b98cae12..00000000
--- a/argo-cd-apps/base/tenants-config/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - tenants-config.yaml
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
deleted file mode 100644
index 71915803..00000000
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ /dev/null
@@ -1,42 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-spec:
-  syncPolicy:
-    preserveResourcesOnDeletion: true
-  generators:
-    - git:
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        revision: main
-        directories:
-          - path: auto-generated/cluster/stone-prd-rh01/tenants/*
-  template:
-    metadata:
-      name: '{{path.basename}}-{{path[2]}}'
-    spec:
-      # The project is created using app-interface
-      project: tenants-config
-      source:
-        path: '{{path}}'
-        repoURL: https://github.com/redhat-appstudio/tenants-config
-        targetRevision: main
-      destination:
-        namespace: '{{path.basename}}'
-        name: '{{path[2]}}'
-      ignoreDifferences:
-        - group: appstudio.redhat.com
-          kind: Component
-          jsonPointers:
-            - /metadata/annotations/build.appstudio.openshift.io~1request
-            - /metadata/annotations/image.redhat.com~1image
-            - /metadata/annotations/image.redhat.com~1generate
-        - group: appstudio.redhat.com
-          kind: ImageRepository
-          jsonPointers:
-            - /metadata/annotations/image-controller.appstudio.redhat.com~1update-component-image
-        - group: appstudio.redhat.com
-          kind: ReleasePlan
-          jsonPointers:
-            - /metadata/labels/release.appstudio.openshift.io~1author
-            - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index cb0a3a09..98b85d8e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -17,17 +17,3 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tenants-config
-$patch: delete
----
-# See RHTAPWATCH-1188
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: rh-managed-workspaces-config
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 9d73892d..ad0eb82e 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -7,9 +7,7 @@ resources:
   - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
-  - ../../base/tenants-config
   - ../../base/cluster-secret-store-rh
-  - ../../base/rh-managed-workspaces-config
   - ../../base/toolchain-member
 
 namespace: konflux-public-production 
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
<h3>3: Production changes from 50266d7d to 634b7be2 on Tue Aug 6 13:06:44 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 951e21a0..a2052429 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 94397991046d904227714d035a99410aa679e97e
+    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (232 lines)</summary>  

``` 
./commit-50266d7d/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
417,419c417
<       "ignorePresets": [
<         ":dependencyDashboard"
<       ],
---
>       "ignorePresets": [":dependencyDashboard"],
424,442c422
<       "enabledManagers": [
<         "tekton",
<         "dockerfile",
<         "rpm",
<         "git-submodules",
<         "regex",
<         "argocd",
<         "crossplane",
<         "fleet",
<         "flux",
<         "helm-requirements",
<         "helm-values",
<         "helmfile",
<         "helmsman",
<         "helmv3",
<         "jsonnet-bundler",
<         "kubernetes",
<         "kustomize"
<       ],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
444,450c424,425
<         "fileMatch": [
<           "\\.yaml$",
<           "\\.yml$"
<         ],
<         "includePaths": [
<           ".tekton/**"
<         ],
---
>         "fileMatch": ["\\.yaml$","\\.yml$"],
>         "includePaths": [".tekton/**"],
468,470c443
<             "prBodyDefinitions": {
<               "Notes": "{{#if (or (containsString updateType 'minor') (containsString updateType 'major'))}}:warning:[migration](https://github.com/redhat-appstudio/build-definitions/blob/main/task/{{{replace '^quay.io/(redhat-appstudio-tekton-catalog|konflux-ci/tekton-catalog)/task-' '' packageName}}}/{{{newVersion}}}/MIGRATION.md):warning:{{/if}}"
<             },
---
>             "prBodyDefinitions": { "Notes": "{{#if (or (containsString updateType 'minor') (containsString updateType 'major'))}}:warning:[migration](https://github.com/redhat-appstudio/build-definitions/blob/main/task/{{{replace '^quay.io/(redhat-appstudio-tekton-catalog|konflux-ci/tekton-catalog)/task-' '' packageName}}}/{{{newVersion}}}/MIGRATION.md):warning:{{/if}}" },
477,481d449
<       "dockerfile": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
483,485c451
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
---
>         "enabled": true
492,542c458
<         "schedule": [
<           "at any time"
<         ]
<       },
<       "argocd": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "crossplane": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "fleet": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "flux": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helm-requirements": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helm-values": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmfile": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmsman": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmv3": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "jsonnet-bundler": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "kubernetes": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "kustomize": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
---
>         "schedule": ["at any time"]
624c540
<         image: quay.io/konflux-ci/mintmaker:bc582566fb7289479284adf75f2c51c0d56b9207
---
>         image: quay.io/konflux-ci/mintmaker:94397991046d904227714d035a99410aa679e97e
./commit-50266d7d/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
417,419c417
<       "ignorePresets": [
<         ":dependencyDashboard"
<       ],
---
>       "ignorePresets": [":dependencyDashboard"],
424,442c422
<       "enabledManagers": [
<         "tekton",
<         "dockerfile",
<         "rpm",
<         "git-submodules",
<         "regex",
<         "argocd",
<         "crossplane",
<         "fleet",
<         "flux",
<         "helm-requirements",
<         "helm-values",
<         "helmfile",
<         "helmsman",
<         "helmv3",
<         "jsonnet-bundler",
<         "kubernetes",
<         "kustomize"
<       ],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
444,450c424,425
<         "fileMatch": [
<           "\\.yaml$",
<           "\\.yml$"
<         ],
<         "includePaths": [
<           ".tekton/**"
<         ],
---
>         "fileMatch": ["\\.yaml$","\\.yml$"],
>         "includePaths": [".tekton/**"],
468,470c443
<             "prBodyDefinitions": {
<               "Notes": "{{#if (or (containsString updateType 'minor') (containsString updateType 'major'))}}:warning:[migration](https://github.com/redhat-appstudio/build-definitions/blob/main/task/{{{replace '^quay.io/(redhat-appstudio-tekton-catalog|konflux-ci/tekton-catalog)/task-' '' packageName}}}/{{{newVersion}}}/MIGRATION.md):warning:{{/if}}"
<             },
---
>             "prBodyDefinitions": { "Notes": "{{#if (or (containsString updateType 'minor') (containsString updateType 'major'))}}:warning:[migration](https://github.com/redhat-appstudio/build-definitions/blob/main/task/{{{replace '^quay.io/(redhat-appstudio-tekton-catalog|konflux-ci/tekton-catalog)/task-' '' packageName}}}/{{{newVersion}}}/MIGRATION.md):warning:{{/if}}" },
477,481d449
<       "dockerfile": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
483,485c451
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
---
>         "enabled": true
492,542c458
<         "schedule": [
<           "at any time"
<         ]
<       },
<       "argocd": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "crossplane": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "fleet": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "flux": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helm-requirements": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helm-values": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmfile": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmsman": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmv3": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "jsonnet-bundler": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "kubernetes": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "kustomize": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
---
>         "schedule": ["at any time"]
624c540
<         image: quay.io/konflux-ci/mintmaker:bc582566fb7289479284adf75f2c51c0d56b9207
---
>         image: quay.io/konflux-ci/mintmaker:94397991046d904227714d035a99410aa679e97e 
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
<h3>3: Staging changes from 50266d7d to 634b7be2 on Tue Aug 6 13:06:44 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 951e21a0..a2052429 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 94397991046d904227714d035a99410aa679e97e
+    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>3: Development changes from 50266d7d to 634b7be2 on Tue Aug 6 13:06:44 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 951e21a0..a2052429 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 94397991046d904227714d035a99410aa679e97e
+    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>4: Production changes from 7d06474e to 50266d7d on Tue Aug 6 11:27:28 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5436cd5f..5a15e4ed 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -21,6 +21,9 @@ images:
     newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
+  # temp bump of exporter only until OCP/openshift-pipelines upgrade is sorted out
+  - name: quay.io/konflux-ci/pipeline-service-exporter
+    newTag: 9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
 
 patches:
   # - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 56cb5b72..f24cec2b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ad33c75b..3e4ede61 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 581644d7..cc5eead9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0a860a11..aa027af3 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-7d06474e/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1390c1390
<         image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
---
>         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
./commit-7d06474e/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1390c1390
<         image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
---
>         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
./commit-7d06474e/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1390c1390
<         image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
---
>         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
./commit-7d06474e/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1390c1390
<         image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
---
>         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e 
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
<h3>4: Staging changes from 7d06474e to 50266d7d on Tue Aug 6 11:27:28 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5436cd5f..5a15e4ed 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -21,6 +21,9 @@ images:
     newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
+  # temp bump of exporter only until OCP/openshift-pipelines upgrade is sorted out
+  - name: quay.io/konflux-ci/pipeline-service-exporter
+    newTag: 9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
 
 patches:
   # - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 56cb5b72..f24cec2b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ad33c75b..3e4ede61 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 581644d7..cc5eead9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0a860a11..aa027af3 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>4: Development changes from 7d06474e to 50266d7d on Tue Aug 6 11:27:28 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5436cd5f..5a15e4ed 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -21,6 +21,9 @@ images:
     newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
+  # temp bump of exporter only until OCP/openshift-pipelines upgrade is sorted out
+  - name: quay.io/konflux-ci/pipeline-service-exporter
+    newTag: 9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
 
 patches:
   # - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 56cb5b72..f24cec2b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ad33c75b..3e4ede61 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 581644d7..cc5eead9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0a860a11..aa027af3 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
