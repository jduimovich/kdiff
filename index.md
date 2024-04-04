# kustomize changes tracked by commits 
### This file generated at Thu Apr  4 12:02:47 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c8c9252a to 6a32173f on Wed Apr 3 21:58:15 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index e5dbc2c4..0777fb01 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here:
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -33,15 +33,11 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
-  #  - path: scale-down-exporter.yaml
-  #    target:
-  #      kind: Deployment
-  #      name: pipeline-metrics-exporter
-  #      namespace: openshift-pipelines
+#  - path: scale-down-exporter.yaml
+#    target:
+#      kind: Deployment
+#      name: pipeline-metrics-exporter
+#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -55,4 +51,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/staging/base/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 0a36a38f..1db38540 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 111aa9fb..f78fa7f7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c56eaea0..95448a4d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
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
<h3>1: Staging changes from c8c9252a to 6a32173f on Wed Apr 3 21:58:15 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index e5dbc2c4..0777fb01 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here:
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -33,15 +33,11 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
-  #  - path: scale-down-exporter.yaml
-  #    target:
-  #      kind: Deployment
-  #      name: pipeline-metrics-exporter
-  #      namespace: openshift-pipelines
+#  - path: scale-down-exporter.yaml
+#    target:
+#      kind: Deployment
+#      name: pipeline-metrics-exporter
+#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -55,4 +51,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/staging/base/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 0a36a38f..1db38540 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 111aa9fb..f78fa7f7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c56eaea0..95448a4d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-c8c9252a/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1879a1880
>     max-result-size: 12288
1984a1986
>     results-from: sidecar-logs
./commit-c8c9252a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1879a1880
>     max-result-size: 12288
1984a1986
>     results-from: sidecar-logs
./commit-c8c9252a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1879a1880
>     max-result-size: 12288
1984a1986
>     results-from: sidecar-logs 
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
<h3>1: Development changes from c8c9252a to 6a32173f on Wed Apr 3 21:58:15 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index e5dbc2c4..0777fb01 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here:
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -33,15 +33,11 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
-  #  - path: scale-down-exporter.yaml
-  #    target:
-  #      kind: Deployment
-  #      name: pipeline-metrics-exporter
-  #      namespace: openshift-pipelines
+#  - path: scale-down-exporter.yaml
+#    target:
+#      kind: Deployment
+#      name: pipeline-metrics-exporter
+#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -55,4 +51,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/staging/base/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 0a36a38f..1db38540 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 111aa9fb..f78fa7f7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c56eaea0..95448a4d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1877,7 +1877,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1983,7 +1982,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
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
<h3>2: Production changes from b7a831fe to c8c9252a on Wed Apr 3 17:59:03 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 0777fb01..e5dbc2c4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -33,11 +33,15 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
+  #  - path: scale-down-exporter.yaml
+  #    target:
+  #      kind: Deployment
+  #      name: pipeline-metrics-exporter
+  #      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -51,4 +55,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1db38540..0a36a38f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f78fa7f7..111aa9fb 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 95448a4d..c56eaea0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
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
<h3>2: Staging changes from b7a831fe to c8c9252a on Wed Apr 3 17:59:03 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 0777fb01..e5dbc2c4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -33,11 +33,15 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
+  #  - path: scale-down-exporter.yaml
+  #    target:
+  #      kind: Deployment
+  #      name: pipeline-metrics-exporter
+  #      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -51,4 +55,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1db38540..0a36a38f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f78fa7f7..111aa9fb 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 95448a4d..c56eaea0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-b7a831fe/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1880d1879
<     max-result-size: 12288
1986d1984
<     results-from: sidecar-logs
./commit-b7a831fe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1880d1879
<     max-result-size: 12288
1986d1984
<     results-from: sidecar-logs
./commit-b7a831fe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1880d1879
<     max-result-size: 12288
1986d1984
<     results-from: sidecar-logs 
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
<h3>2: Development changes from b7a831fe to c8c9252a on Wed Apr 3 17:59:03 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 0777fb01..e5dbc2c4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
@@ -33,11 +33,15 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
+  #  - path: scale-down-exporter.yaml
+  #    target:
+  #      kind: Deployment
+  #      name: pipeline-metrics-exporter
+  #      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -51,4 +55,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
@@ -0,0 +1,12 @@
+---
+- op: add
+  path: /spec/pipeline/results-from
+  # default upstream setting
+  # value: termination-message
+  value: sidecar-logs
+
+- op: add
+  path: /spec/pipeline/max-result-size
+  # default upstream setting
+  # value: 4096
+  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1db38540..0a36a38f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f78fa7f7..111aa9fb 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 95448a4d..c56eaea0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1877,6 +1877,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1982,6 +1983,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
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
<h3>3: Production changes from 3d65a819 to b7a831fe on Wed Apr 3 13:07:33 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index a8f5274b..0786ca9d 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,10 +1,10 @@
 To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+ksctl generate admin-manifests -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
 
 ```
 
 To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl generate cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6ad7469a..5c2e50bf 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
 To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
+ksctl generate admin-manifests -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
 To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl generate cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 3d65a819 to b7a831fe on Wed Apr 3 13:07:33 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index a8f5274b..0786ca9d 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,10 +1,10 @@
 To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+ksctl generate admin-manifests -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
 
 ```
 
 To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl generate cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6ad7469a..5c2e50bf 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
 To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
