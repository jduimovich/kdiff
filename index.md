# kustomize changes tracked by commits 
### This file generated at Thu Mar 28 00:05:53 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 17a39ab3 to e24063b1 on Wed Mar 27 17:35:15 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
deleted file mode 100644
index 2c12d377..00000000
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: project-controller
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 7f0b4496..c666c5e6 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -12,9 +12,6 @@ resources:
 
 namespace: konflux-public-production
 
-patchesStrategicMerge:
-  - delete-applications.yaml
-
 patches:
   - path: production-overlay-patch.yaml
     target:
@@ -156,3 +153,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 6985289d..0257c01e 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,9 +17,3 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: project-controller
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index ab1a178f..8a6bed70 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -171,3 +171,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: repository-validator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 17a39ab3 to e24063b1 on Wed Mar 27 17:35:15 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
deleted file mode 100644
index 2c12d377..00000000
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: project-controller
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 7f0b4496..c666c5e6 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -12,9 +12,6 @@ resources:
 
 namespace: konflux-public-production
 
-patchesStrategicMerge:
-  - delete-applications.yaml
-
 patches:
   - path: production-overlay-patch.yaml
     target:
@@ -156,3 +153,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 6985289d..0257c01e 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,9 +17,3 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: project-controller
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index ab1a178f..8a6bed70 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -171,3 +171,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: repository-validator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller 
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
<h3>1: Development changes from 17a39ab3 to e24063b1 on Wed Mar 27 17:35:15 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
deleted file mode 100644
index 2c12d377..00000000
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: project-controller
-$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 7f0b4496..c666c5e6 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -12,9 +12,6 @@ resources:
 
 namespace: konflux-public-production
 
-patchesStrategicMerge:
-  - delete-applications.yaml
-
 patches:
   - path: production-overlay-patch.yaml
     target:
@@ -156,3 +153,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 6985289d..0257c01e 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -17,9 +17,3 @@ kind: ApplicationSet
 metadata:
   name: ingresscontroller
 $patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: project-controller
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index ab1a178f..8a6bed70 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -171,3 +171,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: repository-validator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: project-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from ede5b73f to 17a39ab3 on Wed Mar 27 11:08:47 2024 </h3>  
 
