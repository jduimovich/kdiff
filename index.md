# kustomize changes tracked by commits 
### This file generated at Tue Nov 12 12:08:05 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 79a548e9 to 5a7667da on Tue Nov 12 09:13:00 2024 </h3>  
 
<details> 
<summary>Git Diff (194 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d6e7aee5..8041ba23 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 2bd243ef..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,3 +27,21 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c95bdf6b..2d749b73 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 79354316..7dd98c45 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,3 +37,21 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-79a548e9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2072,2074c2072
<                 - args:
<                   - --threads-per-controller=32
<                   name: controller
---
>                 - name: controller
2210c2208
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
2225c2223
<   channel: pipelines-5.0
---
>   channel: latest
./commit-79a548e9/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2072,2074c2072
<                 - args:
<                   - --threads-per-controller=32
<                   name: controller
---
>                 - name: controller
2210c2208
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
2225c2223
<   channel: pipelines-5.0
---
>   channel: latest 
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
<h3>1: Staging changes from 79a548e9 to 5a7667da on Tue Nov 12 09:13:00 2024 </h3>  
 
<details> 
<summary>Git Diff (194 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d6e7aee5..8041ba23 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 2bd243ef..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,3 +27,21 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c95bdf6b..2d749b73 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 79354316..7dd98c45 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,3 +37,21 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
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
<h3>1: Development changes from 79a548e9 to 5a7667da on Tue Nov 12 09:13:00 2024 </h3>  
 
<details> 
<summary>Git Diff (194 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d6e7aee5..8041ba23 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 2bd243ef..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,3 +27,21 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c95bdf6b..2d749b73 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 79354316..7dd98c45 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,3 +37,21 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 956ca7b9 to 79a548e9 on Tue Nov 12 08:51:22 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 3eee6d37..8c806c4a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index ccd37bb2..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -39,3 +39,9 @@ patches:
       group: operators.coreos.com
       version: v1alpha1
       kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-956ca7b9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2072,2074c2072
<                 - args:
<                   - --threads-per-controller=32
<                   name: controller
---
>                 - name: controller 
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
<h3>2: Staging changes from 956ca7b9 to 79a548e9 on Tue Nov 12 08:51:22 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 3eee6d37..8c806c4a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index ccd37bb2..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -39,3 +39,9 @@ patches:
       group: operators.coreos.com
       version: v1alpha1
       kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
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
<h3>2: Development changes from 956ca7b9 to 79a548e9 on Tue Nov 12 08:51:22 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 3eee6d37..8c806c4a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index ccd37bb2..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -39,3 +39,9 @@ patches:
       group: operators.coreos.com
       version: v1alpha1
       kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 3b5a586d to 956ca7b9 on Tue Nov 12 08:06:59 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d6fea7d0..3eee6d37 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2222,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 2bd243ef..ccd37bb2 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,3 +27,15 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-3b5a586d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2208c2208
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
2223c2223
<   channel: pipelines-5.0
---
>   channel: latest 
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
<h3>3: Staging changes from 3b5a586d to 956ca7b9 on Tue Nov 12 08:06:59 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d6fea7d0..3eee6d37 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2222,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 2bd243ef..ccd37bb2 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,3 +27,15 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7 
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
<h3>3: Development changes from 3b5a586d to 956ca7b9 on Tue Nov 12 08:06:59 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d6fea7d0..3eee6d37 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2222,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index 2bd243ef..ccd37bb2 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,3 +27,15 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 71ea0b04 to 3b5a586d on Mon Nov 11 16:30:06 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3a88f1d8..a53142aa 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -395,7 +395,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "30"
+  dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
   dynamic.linux-s390x.allocation-timeout: "1800"
 
@@ -410,7 +410,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "30"
+  dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
   dynamic.linux-large-s390x.allocation-timeout: "1800"
 
@@ -426,7 +426,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "30"
+  dynamic.linux-ppc64le.max-instances: "50"
   dynamic.linux-ppc64le.allocation-timeout: "1800"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
@@ -446,7 +446,7 @@ data:
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
-  dynamic.linux-large-ppc64le.max-instances: "30"
+  dynamic.linux-large-ppc64le.max-instances: "50"
   dynamic.linux-large-ppc64le.allocation-timeout: "1800"
   dynamic.linux-large-ppc64le.user-data: |-
     #cloud-config
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 8668d223..da8751d0 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 5dcc0b31..c7e5fbc6 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,17 +5,17 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 
 patches:
   - path: ./manager_resources_patch.yaml
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index a4580512..f7186e62 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-71ea0b04/production/components/multi-platform-controller/production/kustomize.out.yaml
818c818
<         image: quay.io/konflux-ci/multi-platform-controller:53a13363d5e6cffb1bb4b4c260cb151f1fea672f
---
>         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
902c902
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:53a13363d5e6cffb1bb4b4c260cb151f1fea672f
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
./commit-71ea0b04/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
843c843
<         image: quay.io/konflux-ci/multi-platform-controller:53a13363d5e6cffb1bb4b4c260cb151f1fea672f
---
>         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
902c902
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:53a13363d5e6cffb1bb4b4c260cb151f1fea672f
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668 
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
<h3>4: Staging changes from 71ea0b04 to 3b5a586d on Mon Nov 11 16:30:06 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3a88f1d8..a53142aa 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -395,7 +395,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "30"
+  dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
   dynamic.linux-s390x.allocation-timeout: "1800"
 
@@ -410,7 +410,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "30"
+  dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
   dynamic.linux-large-s390x.allocation-timeout: "1800"
 
@@ -426,7 +426,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "30"
+  dynamic.linux-ppc64le.max-instances: "50"
   dynamic.linux-ppc64le.allocation-timeout: "1800"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
@@ -446,7 +446,7 @@ data:
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
-  dynamic.linux-large-ppc64le.max-instances: "30"
+  dynamic.linux-large-ppc64le.max-instances: "50"
   dynamic.linux-large-ppc64le.allocation-timeout: "1800"
   dynamic.linux-large-ppc64le.user-data: |-
     #cloud-config
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 8668d223..da8751d0 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 5dcc0b31..c7e5fbc6 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,17 +5,17 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 
 patches:
   - path: ./manager_resources_patch.yaml
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index a4580512..f7186e62 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f 
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
<h3>4: Development changes from 71ea0b04 to 3b5a586d on Mon Nov 11 16:30:06 2024 </h3>  
 
<details> 
<summary>Git Diff (113 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 3a88f1d8..a53142aa 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -395,7 +395,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "30"
+  dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
   dynamic.linux-s390x.allocation-timeout: "1800"
 
@@ -410,7 +410,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "30"
+  dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
   dynamic.linux-large-s390x.allocation-timeout: "1800"
 
@@ -426,7 +426,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "30"
+  dynamic.linux-ppc64le.max-instances: "50"
   dynamic.linux-ppc64le.allocation-timeout: "1800"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
@@ -446,7 +446,7 @@ data:
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
-  dynamic.linux-large-ppc64le.max-instances: "30"
+  dynamic.linux-large-ppc64le.max-instances: "50"
   dynamic.linux-large-ppc64le.allocation-timeout: "1800"
   dynamic.linux-large-ppc64le.user-data: |-
     #cloud-config
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 8668d223..da8751d0 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 5dcc0b31..c7e5fbc6 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,17 +5,17 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 
 patches:
   - path: ./manager_resources_patch.yaml
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index a4580512..f7186e62 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f 
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
```
 
</details> 
<br> 


</div>