+ksctl generate admin-manifests -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
 To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl generate cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 3d65a819 to b7a831fe on Wed Apr 3 13:07:33 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
index a8f5274b..0786ca9d 100644
--- a/components/sandbox/user-management/production/README.adoc
+++ b/components/sandbox/user-management/production/README.adoc
@@ -1,10 +1,10 @@
 To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-ksctl adm setup -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
+ksctl generate admin-manifests -c components/sandbox/user-management/production/kubesaw-admins.yaml --out-dir components/sandbox/user-management/production/generated-manifests/
 
 ```
 
 To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-ksctl adm generate-cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
+ksctl generate cli-configs -c components/sandbox/user-management/production/kubesaw-admins.yaml -k <./paths/to/all/production-kubeconfigs>
 ```
\ No newline at end of file
diff --git a/components/sandbox/user-management/staging/README.adoc b/components/sandbox/user-management/staging/README.adoc
index 6ad7469a..5c2e50bf 100644
--- a/components/sandbox/user-management/staging/README.adoc
+++ b/components/sandbox/user-management/staging/README.adoc
@@ -1,9 +1,9 @@
 To apply any changes done in kubesaw-admins.yaml file use ksctl command-line tool from https://github.com/kubesaw/ksctl and run:
 ```
-ksctl adm setup -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
+ksctl generate admin-manifests -c components/sandbox/user-management/staging/kubesaw-admins.yaml --out-dir components/sandbox/user-management/staging/generated-manifests/
 ```
 
 To generate ksctl.yaml files for all ServiceAccounts listed in kubesaw-admins.yaml file, run:
 ```
-ksctl adm generate-cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
+ksctl generate cli-configs -c components/sandbox/user-management/staging/kubesaw-admins.yaml -k <./paths/to/all/stage-kubeconfigs>
 ```
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 12f5d9c2 to 3d65a819 on Wed Apr 3 12:04:18 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 6991ff0e..a1f9c820 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -12,9 +12,6 @@ spec:
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true
-      capacityThresholds:
-        resourceCapacityThreshold:
-          defaultThreshold: 90
       spaceConfig:
         spaceRequestEnabled: true
         spaceBindingRequestEnabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 085493c7..e8cb595c 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -11,12 +11,6 @@ spec:
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true
-      capacityThresholds:
-        maxNumberOfSpacesPerMemberCluster:
-          member-stone-stg-m01.7ayg.p1.openshiftapps.com: 1500
-          member-stone-stg-rh01.l2vh.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
-        resourceCapacityThreshold:
-          defaultThreshold: 90
       spaceConfig:
         spaceRequestEnabled: true
         spaceBindingRequestEnabled: true 
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
<h3>4: Staging changes from 12f5d9c2 to 3d65a819 on Wed Apr 3 12:04:18 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 6991ff0e..a1f9c820 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -12,9 +12,6 @@ spec:
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true
-      capacityThresholds:
-        resourceCapacityThreshold:
-          defaultThreshold: 90
       spaceConfig:
         spaceRequestEnabled: true
         spaceBindingRequestEnabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 085493c7..e8cb595c 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -11,12 +11,6 @@ spec:
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true
-      capacityThresholds:
-        maxNumberOfSpacesPerMemberCluster:
-          member-stone-stg-m01.7ayg.p1.openshiftapps.com: 1500
-          member-stone-stg-rh01.l2vh.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
-        resourceCapacityThreshold:
-          defaultThreshold: 90
       spaceConfig:
         spaceRequestEnabled: true
         spaceBindingRequestEnabled: true 
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
<h3>4: Development changes from 12f5d9c2 to 3d65a819 on Wed Apr 3 12:04:18 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
index 6991ff0e..a1f9c820 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -12,9 +12,6 @@ spec:
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true
-      capacityThresholds:
-        resourceCapacityThreshold:
-          defaultThreshold: 90
       spaceConfig:
         spaceRequestEnabled: true
         spaceBindingRequestEnabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index 085493c7..e8cb595c 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -11,12 +11,6 @@ spec:
         defaultSpaceTier: 'appstudio'
       automaticApproval:
         enabled: true
-      capacityThresholds:
-        maxNumberOfSpacesPerMemberCluster:
-          member-stone-stg-m01.7ayg.p1.openshiftapps.com: 1500
-          member-stone-stg-rh01.l2vh.p1.openshiftapps.com: -1 # Only manual re-targeting to this cluster is allowed
-        resourceCapacityThreshold:
-          defaultThreshold: 90
       spaceConfig:
         spaceRequestEnabled: true
         spaceBindingRequestEnabled: true 
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
