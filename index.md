# kustomize changes tracked by commits 
### This file generated at Thu May 30 20:02:26 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 73f11a99 to c8db813f on Thu May 30 16:01:52 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8bf4767b..e52827ad 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9b3e82e1..1db3c09d 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 73f11a99 to c8db813f on Thu May 30 16:01:52 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8bf4767b..e52827ad 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9b3e82e1..1db3c09d 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-73f11a99/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1456c1456
<         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>         image: quay.io/redhat-appstudio/integration-service:dc70af6ff2ea96fed344a64020bbecc2a808c088
1547c1547
<             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>             image: quay.io/redhat-appstudio/integration-service:dc70af6ff2ea96fed344a64020bbecc2a808c088 
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
<h3>1: Development changes from 73f11a99 to c8db813f on Thu May 30 16:01:52 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8bf4767b..e52827ad 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9b3e82e1..1db3c09d 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-73f11a99/development/components/integration/development/kustomize.out.yaml
1454c1454
<         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>         image: quay.io/redhat-appstudio/integration-service:dc70af6ff2ea96fed344a64020bbecc2a808c088
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>             image: quay.io/redhat-appstudio/integration-service:dc70af6ff2ea96fed344a64020bbecc2a808c088 
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

<div>
<h3>2: Production changes from afe6ffc3 to 73f11a99 on Thu May 30 13:37:23 2024 </h3>  
 