<details> 
<summary>Git Diff (148 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml b/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml
new file mode 100644
index 00000000..dbb1e522
--- /dev/null
+++ b/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 68269b3d..9aae9eef 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -20,6 +20,10 @@ patches:
   #     kind: Deployment
   #     name: pipeline-metrics-exporter
   #     namespace: openshift-pipelines
+  - path: chains-deployment-perf-bump.yaml
+    target:
+      kind: TektonConfig
+      name: config
   - path: bump-exporter-mem.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 67fc2300..14674031 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 784dfa48..540c1f34 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 3d07813b..2fdf4991 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (54 lines)</summary>  

``` 
./commit-ede5b73f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1855,1866d1854
<     options:
<       deployments:
<         tekton-chains-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - args:
<                   - --threads-per-controller=32
<                   - --kube-api-qps=50
<                   - --kube-api-burst=50
<                   name: tekton-chains-controller
2052c2040
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
./commit-ede5b73f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1855,1866d1854
<     options:
<       deployments:
<         tekton-chains-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - args:
<                   - --threads-per-controller=32
<                   - --kube-api-qps=50
<                   - --kube-api-burst=50
<                   name: tekton-chains-controller
2052c2040
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
./commit-ede5b73f/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1855,1866d1854
<     options:
<       deployments:
<         tekton-chains-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - args:
<                   - --threads-per-controller=32
<                   - --kube-api-qps=50
<                   - --kube-api-burst=50
<                   name: tekton-chains-controller
2052c2040
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ede5b73f to 17a39ab3 on Wed Mar 27 11:08:47 2024 </h3>  
 
<details> 
<summary>Git Diff (148 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml b/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml
new file mode 100644
index 00000000..dbb1e522
--- /dev/null
+++ b/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 68269b3d..9aae9eef 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -20,6 +20,10 @@ patches:
   #     kind: Deployment
   #     name: pipeline-metrics-exporter
   #     namespace: openshift-pipelines
+  - path: chains-deployment-perf-bump.yaml
+    target:
+      kind: TektonConfig
+      name: config
   - path: bump-exporter-mem.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 67fc2300..14674031 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 784dfa48..540c1f34 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 3d07813b..2fdf4991 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
<h3>2: Development changes from ede5b73f to 17a39ab3 on Wed Mar 27 11:08:47 2024 </h3>  
 
<details> 
<summary>Git Diff (148 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml b/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml
new file mode 100644
index 00000000..dbb1e522
--- /dev/null
+++ b/components/pipeline-service/production/base/chains-deployment-perf-bump.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  chain:
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-chains-controller
+                    args:
+                      [
+                        '--threads-per-controller=32',
+                        '--kube-api-qps=50',
+                        '--kube-api-burst=50',
+                      ]
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 68269b3d..9aae9eef 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dce2aba7089a59bb8e80e03c7e391f3358412ca3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -20,6 +20,10 @@ patches:
   #     kind: Deployment
   #     name: pipeline-metrics-exporter
   #     namespace: openshift-pipelines
+  - path: chains-deployment-perf-bump.yaml
+    target:
+      kind: TektonConfig
+      name: config
   - path: bump-exporter-mem.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 67fc2300..14674031 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 784dfa48..540c1f34 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 3d07813b..2fdf4991 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1852,6 +1852,18 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -2037,7 +2049,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:6843694c3be6cb517900cf51c5fe18f473a2b1ac1ee9ccba954e6eafc6633e6d
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:c2c6587e059b0b5144f4b2cff79f31f1f6fee36f0927b301a17a3b608237134f
   sourceType: grpc
   updateStrategy:
     registryPoll: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from ad2475c5 to ede5b73f on Wed Mar 27 08:57:17 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
deleted file mode 100644
index 4d64d807..00000000
--- a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: build-service-controller-manager
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        env:
-          - name: PAC_WEBHOOK_URL
-            value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
-
diff --git a/components/build-service/production/stone-prod-p01/kustomization.yaml b/components/build-service/production/stone-prod-p01/kustomization.yaml
index b7362bc8..478c681c 100644
--- a/components/build-service/production/stone-prod-p01/kustomization.yaml
+++ b/components/build-service/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+namespace: build-service
 patches:
   - path: pipelines-as-code-secret-path.yaml
     target:
@@ -9,10 +10,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: add-webhook-target-patch.yaml
-    target:
-      name: build-service-controller-manager
-      kind: Deployment
+
+configMapGenerator:
+  - name: webhook-config
+    files: 
+      - webhook-config.json
+
 components:
   - ../../components/rh-certs
-
+  - ../../components/webhook-config
diff --git a/components/build-service/production/stone-prod-p01/webhook-config.json b/components/build-service/production/stone-prod-p01/webhook-config.json
new file mode 100644
index 00000000..d1c4429b
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+} 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-ad2475c5/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
625,636d624
< data:
<   webhook-config.json: |
<     {
<         "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
<         "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
<     }
< kind: ConfigMap
< metadata:
<   name: webhook-config-gc7c8mfbcf
<   namespace: build-service
< ---
< apiVersion: v1
691d678
<         - -webhook-config-path=/mnt/webhook-config.json
693a681,683
>         env:
>         - name: PAC_WEBHOOK_URL
>           value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
726,728d715
<         - mountPath: /mnt
<           name: webhook-config
<           readOnly: true
763,768d749
<       - configMap:
<           items:
<           - key: webhook-config.json
<             path: webhook-config.json
<           name: webhook-config-gc7c8mfbcf
<         name: webhook-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ad2475c5 to ede5b73f on Wed Mar 27 08:57:17 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
deleted file mode 100644
index 4d64d807..00000000
--- a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: build-service-controller-manager
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        env:
-          - name: PAC_WEBHOOK_URL
-            value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
-
diff --git a/components/build-service/production/stone-prod-p01/kustomization.yaml b/components/build-service/production/stone-prod-p01/kustomization.yaml
index b7362bc8..478c681c 100644
--- a/components/build-service/production/stone-prod-p01/kustomization.yaml
+++ b/components/build-service/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+namespace: build-service
 patches:
   - path: pipelines-as-code-secret-path.yaml
     target:
@@ -9,10 +10,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: add-webhook-target-patch.yaml
-    target:
-      name: build-service-controller-manager
-      kind: Deployment
+
+configMapGenerator:
+  - name: webhook-config
+    files: 
+      - webhook-config.json
+
 components:
   - ../../components/rh-certs
-
+  - ../../components/webhook-config
diff --git a/components/build-service/production/stone-prod-p01/webhook-config.json b/components/build-service/production/stone-prod-p01/webhook-config.json
new file mode 100644
index 00000000..d1c4429b
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+} 
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
<h3>3: Development changes from ad2475c5 to ede5b73f on Wed Mar 27 08:57:17 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
deleted file mode 100644
index 4d64d807..00000000
--- a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: build-service-controller-manager
-spec:
-  template:
-    spec:
-      containers:
-      - name: manager
-        env:
-          - name: PAC_WEBHOOK_URL
-            value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
-
diff --git a/components/build-service/production/stone-prod-p01/kustomization.yaml b/components/build-service/production/stone-prod-p01/kustomization.yaml
index b7362bc8..478c681c 100644
--- a/components/build-service/production/stone-prod-p01/kustomization.yaml
+++ b/components/build-service/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+namespace: build-service
 patches:
   - path: pipelines-as-code-secret-path.yaml
     target:
@@ -9,10 +10,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: add-webhook-target-patch.yaml
-    target:
-      name: build-service-controller-manager
-      kind: Deployment
+
+configMapGenerator:
+  - name: webhook-config
+    files: 
+      - webhook-config.json
+
 components:
   - ../../components/rh-certs
-
+  - ../../components/webhook-config
diff --git a/components/build-service/production/stone-prod-p01/webhook-config.json b/components/build-service/production/stone-prod-p01/webhook-config.json
new file mode 100644
index 00000000..d1c4429b
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12"
+} 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 8e9c8159 to ad2475c5 on Wed Mar 27 08:45:22 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 55a3dcfd..6bae8228 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8e9c8159/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
684c684
<         image: quay.io/redhat-appstudio/build-service:a037b0de83021d2f9a1bd3a40311ddc1b05cca53
---
>         image: quay.io/redhat-appstudio/build-service:d4d87709db08aaaa6913df1321e792e0d23b2213 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 8e9c8159 to ad2475c5 on Wed Mar 27 08:45:22 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 55a3dcfd..6bae8228 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 8e9c8159 to ad2475c5 on Wed Mar 27 08:45:22 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 55a3dcfd..6bae8228 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
+- https://github.com/redhat-appstudio/build-service/config/default?ref=a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
+  newTag: a037b0de83021d2f9a1bd3a40311ddc1b05cca53
 
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
```
 
</details> 
<br> 


</div>
