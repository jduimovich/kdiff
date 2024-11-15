# kustomize changes tracked by commits 
### This file generated at Fri Nov 15 04:05:06 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 3b1dc865 to 9fc375e3 on Thu Nov 14 21:05:29 2024 </h3>  
 
<details> 
<summary>Git Diff (196 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 72d36e5b..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1694,7 +1694,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -1709,7 +1709,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 5a5a691e..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c0cce49f..4e6cd249 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b7b81071..8e6454a5 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 7dd98c45..a6ee80df 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,18 +37,6 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index c849f373..46488583 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-3b1dc865/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2210c2210
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
./commit-3b1dc865/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2210c2210
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
./commit-3b1dc865/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2208c2208
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 3b1dc865 to 9fc375e3 on Thu Nov 14 21:05:29 2024 </h3>  
 
<details> 
<summary>Git Diff (196 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 72d36e5b..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1694,7 +1694,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -1709,7 +1709,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 5a5a691e..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c0cce49f..4e6cd249 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b7b81071..8e6454a5 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 7dd98c45..a6ee80df 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,18 +37,6 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index c849f373..46488583 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 3b1dc865 to 9fc375e3 on Thu Nov 14 21:05:29 2024 </h3>  
 
<details> 
<summary>Git Diff (196 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 72d36e5b..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1694,7 +1694,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -1709,7 +1709,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 5a5a691e..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c0cce49f..4e6cd249 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b7b81071..8e6454a5 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 7dd98c45..a6ee80df 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,18 +37,6 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index c849f373..46488583 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 87268199 to 3b1dc865 on Thu Nov 14 20:14:08 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6aba143f..a0cbb22a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
index 3794ca4e..5a5a691e 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -1,4 +1,4 @@
 ---
 - op: replace
   path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-87268199/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2210c2210
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 87268199 to 3b1dc865 on Thu Nov 14 20:14:08 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6aba143f..a0cbb22a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
index 3794ca4e..5a5a691e 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -1,4 +1,4 @@
 ---
 - op: replace
   path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 87268199 to 3b1dc865 on Thu Nov 14 20:14:08 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6aba143f..a0cbb22a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
index 3794ca4e..5a5a691e 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
@@ -1,4 +1,4 @@
 ---
 - op: replace
   path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 0626e263 to 87268199 on Thu Nov 14 20:00:00 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index c07e5160..3a875abc 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1849,7 +1849,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 3672fa6b..da4f57ad 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1695,7 +1695,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7d052b97..68faef51 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2200,7 +2200,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c974e5be..293dce72 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2199,7 +2199,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 0626e263 to 87268199 on Thu Nov 14 20:00:00 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index c07e5160..3a875abc 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1849,7 +1849,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 3672fa6b..da4f57ad 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1695,7 +1695,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7d052b97..68faef51 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2200,7 +2200,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c974e5be..293dce72 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2199,7 +2199,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-0626e263/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2201c2201
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
./commit-0626e263/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2200c2200
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b 
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
<h3>3: Development changes from 0626e263 to 87268199 on Thu Nov 14 20:00:00 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index c07e5160..3a875abc 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1849,7 +1849,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 3672fa6b..da4f57ad 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1695,7 +1695,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7d052b97..68faef51 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2200,7 +2200,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c974e5be..293dce72 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2199,7 +2199,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0626e263/development/components/pipeline-service/development/kustomize.out.yaml
8549c8549
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ab9eca37 to 0626e263 on Thu Nov 14 12:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index e07439e7..6c67b35b 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=52a383f766599f264b164361f0afcf795449180d
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=52a383f766599f264b164361f0afcf795449180d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 52a383f766599f264b164361f0afcf795449180d
+  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 52a383f766599f264b164361f0afcf795449180d
+  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from ab9eca37 to 0626e263 on Thu Nov 14 12:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index e07439e7..6c67b35b 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=52a383f766599f264b164361f0afcf795449180d
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=52a383f766599f264b164361f0afcf795449180d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 52a383f766599f264b164361f0afcf795449180d
+  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 52a383f766599f264b164361f0afcf795449180d
+  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ab9eca37/staging/components/multi-platform-controller/staging/kustomize.out.yaml
648c648
<         image: quay.io/konflux-ci/multi-platform-controller:6f8abf513a9da030c16286ef9fffa4084db33cca
---
>         image: quay.io/konflux-ci/multi-platform-controller:52a383f766599f264b164361f0afcf795449180d
732c732
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:6f8abf513a9da030c16286ef9fffa4084db33cca
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:52a383f766599f264b164361f0afcf795449180d 
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
<h3>4: Development changes from ab9eca37 to 0626e263 on Thu Nov 14 12:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index e07439e7..6c67b35b 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=52a383f766599f264b164361f0afcf795449180d
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=52a383f766599f264b164361f0afcf795449180d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=6f8abf513a9da030c16286ef9fffa4084db33cca
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 52a383f766599f264b164361f0afcf795449180d
+  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 52a383f766599f264b164361f0afcf795449180d
+  newTag: 6f8abf513a9da030c16286ef9fffa4084db33cca 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ab9eca37/development/components/multi-platform-controller/development/kustomize.out.yaml
340c340
<         image: quay.io/konflux-ci/multi-platform-controller:6f8abf513a9da030c16286ef9fffa4084db33cca
---
>         image: quay.io/konflux-ci/multi-platform-controller:52a383f766599f264b164361f0afcf795449180d
399c399
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:6f8abf513a9da030c16286ef9fffa4084db33cca
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:52a383f766599f264b164361f0afcf795449180d 
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
```
 
</details> 
<br> 


</div>