<details> 
<summary>Git Diff (584 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
similarity index 83%
rename from argo-cd-apps/base/eaas/some-component/some-component.yaml
rename to argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
index f8382098..4a3973b5 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
@@ -1,7 +1,7 @@
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
-  name: some-component
+  name: cluster-as-a-service
 spec:
   generators:
     - merge:
@@ -10,14 +10,14 @@ spec:
         generators:
           - clusters:
               values:
-                sourceRoot: components/some-component
+                sourceRoot: components/cluster-as-a-service
                 environment: staging
                 clusterDir: ""
           - list:
               elements: []
   template:
     metadata:
-      name: some-component-{{nameNormalized}}
+      name: cluster-as-a-service-{{nameNormalized}}
     spec:
       project: default
       source:
@@ -25,7 +25,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: some-component
+        namespace: cluster-as-a-service
         server: "{{server}}"
       syncPolicy:
         automated:
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
similarity index 83%
rename from argo-cd-apps/base/eaas/some-component/kustomization.yaml
rename to argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
index 43984fb7..ac035ef4 100644
--- a/argo-cd-apps/base/eaas/some-component/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - some-component.yaml
+  - cluster-as-a-service.yaml
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
index 00512f27..66de0310 100644
--- a/argo-cd-apps/base/eaas/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - some-component
+  - cluster-as-a-service
 components:
   - ../../k-components/deploy-to-eaas-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..77a2a33c
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 2e74eb4c..5aca14d8 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - ../../base/repository-validator
   - ../../base/keycloak
   - ../../base/ui
+  - ../../base/eaas
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -151,3 +152,10 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  # The 'appstudio.redhat.com/eaas-cluster' cluster role label must also be present for
+  # cluster-as-a-service to be deployed.
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 3c6c2f6c..b04fa6fc 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
-  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
@@ -182,3 +181,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 17414faf..676dddba 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,7 +3,6 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
-  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/cluster-as-a-service/OWNERS b/components/cluster-as-a-service/OWNERS
new file mode 100644
index 00000000..4a5b5cd7
--- /dev/null
+++ b/components/cluster-as-a-service/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- amisstea
+- ifireball
+- avi-biton
+- yftacherzog
+- hmariset
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
new file mode 100644
index 00000000..8cd62c0c
--- /dev/null
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: argoproj.io/v1beta1
+kind: ArgoCD
+metadata:
+ name: openshift-gitops
+ namespace: openshift-gitops
+spec:
+ resourceTrackingMethod: annotation
diff --git a/components/some-component/production/kustomization.yaml b/components/cluster-as-a-service/base/kustomization.yaml
similarity index 83%
rename from components/some-component/production/kustomization.yaml
rename to components/cluster-as-a-service/base/kustomization.yaml
index ea80794f..58afbe87 100644
--- a/components/some-component/production/kustomization.yaml
+++ b/components/cluster-as-a-service/base/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+  - argocd.yaml
diff --git a/components/some-component/staging/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
similarity index 86%
rename from components/some-component/staging/kustomization.yaml
rename to components/cluster-as-a-service/development/kustomization.yaml
index ea80794f..736651a7 100644
--- a/components/some-component/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+  - ../base
diff --git a/components/some-component/base/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
similarity index 66%
rename from components/some-component/base/kustomization.yaml
rename to components/cluster-as-a-service/production/kustomization.yaml
index 0e7c5a02..d0b07b07 100644
--- a/components/some-component/base/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -2,4 +2,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- namespace.yaml
+  - ../base
+  - ../../openshift-gitops
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
new file mode 100644
index 00000000..d0b07b07
--- /dev/null
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - ../../openshift-gitops
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
index 00bb2fac..8bab205d 100644
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
+++ b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../../base
+- ../../../../openshift-gitops/cluster-rbac
 - subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
index 00bb2fac..8bab205d 100644
--- a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
+++ b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../../base
+- ../../../../openshift-gitops/cluster-rbac
 - subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrole.yaml b/components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrole.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrole.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrole.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml b/components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrole.yaml b/components/openshift-gitops/cluster-rbac/argocd-server-clusterrole.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrole.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-server-clusterrole.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrolebinding.yaml b/components/openshift-gitops/cluster-rbac/argocd-server-clusterrolebinding.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrolebinding.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-server-clusterrolebinding.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/kustomization.yaml b/components/openshift-gitops/cluster-rbac/kustomization.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/kustomization.yaml
rename to components/openshift-gitops/cluster-rbac/kustomization.yaml
diff --git a/components/gitops/openshift-gitops/base/kustomization.yaml b/components/openshift-gitops/kustomization.yaml
similarity index 82%
rename from components/gitops/openshift-gitops/base/kustomization.yaml
rename to components/openshift-gitops/kustomization.yaml
index 53dc6b62..592b3f12 100644
--- a/components/gitops/openshift-gitops/base/kustomization.yaml
+++ b/components/openshift-gitops/kustomization.yaml
@@ -2,4 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- subscription.yaml
 - cluster-rbac/
diff --git a/components/openshift-gitops/subscription.yaml b/components/openshift-gitops/subscription.yaml
new file mode 100644
index 00000000..1490578b
--- /dev/null
+++ b/components/openshift-gitops/subscription.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: openshift-gitops-operator
+  namespace: openshift-operators
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: gitops-1.12
+  installPlanApproval: Automatic
+  name: openshift-gitops-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  config:
+    env:
+      - name: ARGOCD_CLUSTER_CONFIG_NAMESPACES
+        value: openshift-gitops
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
deleted file mode 100644
index 1b5edb88..00000000
--- a/components/some-component/base/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: some-component
diff --git a/hack/bootstrap-cluster.sh b/hack/bootstrap-cluster.sh
index f0e2ed78..c21b065a 100755
--- a/hack/bootstrap-cluster.sh
+++ b/hack/bootstrap-cluster.sh
@@ -3,7 +3,7 @@
 ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
 
 main() {
-    local mode keycloak toolchain obo
+    local mode keycloak toolchain obo eaas
     while [[ $# -gt 0 ]]; do
         key=$1
         case $key in
@@ -19,6 +19,10 @@ main() {
             obo="--obo"
             shift
             ;;
+        --eaas | -e)
+            eaas="--eaas"
+            shift
+            ;;
         preview | upstream)
             mode=$1
             shift
@@ -58,20 +62,26 @@ main() {
         fi
         ;;
     "preview")
-        $ROOT/hack/preview.sh $toolchain $keycloak $obo
+        $ROOT/hack/preview.sh $toolchain $keycloak $obo $eaas
         ;;
     esac
+
+    # OIDC secrets must be deployed after the MCE operator creates the local-cluster namespace
+    if [ ! -z "$eaas" ]; then
+        "${ROOT}/hack/bootstrap-eaas-cluster.sh"
+    fi
 }
 
 print_help() {
-    echo "Usae: $0 MODE [-t|--toolchain] [-kc|--keycloak] [-o|--obo] [-h|--help]"
+    echo "Usae: $0 MODE [-t|--toolchain] [-kc|--keycloak] [-o|--obo] [-e|--eaas] [-h|--help]"
     echo "  MODE             upstream/preview (default: upstream)"
     echo "  -t, --toolchain  (only in preview mode) Install toolchain operators"
     echo "  -kc, --keycloak  (only in preview mode) Configure the toolchain operator to use keycloak deployed on the cluster"
     echo "  -o, --obo        (only in preview mode) Install Observability operator and Prometheus instance for federation"
+    echo "  -e  --eaas       (only in preview mode) Install environment as a service components"
     echo "  -h, --help       Show this help message and exit"
     echo
-    echo "Example usage: \`$0 preview --toolchain --keycloak --obo"
+    echo "Example usage: \`$0 preview --toolchain --keycloak --obo --eaas"
 }
 
 if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
diff --git a/hack/bootstrap-eaas-cluster.sh b/hack/bootstrap-eaas-cluster.sh
new file mode 100755
index 00000000..ef7bd0e4
--- /dev/null
+++ b/hack/bootstrap-eaas-cluster.sh
@@ -0,0 +1,26 @@
+#!/bin/bash -e
+
+declare -r ROOT="${BASH_SOURCE[0]%/*}"
+
+main() {
+    load_global_vars
+    "${ROOT}/secret-creator/create-eaas-secrets.sh" \
+      "$EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID" \
+      "$EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY" \
+      "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION" \
+      "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET" \
+      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH" \
+      "$EAAS_HYPERSHIFT_BASE_DOMAIN"
+}
+
+load_global_vars() {
+    local vars_file="$ROOT/preview.env"
+
+    if [[ -f "$vars_file" ]]; then
+        source "$vars_file"
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index d671715f..2e19e223 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -9,9 +9,7 @@ main() {
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
-    add_role_binding
     print_url
-
 }
 
 verify_permissions() {
@@ -24,9 +22,8 @@ verify_permissions() {
 }
 
 create_subscription() {
-
     echo "Installing the OpenShift GitOps operator subscription:"
-    kubectl apply -k "$ROOT/components/gitops/openshift-gitops/overlays/production-and-dev"
+    kubectl apply -k "$ROOT/components/openshift-gitops"
     echo -n "Waiting for default project (and namespace) to exist: "
     while ! kubectl get appproject/default -n openshift-gitops &>/dev/null; do
         echo -n .
@@ -87,11 +84,6 @@ spec:
 ' --type=merge
 }
 
-add_role_binding() {
-    echo "Add Role/RoleBindings for OpenShift GitOps:"
-    kubectl apply --kustomize $ROOT/components/gitops/openshift-gitops/base/cluster-rbac
-}
-
 print_url() {
     local argo_cd_route argo_cd_url
 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index b946edd4..d8ab635d 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -142,4 +142,12 @@ export QD_OAUTH_CLIENT_SECRET=
 # CI Helper App
 export CI_HELPER_GITHUB_APP_INTEGRATION_ID=
 export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
-export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
\ No newline at end of file
+export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
+
+# Environment as a service
+export EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID=
+export EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY=
+export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET=
+export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION=
+export EAAS_HYPERSHIFT_PULL_SECRET_PATH=
+export EAAS_HYPERSHIFT_BASE_DOMAIN=
diff --git a/hack/preview.sh b/hack/preview.sh
index 98706da4..51865b01 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -5,17 +5,20 @@ ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/..
 
 # Print help message
 function print_help() {
-  echo "Usage: $0 MODE [--toolchain] [--keycloak] [--obo] [-h|--help]"
+  echo "Usage: $0 MODE [--toolchain] [--keycloak] [--obo] [--eaas] [-h|--help]"
   echo "  MODE             upstream/preview (default: upstream)"
   echo "  --toolchain  (only in preview mode) Install toolchain operators"
   echo "  --keycloak   (only in preview mode) Configure the toolchain operator to use keycloak deployed on the cluster"
   echo "  --obo        (only in preview mode) Install Observability operator and Prometheus instance for federation"
+  echo "  --eaas       (only in preview mode) Install environment as a service components"
   echo
-  echo "Example usage: \`$0 --toolchain --keycloak --obo"
+  echo "Example usage: \`$0 --toolchain --keycloak --obo --eaas"
 }
+
 TOOLCHAIN=false
 KEYCLOAK=false
 OBO=false
+EAAS=false
 
 while [[ $# -gt 0 ]]; do
   key=$1
@@ -32,6 +35,10 @@ while [[ $# -gt 0 ]]; do
       OBO=true
       shift
       ;;
+    --eaas)
+      EAAS=true
+      shift
+      ;;
     -h|--help)
       print_help
       exit 0
@@ -42,8 +49,6 @@ while [[ $# -gt 0 ]]; do
   esac
 done
 
-
-
 if $TOOLCHAIN ; then
   echo "Deploying toolchain"
   "$ROOT/hack/sandbox-development-mode.sh"
@@ -125,6 +130,12 @@ if $OBO ; then
   yq -i '.resources += ["monitoringstack/"]' $ROOT/components/monitoring/prometheus/development/kustomization.yaml
 fi
 
+if $EAAS; then
+  echo "Enabling EaaS cluster role"
+  yq -i '.components += ["../../../k-components/assign-eaas-role-to-local-cluster"]' \
+    $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\
diff --git a/hack/secret-creator/create-eaas-secrets.sh b/hack/secret-creator/create-eaas-secrets.sh
new file mode 100755
index 00000000..e0df4eb0
--- /dev/null
+++ b/hack/secret-creator/create-eaas-secrets.sh
@@ -0,0 +1,70 @@
+#!/bin/bash
+set -eo pipefail
+
+main() {
+  echo "Setting secrets for EaaS (Environment as a Service)"
+
+  local aws_access_key_id=${1:?"AWS access key id was not provided"}
+  local aws_secret_access_key=${2:?"AWS secret access key was not provided"}
+  local oidc_provider_s3_region=${3:?"OIDC provider S3 region was not provided"}
+  local oidc_provider_s3_bucket=${4:?"OIDC provider S3 bucket was not provided"}
+  local pull_secret_path=${5:?"OpenShift pull secret path was not provided"}
+  local base_domain=${6:?"Route53 base domain was not provided"}
+
+  create_namespace "local-cluster"
+  create_namespace "clusters"
+  create_oidc_provider_s3_secret \
+    $aws_access_key_id \
+    $aws_secret_access_key \
+    $oidc_provider_s3_region \
+    $oidc_provider_s3_bucket
+  create_hypershift_credentials \
+    $aws_access_key_id \
+    $aws_secret_access_key \
+    $pull_secret_path \
+    $base_domain
+}
+
+create_namespace() {
+  echo "Creating namespace '$1'"
+  kubectl create namespace $1 -o yaml --save-config=true --dry-run=client | kubectl apply -f -
+}
+
+create_oidc_provider_s3_secret() {
+  echo "Creating hypershift OIDC provider S3 secret"
+  local creds=$(mktemp)
+  echo "[default]" >> $creds
+  echo "aws_access_key_id=$1" >> $creds
+  echo "aws_secret_access_key=$2" >> $creds
+  kubectl create secret generic hypershift-operator-oidc-provider-s3-credentials \
+    --from-file=credentials=$creds \
+    --from-literal=region=$3 \
+    --from-literal=bucket=$4 \
+    --save-config=true \
+    --dry-run=client \
+    -n local-cluster \
+    -o yaml \
+    | kubectl apply -f -
+  rm "$creds"
+}
+
+create_hypershift_credentials() {
+  echo "Creating hypershift secret"
+  kubectl create secret generic hypershift \
+    --from-literal=aws_access_key_id=$1 \
+    --from-literal=aws_secret_access_key=$2 \
+    --from-file=pullSecret=$3 \
+    --from-literal=baseDomain=$4 \
+    --from-literal=ssh-privatekey="not yet implemented" \
+    --from-literal=ssh-publickey="not yet implemented" \
+    --save-config=true \
+    --dry-run=client \
+    -n clusters \
+    -o json \
+    | jq '.metadata.labels |= {"hypershift.openshift.io/safe-to-delete-with-cluster": "false"}' \
+    | kubectl apply -f -
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+  main "$@"
+fi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-73f11a99/production/components: cluster-as-a-service
./commit-73f11a99/production/components: openshift-gitops
./commit-afe6ffc3/production/components: some-component 
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
<h3>2: Staging changes from afe6ffc3 to 73f11a99 on Thu May 30 13:37:23 2024 </h3>  
 
<details> 
<summary>Git Diff (584 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
similarity index 83%
rename from argo-cd-apps/base/eaas/some-component/some-component.yaml
rename to argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
index f8382098..4a3973b5 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
@@ -1,7 +1,7 @@
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
-  name: some-component
+  name: cluster-as-a-service
 spec:
   generators:
     - merge:
@@ -10,14 +10,14 @@ spec:
         generators:
           - clusters:
               values:
-                sourceRoot: components/some-component
+                sourceRoot: components/cluster-as-a-service
                 environment: staging
                 clusterDir: ""
           - list:
               elements: []
   template:
     metadata:
-      name: some-component-{{nameNormalized}}
+      name: cluster-as-a-service-{{nameNormalized}}
     spec:
       project: default
       source:
@@ -25,7 +25,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: some-component
+        namespace: cluster-as-a-service
         server: "{{server}}"
       syncPolicy:
         automated:
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
similarity index 83%
rename from argo-cd-apps/base/eaas/some-component/kustomization.yaml
rename to argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
index 43984fb7..ac035ef4 100644
--- a/argo-cd-apps/base/eaas/some-component/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - some-component.yaml
+  - cluster-as-a-service.yaml
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
index 00512f27..66de0310 100644
--- a/argo-cd-apps/base/eaas/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - some-component
+  - cluster-as-a-service
 components:
   - ../../k-components/deploy-to-eaas-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..77a2a33c
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 2e74eb4c..5aca14d8 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - ../../base/repository-validator
   - ../../base/keycloak
   - ../../base/ui
+  - ../../base/eaas
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -151,3 +152,10 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  # The 'appstudio.redhat.com/eaas-cluster' cluster role label must also be present for
+  # cluster-as-a-service to be deployed.
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 3c6c2f6c..b04fa6fc 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
-  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
@@ -182,3 +181,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 17414faf..676dddba 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,7 +3,6 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
-  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/cluster-as-a-service/OWNERS b/components/cluster-as-a-service/OWNERS
new file mode 100644
index 00000000..4a5b5cd7
--- /dev/null
+++ b/components/cluster-as-a-service/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- amisstea
+- ifireball
+- avi-biton
+- yftacherzog
+- hmariset
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
new file mode 100644
index 00000000..8cd62c0c
--- /dev/null
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: argoproj.io/v1beta1
+kind: ArgoCD
+metadata:
+ name: openshift-gitops
+ namespace: openshift-gitops
+spec:
+ resourceTrackingMethod: annotation
diff --git a/components/some-component/production/kustomization.yaml b/components/cluster-as-a-service/base/kustomization.yaml
similarity index 83%
rename from components/some-component/production/kustomization.yaml
rename to components/cluster-as-a-service/base/kustomization.yaml
index ea80794f..58afbe87 100644
--- a/components/some-component/production/kustomization.yaml
+++ b/components/cluster-as-a-service/base/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+  - argocd.yaml
diff --git a/components/some-component/staging/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
similarity index 86%
rename from components/some-component/staging/kustomization.yaml
rename to components/cluster-as-a-service/development/kustomization.yaml
index ea80794f..736651a7 100644
--- a/components/some-component/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+  - ../base
diff --git a/components/some-component/base/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
similarity index 66%
rename from components/some-component/base/kustomization.yaml
rename to components/cluster-as-a-service/production/kustomization.yaml
index 0e7c5a02..d0b07b07 100644
--- a/components/some-component/base/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -2,4 +2,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- namespace.yaml
+  - ../base
+  - ../../openshift-gitops
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
new file mode 100644
index 00000000..d0b07b07
--- /dev/null
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - ../../openshift-gitops
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
index 00bb2fac..8bab205d 100644
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
+++ b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../../base
+- ../../../../openshift-gitops/cluster-rbac
 - subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
index 00bb2fac..8bab205d 100644
--- a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
+++ b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../../base
+- ../../../../openshift-gitops/cluster-rbac
 - subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrole.yaml b/components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrole.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrole.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrole.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml b/components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrole.yaml b/components/openshift-gitops/cluster-rbac/argocd-server-clusterrole.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrole.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-server-clusterrole.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrolebinding.yaml b/components/openshift-gitops/cluster-rbac/argocd-server-clusterrolebinding.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrolebinding.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-server-clusterrolebinding.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/kustomization.yaml b/components/openshift-gitops/cluster-rbac/kustomization.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/kustomization.yaml
rename to components/openshift-gitops/cluster-rbac/kustomization.yaml
diff --git a/components/gitops/openshift-gitops/base/kustomization.yaml b/components/openshift-gitops/kustomization.yaml
similarity index 82%
rename from components/gitops/openshift-gitops/base/kustomization.yaml
rename to components/openshift-gitops/kustomization.yaml
index 53dc6b62..592b3f12 100644
--- a/components/gitops/openshift-gitops/base/kustomization.yaml
+++ b/components/openshift-gitops/kustomization.yaml
@@ -2,4 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- subscription.yaml
 - cluster-rbac/
diff --git a/components/openshift-gitops/subscription.yaml b/components/openshift-gitops/subscription.yaml
new file mode 100644
index 00000000..1490578b
--- /dev/null
+++ b/components/openshift-gitops/subscription.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: openshift-gitops-operator
+  namespace: openshift-operators
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: gitops-1.12
+  installPlanApproval: Automatic
+  name: openshift-gitops-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  config:
+    env:
+      - name: ARGOCD_CLUSTER_CONFIG_NAMESPACES
+        value: openshift-gitops
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
deleted file mode 100644
index 1b5edb88..00000000
--- a/components/some-component/base/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: some-component
diff --git a/hack/bootstrap-cluster.sh b/hack/bootstrap-cluster.sh
index f0e2ed78..c21b065a 100755
--- a/hack/bootstrap-cluster.sh
+++ b/hack/bootstrap-cluster.sh
@@ -3,7 +3,7 @@
 ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
 
 main() {
-    local mode keycloak toolchain obo
+    local mode keycloak toolchain obo eaas
     while [[ $# -gt 0 ]]; do
         key=$1
         case $key in
@@ -19,6 +19,10 @@ main() {
             obo="--obo"
             shift
             ;;
+        --eaas | -e)
+            eaas="--eaas"
+            shift
+            ;;
         preview | upstream)
             mode=$1
             shift
@@ -58,20 +62,26 @@ main() {
         fi
         ;;
     "preview")
-        $ROOT/hack/preview.sh $toolchain $keycloak $obo
+        $ROOT/hack/preview.sh $toolchain $keycloak $obo $eaas
         ;;
     esac
+
+    # OIDC secrets must be deployed after the MCE operator creates the local-cluster namespace
+    if [ ! -z "$eaas" ]; then
+        "${ROOT}/hack/bootstrap-eaas-cluster.sh"
+    fi
 }
 
 print_help() {
-    echo "Usae: $0 MODE [-t|--toolchain] [-kc|--keycloak] [-o|--obo] [-h|--help]"
+    echo "Usae: $0 MODE [-t|--toolchain] [-kc|--keycloak] [-o|--obo] [-e|--eaas] [-h|--help]"
     echo "  MODE             upstream/preview (default: upstream)"
     echo "  -t, --toolchain  (only in preview mode) Install toolchain operators"
     echo "  -kc, --keycloak  (only in preview mode) Configure the toolchain operator to use keycloak deployed on the cluster"
     echo "  -o, --obo        (only in preview mode) Install Observability operator and Prometheus instance for federation"
+    echo "  -e  --eaas       (only in preview mode) Install environment as a service components"
     echo "  -h, --help       Show this help message and exit"
     echo
-    echo "Example usage: \`$0 preview --toolchain --keycloak --obo"
+    echo "Example usage: \`$0 preview --toolchain --keycloak --obo --eaas"
 }
 
 if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
diff --git a/hack/bootstrap-eaas-cluster.sh b/hack/bootstrap-eaas-cluster.sh
new file mode 100755
index 00000000..ef7bd0e4
--- /dev/null
+++ b/hack/bootstrap-eaas-cluster.sh
@@ -0,0 +1,26 @@
+#!/bin/bash -e
+
+declare -r ROOT="${BASH_SOURCE[0]%/*}"
+
+main() {
+    load_global_vars
+    "${ROOT}/secret-creator/create-eaas-secrets.sh" \
+      "$EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID" \
+      "$EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY" \
+      "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION" \
+      "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET" \
+      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH" \
+      "$EAAS_HYPERSHIFT_BASE_DOMAIN"
+}
+
+load_global_vars() {
+    local vars_file="$ROOT/preview.env"
+
+    if [[ -f "$vars_file" ]]; then
+        source "$vars_file"
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index d671715f..2e19e223 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -9,9 +9,7 @@ main() {
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
-    add_role_binding
     print_url
-
 }
 
 verify_permissions() {
@@ -24,9 +22,8 @@ verify_permissions() {
 }
 
 create_subscription() {
-
     echo "Installing the OpenShift GitOps operator subscription:"
-    kubectl apply -k "$ROOT/components/gitops/openshift-gitops/overlays/production-and-dev"
+    kubectl apply -k "$ROOT/components/openshift-gitops"
     echo -n "Waiting for default project (and namespace) to exist: "
     while ! kubectl get appproject/default -n openshift-gitops &>/dev/null; do
         echo -n .
@@ -87,11 +84,6 @@ spec:
 ' --type=merge
 }
 
-add_role_binding() {
-    echo "Add Role/RoleBindings for OpenShift GitOps:"
-    kubectl apply --kustomize $ROOT/components/gitops/openshift-gitops/base/cluster-rbac
-}
-
 print_url() {
     local argo_cd_route argo_cd_url
 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index b946edd4..d8ab635d 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -142,4 +142,12 @@ export QD_OAUTH_CLIENT_SECRET=
 # CI Helper App
 export CI_HELPER_GITHUB_APP_INTEGRATION_ID=
 export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
-export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
\ No newline at end of file
+export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
+
+# Environment as a service
+export EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID=
+export EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY=
+export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET=
+export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION=
+export EAAS_HYPERSHIFT_PULL_SECRET_PATH=
+export EAAS_HYPERSHIFT_BASE_DOMAIN=
diff --git a/hack/preview.sh b/hack/preview.sh
index 98706da4..51865b01 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -5,17 +5,20 @@ ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/..
 
 # Print help message
 function print_help() {
-  echo "Usage: $0 MODE [--toolchain] [--keycloak] [--obo] [-h|--help]"
+  echo "Usage: $0 MODE [--toolchain] [--keycloak] [--obo] [--eaas] [-h|--help]"
   echo "  MODE             upstream/preview (default: upstream)"
   echo "  --toolchain  (only in preview mode) Install toolchain operators"
   echo "  --keycloak   (only in preview mode) Configure the toolchain operator to use keycloak deployed on the cluster"
   echo "  --obo        (only in preview mode) Install Observability operator and Prometheus instance for federation"
+  echo "  --eaas       (only in preview mode) Install environment as a service components"
   echo
-  echo "Example usage: \`$0 --toolchain --keycloak --obo"
+  echo "Example usage: \`$0 --toolchain --keycloak --obo --eaas"
 }
+
 TOOLCHAIN=false
 KEYCLOAK=false
 OBO=false
+EAAS=false
 
 while [[ $# -gt 0 ]]; do
   key=$1
@@ -32,6 +35,10 @@ while [[ $# -gt 0 ]]; do
       OBO=true
       shift
       ;;
+    --eaas)
+      EAAS=true
+      shift
+      ;;
     -h|--help)
       print_help
       exit 0
@@ -42,8 +49,6 @@ while [[ $# -gt 0 ]]; do
   esac
 done
 
-
-
 if $TOOLCHAIN ; then
   echo "Deploying toolchain"
   "$ROOT/hack/sandbox-development-mode.sh"
@@ -125,6 +130,12 @@ if $OBO ; then
   yq -i '.resources += ["monitoringstack/"]' $ROOT/components/monitoring/prometheus/development/kustomization.yaml
 fi
 
+if $EAAS; then
+  echo "Enabling EaaS cluster role"
+  yq -i '.components += ["../../../k-components/assign-eaas-role-to-local-cluster"]' \
+    $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\
diff --git a/hack/secret-creator/create-eaas-secrets.sh b/hack/secret-creator/create-eaas-secrets.sh
new file mode 100755
index 00000000..e0df4eb0
--- /dev/null
+++ b/hack/secret-creator/create-eaas-secrets.sh
@@ -0,0 +1,70 @@
+#!/bin/bash
+set -eo pipefail
+
+main() {
+  echo "Setting secrets for EaaS (Environment as a Service)"
+
+  local aws_access_key_id=${1:?"AWS access key id was not provided"}
+  local aws_secret_access_key=${2:?"AWS secret access key was not provided"}
+  local oidc_provider_s3_region=${3:?"OIDC provider S3 region was not provided"}
+  local oidc_provider_s3_bucket=${4:?"OIDC provider S3 bucket was not provided"}
+  local pull_secret_path=${5:?"OpenShift pull secret path was not provided"}
+  local base_domain=${6:?"Route53 base domain was not provided"}
+
+  create_namespace "local-cluster"
+  create_namespace "clusters"
+  create_oidc_provider_s3_secret \
+    $aws_access_key_id \
+    $aws_secret_access_key \
+    $oidc_provider_s3_region \
+    $oidc_provider_s3_bucket
+  create_hypershift_credentials \
+    $aws_access_key_id \
+    $aws_secret_access_key \
+    $pull_secret_path \
+    $base_domain
+}
+
+create_namespace() {
+  echo "Creating namespace '$1'"
+  kubectl create namespace $1 -o yaml --save-config=true --dry-run=client | kubectl apply -f -
+}
+
+create_oidc_provider_s3_secret() {
+  echo "Creating hypershift OIDC provider S3 secret"
+  local creds=$(mktemp)
+  echo "[default]" >> $creds
+  echo "aws_access_key_id=$1" >> $creds
+  echo "aws_secret_access_key=$2" >> $creds
+  kubectl create secret generic hypershift-operator-oidc-provider-s3-credentials \
+    --from-file=credentials=$creds \
+    --from-literal=region=$3 \
+    --from-literal=bucket=$4 \
+    --save-config=true \
+    --dry-run=client \
+    -n local-cluster \
+    -o yaml \
+    | kubectl apply -f -
+  rm "$creds"
+}
+
+create_hypershift_credentials() {
+  echo "Creating hypershift secret"
+  kubectl create secret generic hypershift \
+    --from-literal=aws_access_key_id=$1 \
+    --from-literal=aws_secret_access_key=$2 \
+    --from-file=pullSecret=$3 \
+    --from-literal=baseDomain=$4 \
+    --from-literal=ssh-privatekey="not yet implemented" \
+    --from-literal=ssh-publickey="not yet implemented" \
+    --save-config=true \
+    --dry-run=client \
+    -n clusters \
+    -o json \
+    | jq '.metadata.labels |= {"hypershift.openshift.io/safe-to-delete-with-cluster": "false"}' \
+    | kubectl apply -f -
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+  main "$@"
+fi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-73f11a99/staging/components: cluster-as-a-service
./commit-73f11a99/staging/components: openshift-gitops
./commit-afe6ffc3/staging/components: some-component 
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
<h3>2: Development changes from afe6ffc3 to 73f11a99 on Thu May 30 13:37:23 2024 </h3>  
 
<details> 
<summary>Git Diff (584 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
similarity index 83%
rename from argo-cd-apps/base/eaas/some-component/some-component.yaml
rename to argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
index f8382098..4a3973b5 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/cluster-as-a-service.yaml
@@ -1,7 +1,7 @@
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
-  name: some-component
+  name: cluster-as-a-service
 spec:
   generators:
     - merge:
@@ -10,14 +10,14 @@ spec:
         generators:
           - clusters:
               values:
-                sourceRoot: components/some-component
+                sourceRoot: components/cluster-as-a-service
                 environment: staging
                 clusterDir: ""
           - list:
               elements: []
   template:
     metadata:
-      name: some-component-{{nameNormalized}}
+      name: cluster-as-a-service-{{nameNormalized}}
     spec:
       project: default
       source:
@@ -25,7 +25,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: some-component
+        namespace: cluster-as-a-service
         server: "{{server}}"
       syncPolicy:
         automated:
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
similarity index 83%
rename from argo-cd-apps/base/eaas/some-component/kustomization.yaml
rename to argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
index 43984fb7..ac035ef4 100644
--- a/argo-cd-apps/base/eaas/some-component/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/cluster-as-a-service/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - some-component.yaml
+  - cluster-as-a-service.yaml
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
index 00512f27..66de0310 100644
--- a/argo-cd-apps/base/eaas/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - some-component
+  - cluster-as-a-service
 components:
   - ../../k-components/deploy-to-eaas-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..77a2a33c
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-eaas-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 2e74eb4c..5aca14d8 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - ../../base/repository-validator
   - ../../base/keycloak
   - ../../base/ui
+  - ../../base/eaas
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -151,3 +152,10 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  # The 'appstudio.redhat.com/eaas-cluster' cluster role label must also be present for
+  # cluster-as-a-service to be deployed.
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 3c6c2f6c..b04fa6fc 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
-  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
@@ -182,3 +181,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-as-a-service
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 17414faf..676dddba 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,7 +3,6 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
-  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/cluster-as-a-service/OWNERS b/components/cluster-as-a-service/OWNERS
new file mode 100644
index 00000000..4a5b5cd7
--- /dev/null
+++ b/components/cluster-as-a-service/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- amisstea
+- ifireball
+- avi-biton
+- yftacherzog
+- hmariset
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
new file mode 100644
index 00000000..8cd62c0c
--- /dev/null
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: argoproj.io/v1beta1
+kind: ArgoCD
+metadata:
+ name: openshift-gitops
+ namespace: openshift-gitops
+spec:
+ resourceTrackingMethod: annotation
diff --git a/components/some-component/production/kustomization.yaml b/components/cluster-as-a-service/base/kustomization.yaml
similarity index 83%
rename from components/some-component/production/kustomization.yaml
rename to components/cluster-as-a-service/base/kustomization.yaml
index ea80794f..58afbe87 100644
--- a/components/some-component/production/kustomization.yaml
+++ b/components/cluster-as-a-service/base/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+  - argocd.yaml
diff --git a/components/some-component/staging/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
similarity index 86%
rename from components/some-component/staging/kustomization.yaml
rename to components/cluster-as-a-service/development/kustomization.yaml
index ea80794f..736651a7 100644
--- a/components/some-component/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+  - ../base
diff --git a/components/some-component/base/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
similarity index 66%
rename from components/some-component/base/kustomization.yaml
rename to components/cluster-as-a-service/production/kustomization.yaml
index 0e7c5a02..d0b07b07 100644
--- a/components/some-component/base/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -2,4 +2,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- namespace.yaml
+  - ../base
+  - ../../openshift-gitops
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
new file mode 100644
index 00000000..d0b07b07
--- /dev/null
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+  - ../../openshift-gitops
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
index 00bb2fac..8bab205d 100644
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
+++ b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../../base
+- ../../../../openshift-gitops/cluster-rbac
 - subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
index 00bb2fac..8bab205d 100644
--- a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
+++ b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../../base
+- ../../../../openshift-gitops/cluster-rbac
 - subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrole.yaml b/components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrole.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrole.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrole.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml b/components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-application-controller-clusterrolebinding.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrole.yaml b/components/openshift-gitops/cluster-rbac/argocd-server-clusterrole.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrole.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-server-clusterrole.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrolebinding.yaml b/components/openshift-gitops/cluster-rbac/argocd-server-clusterrolebinding.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/argocd-server-clusterrolebinding.yaml
rename to components/openshift-gitops/cluster-rbac/argocd-server-clusterrolebinding.yaml
diff --git a/components/gitops/openshift-gitops/base/cluster-rbac/kustomization.yaml b/components/openshift-gitops/cluster-rbac/kustomization.yaml
similarity index 100%
rename from components/gitops/openshift-gitops/base/cluster-rbac/kustomization.yaml
rename to components/openshift-gitops/cluster-rbac/kustomization.yaml
diff --git a/components/gitops/openshift-gitops/base/kustomization.yaml b/components/openshift-gitops/kustomization.yaml
similarity index 82%
rename from components/gitops/openshift-gitops/base/kustomization.yaml
rename to components/openshift-gitops/kustomization.yaml
index 53dc6b62..592b3f12 100644
--- a/components/gitops/openshift-gitops/base/kustomization.yaml
+++ b/components/openshift-gitops/kustomization.yaml
@@ -2,4 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
+- subscription.yaml
 - cluster-rbac/
diff --git a/components/openshift-gitops/subscription.yaml b/components/openshift-gitops/subscription.yaml
new file mode 100644
index 00000000..1490578b
--- /dev/null
+++ b/components/openshift-gitops/subscription.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: openshift-gitops-operator
+  namespace: openshift-operators
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  channel: gitops-1.12
+  installPlanApproval: Automatic
+  name: openshift-gitops-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  config:
+    env:
+      - name: ARGOCD_CLUSTER_CONFIG_NAMESPACES
+        value: openshift-gitops
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
deleted file mode 100644
index 1b5edb88..00000000
--- a/components/some-component/base/namespace.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: some-component
diff --git a/hack/bootstrap-cluster.sh b/hack/bootstrap-cluster.sh
index f0e2ed78..c21b065a 100755
--- a/hack/bootstrap-cluster.sh
+++ b/hack/bootstrap-cluster.sh
@@ -3,7 +3,7 @@
 ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
 
 main() {
-    local mode keycloak toolchain obo
+    local mode keycloak toolchain obo eaas
     while [[ $# -gt 0 ]]; do
         key=$1
         case $key in
@@ -19,6 +19,10 @@ main() {
             obo="--obo"
             shift
             ;;
+        --eaas | -e)
+            eaas="--eaas"
+            shift
+            ;;
         preview | upstream)
             mode=$1
             shift
@@ -58,20 +62,26 @@ main() {
         fi
         ;;
     "preview")
-        $ROOT/hack/preview.sh $toolchain $keycloak $obo
+        $ROOT/hack/preview.sh $toolchain $keycloak $obo $eaas
         ;;
     esac
+
+    # OIDC secrets must be deployed after the MCE operator creates the local-cluster namespace
+    if [ ! -z "$eaas" ]; then
+        "${ROOT}/hack/bootstrap-eaas-cluster.sh"
+    fi
 }
 
 print_help() {
-    echo "Usae: $0 MODE [-t|--toolchain] [-kc|--keycloak] [-o|--obo] [-h|--help]"
+    echo "Usae: $0 MODE [-t|--toolchain] [-kc|--keycloak] [-o|--obo] [-e|--eaas] [-h|--help]"
     echo "  MODE             upstream/preview (default: upstream)"
     echo "  -t, --toolchain  (only in preview mode) Install toolchain operators"
     echo "  -kc, --keycloak  (only in preview mode) Configure the toolchain operator to use keycloak deployed on the cluster"
     echo "  -o, --obo        (only in preview mode) Install Observability operator and Prometheus instance for federation"
+    echo "  -e  --eaas       (only in preview mode) Install environment as a service components"
     echo "  -h, --help       Show this help message and exit"
     echo
-    echo "Example usage: \`$0 preview --toolchain --keycloak --obo"
+    echo "Example usage: \`$0 preview --toolchain --keycloak --obo --eaas"
 }
 
 if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
diff --git a/hack/bootstrap-eaas-cluster.sh b/hack/bootstrap-eaas-cluster.sh
new file mode 100755
index 00000000..ef7bd0e4
--- /dev/null
+++ b/hack/bootstrap-eaas-cluster.sh
@@ -0,0 +1,26 @@
+#!/bin/bash -e
+
+declare -r ROOT="${BASH_SOURCE[0]%/*}"
+
+main() {
+    load_global_vars
+    "${ROOT}/secret-creator/create-eaas-secrets.sh" \
+      "$EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID" \
+      "$EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY" \
+      "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION" \
+      "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET" \
+      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH" \
+      "$EAAS_HYPERSHIFT_BASE_DOMAIN"
+}
+
+load_global_vars() {
+    local vars_file="$ROOT/preview.env"
+
+    if [[ -f "$vars_file" ]]; then
+        source "$vars_file"
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
diff --git a/hack/deploy-argocd.sh b/hack/deploy-argocd.sh
index d671715f..2e19e223 100755
--- a/hack/deploy-argocd.sh
+++ b/hack/deploy-argocd.sh
@@ -9,9 +9,7 @@ main() {
     switch_route_to_reencrypt
     grant_admin_role_to_all_authenticated_users
     mark_pending_pvc_as_healty
-    add_role_binding
     print_url
-
 }
 
 verify_permissions() {
@@ -24,9 +22,8 @@ verify_permissions() {
 }
 
 create_subscription() {
-
     echo "Installing the OpenShift GitOps operator subscription:"
-    kubectl apply -k "$ROOT/components/gitops/openshift-gitops/overlays/production-and-dev"
+    kubectl apply -k "$ROOT/components/openshift-gitops"
     echo -n "Waiting for default project (and namespace) to exist: "
     while ! kubectl get appproject/default -n openshift-gitops &>/dev/null; do
         echo -n .
@@ -87,11 +84,6 @@ spec:
 ' --type=merge
 }
 
-add_role_binding() {
-    echo "Add Role/RoleBindings for OpenShift GitOps:"
-    kubectl apply --kustomize $ROOT/components/gitops/openshift-gitops/base/cluster-rbac
-}
-
 print_url() {
     local argo_cd_route argo_cd_url
 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index b946edd4..d8ab635d 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -142,4 +142,12 @@ export QD_OAUTH_CLIENT_SECRET=
 # CI Helper App
 export CI_HELPER_GITHUB_APP_INTEGRATION_ID=
 export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
-export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
\ No newline at end of file
+export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
+
+# Environment as a service
+export EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID=
+export EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY=
+export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET=
+export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION=
+export EAAS_HYPERSHIFT_PULL_SECRET_PATH=
+export EAAS_HYPERSHIFT_BASE_DOMAIN=
diff --git a/hack/preview.sh b/hack/preview.sh
index 98706da4..51865b01 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -5,17 +5,20 @@ ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/..
 
 # Print help message
 function print_help() {
-  echo "Usage: $0 MODE [--toolchain] [--keycloak] [--obo] [-h|--help]"
+  echo "Usage: $0 MODE [--toolchain] [--keycloak] [--obo] [--eaas] [-h|--help]"
   echo "  MODE             upstream/preview (default: upstream)"
   echo "  --toolchain  (only in preview mode) Install toolchain operators"
   echo "  --keycloak   (only in preview mode) Configure the toolchain operator to use keycloak deployed on the cluster"
   echo "  --obo        (only in preview mode) Install Observability operator and Prometheus instance for federation"
+  echo "  --eaas       (only in preview mode) Install environment as a service components"
   echo
-  echo "Example usage: \`$0 --toolchain --keycloak --obo"
+  echo "Example usage: \`$0 --toolchain --keycloak --obo --eaas"
 }
+
 TOOLCHAIN=false
 KEYCLOAK=false
 OBO=false
+EAAS=false
 
 while [[ $# -gt 0 ]]; do
   key=$1
@@ -32,6 +35,10 @@ while [[ $# -gt 0 ]]; do
       OBO=true
       shift
       ;;
+    --eaas)
+      EAAS=true
+      shift
+      ;;
     -h|--help)
       print_help
       exit 0
@@ -42,8 +49,6 @@ while [[ $# -gt 0 ]]; do
   esac
 done
 
-
-
 if $TOOLCHAIN ; then
   echo "Deploying toolchain"
   "$ROOT/hack/sandbox-development-mode.sh"
@@ -125,6 +130,12 @@ if $OBO ; then
   yq -i '.resources += ["monitoringstack/"]' $ROOT/components/monitoring/prometheus/development/kustomization.yaml
 fi
 
+if $EAAS; then
+  echo "Enabling EaaS cluster role"
+  yq -i '.components += ["../../../k-components/assign-eaas-role-to-local-cluster"]' \
+    $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\
diff --git a/hack/secret-creator/create-eaas-secrets.sh b/hack/secret-creator/create-eaas-secrets.sh
new file mode 100755
index 00000000..e0df4eb0
--- /dev/null
+++ b/hack/secret-creator/create-eaas-secrets.sh
@@ -0,0 +1,70 @@
+#!/bin/bash
+set -eo pipefail
+
+main() {
+  echo "Setting secrets for EaaS (Environment as a Service)"
+
+  local aws_access_key_id=${1:?"AWS access key id was not provided"}
+  local aws_secret_access_key=${2:?"AWS secret access key was not provided"}
+  local oidc_provider_s3_region=${3:?"OIDC provider S3 region was not provided"}
+  local oidc_provider_s3_bucket=${4:?"OIDC provider S3 bucket was not provided"}
+  local pull_secret_path=${5:?"OpenShift pull secret path was not provided"}
+  local base_domain=${6:?"Route53 base domain was not provided"}
+
+  create_namespace "local-cluster"
+  create_namespace "clusters"
+  create_oidc_provider_s3_secret \
+    $aws_access_key_id \
+    $aws_secret_access_key \
+    $oidc_provider_s3_region \
+    $oidc_provider_s3_bucket
+  create_hypershift_credentials \
+    $aws_access_key_id \
+    $aws_secret_access_key \
+    $pull_secret_path \
+    $base_domain
+}
+
+create_namespace() {
+  echo "Creating namespace '$1'"
+  kubectl create namespace $1 -o yaml --save-config=true --dry-run=client | kubectl apply -f -
+}
+
+create_oidc_provider_s3_secret() {
+  echo "Creating hypershift OIDC provider S3 secret"
+  local creds=$(mktemp)
+  echo "[default]" >> $creds
+  echo "aws_access_key_id=$1" >> $creds
+  echo "aws_secret_access_key=$2" >> $creds
+  kubectl create secret generic hypershift-operator-oidc-provider-s3-credentials \
+    --from-file=credentials=$creds \
+    --from-literal=region=$3 \
+    --from-literal=bucket=$4 \
+    --save-config=true \
+    --dry-run=client \
+    -n local-cluster \
+    -o yaml \
+    | kubectl apply -f -
+  rm "$creds"
+}
+
+create_hypershift_credentials() {
+  echo "Creating hypershift secret"
+  kubectl create secret generic hypershift \
+    --from-literal=aws_access_key_id=$1 \
+    --from-literal=aws_secret_access_key=$2 \
+    --from-file=pullSecret=$3 \
+    --from-literal=baseDomain=$4 \
+    --from-literal=ssh-privatekey="not yet implemented" \
+    --from-literal=ssh-publickey="not yet implemented" \
+    --save-config=true \
+    --dry-run=client \
+    -n clusters \
+    -o json \
+    | jq '.metadata.labels |= {"hypershift.openshift.io/safe-to-delete-with-cluster": "false"}' \
+    | kubectl apply -f -
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+  main "$@"
+fi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (50 lines)</summary>  

``` 
./commit-afe6ffc3/development/app-of-apps-development.yaml
158,203d157
<   name: cluster-as-a-service
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/eaas-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/cluster-as-a-service
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: cluster-as-a-service-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: cluster-as-a-service
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
./commit-73f11a99/development/components: cluster-as-a-service
./commit-73f11a99/development/components: openshift-gitops 
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

<div>
<h3>3: Production changes from 16f0a6b8 to afe6ffc3 on Thu May 30 08:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index b8acfa26..b5af12d2 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=45f0d4bb4578154ef7ebfd59698437c1bfa02346
+- https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index a9bfd6e5..7195885a 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  - https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 namespace: project-controller 
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
<h3>3: Staging changes from 16f0a6b8 to afe6ffc3 on Thu May 30 08:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index b8acfa26..b5af12d2 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=45f0d4bb4578154ef7ebfd59698437c1bfa02346
+- https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index a9bfd6e5..7195885a 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  - https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-16f0a6b8/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:7e89e50c4c27d8048221e9ac1cb42c82281384cf
---
>         image: quay.io/redhat-appstudio/project-controller:45f0d4bb4578154ef7ebfd59698437c1bfa02346 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 16f0a6b8 to afe6ffc3 on Thu May 30 08:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index b8acfa26..b5af12d2 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=45f0d4bb4578154ef7ebfd59698437c1bfa02346
+- https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index a9bfd6e5..7195885a 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  - https://github.com/konflux-ci/project-controller/config/default?ref=7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 45f0d4bb4578154ef7ebfd59698437c1bfa02346
+  newTag: 7e89e50c4c27d8048221e9ac1cb42c82281384cf
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-16f0a6b8/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:7e89e50c4c27d8048221e9ac1cb42c82281384cf
---
>         image: quay.io/redhat-appstudio/project-controller:45f0d4bb4578154ef7ebfd59698437c1bfa02346 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from bec2d708 to 16f0a6b8 on Thu May 30 06:08:58 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index cb737ecf..268b267d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index d19f1b43..61668d18 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -76,7 +76,7 @@ data:
   dynamic.linux-ppc64le.image: "RHEL9-SP2"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f","dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "0.25"
   dynamic.linux-ppc64le.memory: "2" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-bec2d708/production/components/multi-platform-controller/production/kustomize.out.yaml
294c294
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
336c336
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b 
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
<h3>4: Staging changes from bec2d708 to 16f0a6b8 on Thu May 30 06:08:58 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index cb737ecf..268b267d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index d19f1b43..61668d18 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -76,7 +76,7 @@ data:
   dynamic.linux-ppc64le.image: "RHEL9-SP2"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f","dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "0.25"
   dynamic.linux-ppc64le.memory: "2" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-bec2d708/staging/components/multi-platform-controller/staging/kustomize.out.yaml
284c284
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
326c326
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from bec2d708 to 16f0a6b8 on Thu May 30 06:08:58 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index cb737ecf..268b267d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index d19f1b43..61668d18 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -76,7 +76,7 @@ data:
   dynamic.linux-ppc64le.image: "RHEL9-SP2"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f","dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "0.25"
   dynamic.linux-ppc64le.memory: "2" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-bec2d708/development/components/multi-platform-controller/development/kustomize.out.yaml
220c220
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
262c262
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b 
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
```
 
</details> 
<br> 


</div>
