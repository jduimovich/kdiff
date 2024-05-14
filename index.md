# kustomize changes tracked by commits 
### This file generated at Tue May 14 16:05:03 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ba3d7edb to 8eb6d26c on Tue May 14 15:40:38 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 361cb0d9..c0265e60 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -28,6 +29,10 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/development/update-tekton-config-features.yaml
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
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d2844549..f8293a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,14 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -39,11 +40,15 @@ patches:
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
@@ -57,4 +62,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
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
index 8068e6ba..c007141a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c6444339..1b245534 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9831307c..d152fae6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
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
<h3>1: Staging changes from ba3d7edb to 8eb6d26c on Tue May 14 15:40:38 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 361cb0d9..c0265e60 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -28,6 +29,10 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/development/update-tekton-config-features.yaml
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
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d2844549..f8293a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,14 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -39,11 +40,15 @@ patches:
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
@@ -57,4 +62,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
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
index 8068e6ba..c007141a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c6444339..1b245534 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9831307c..d152fae6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
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
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-ba3d7edb/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
399,415d398
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
852,867d834
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-pipelines-controller-pods-log-access
< subjects:
< - kind: ServiceAccount
<   name: tekton-pipelines-controller
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1918d1884
<     max-result-size: 12288
2024d1989
<     results-from: sidecar-logs
./commit-ba3d7edb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
399,415d398
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
852,867d834
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-pipelines-controller-pods-log-access
< subjects:
< - kind: ServiceAccount
<   name: tekton-pipelines-controller
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1918d1884
<     max-result-size: 12288
2024d1989
<     results-from: sidecar-logs
./commit-ba3d7edb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
399,415d398
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
852,867d834
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-pipelines-controller-pods-log-access
< subjects:
< - kind: ServiceAccount
<   name: tekton-pipelines-controller
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1918d1884
<     max-result-size: 12288
2024d1989
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from ba3d7edb to 8eb6d26c on Tue May 14 15:40:38 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 361cb0d9..c0265e60 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,6 +11,7 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -28,6 +29,10 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: update-tekton-config-features.yaml
+    target:
+      kind: TektonConfig
+      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
new file mode 100644
index 00000000..c7da332c
--- /dev/null
+++ b/components/pipeline-service/development/update-tekton-config-features.yaml
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
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d2844549..f8293a16 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,14 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here: 
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
+# See more information about this option, here:
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
+  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -39,11 +40,15 @@ patches:
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
@@ -57,4 +62,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
\ No newline at end of file
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
new file mode 100644
index 00000000..886f7f6d
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
@@ -0,0 +1,30 @@
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+--- 
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: tekton-pipelines-controller-pods-log-access
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+  - kind: ServiceAccount
+    name: tekton-pipelines-controller
+    namespace: openshift-pipelines
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
index 8068e6ba..c007141a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index c6444339..1b245534 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9831307c..d152fae6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,6 +393,23 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -829,6 +846,22 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-pipelines-controller-pods-log-access
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-pipelines-controller-pods-log-access
+subjects:
+- kind: ServiceAccount
+  name: tekton-pipelines-controller
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1882,6 +1915,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -1987,6 +2021,7 @@ spec:
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
<summary>Kustomize Generated Diff (40 lines)</summary>  

``` 
./commit-ba3d7edb/development/components/pipeline-service/development/kustomize.out.yaml
416,432d415
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods/log
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
853,868d835
<     argocd.argoproj.io/sync-wave: "0"
<   name: tekton-pipelines-controller-pods-log-access
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-pipelines-controller-pods-log-access
< subjects:
< - kind: ServiceAccount
<   name: tekton-pipelines-controller
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2027d1993
<     max-result-size: 12288
2133d2098
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5fecad99 to ba3d7edb on Tue May 14 14:37:21 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
new file mode 100644
index 00000000..2b0f7204
--- /dev/null
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -0,0 +1,13 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: build-pipeline-config
+  namespace: build-service
+data:
+  config.yaml: |
+    default-pipeline-name: docker-builder
+    pipelines:
+    - name: fbc-builder
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
+    - name: docker-builder
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index fd2f5a3b..0a4b8765 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - build-pipeline-selectors/build-pipeline-selector.yaml
+- build-pipeline-config/build-pipeline-config.yaml
 - monitoring.yaml
 - rbac
 
diff --git a/components/build-service/base/rbac/build-config.yaml b/components/build-service/base/rbac/build-config.yaml
new file mode 100644
index 00000000..bd04b8e9
--- /dev/null
+++ b/components/build-service/base/rbac/build-config.yaml
@@ -0,0 +1,15 @@
+# role in build-service https://github.com/konflux-ci/build-service/pull/296
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: build-pipeline-config-read-only-binding
+  namespace: build-service
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
+roleRef:
+  kind: Role
+  name: build-pipeline-config-read-only
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/build-service/base/rbac/kustomization.yaml b/components/build-service/base/rbac/kustomization.yaml
index 302fde5f..c0e8c285 100644
--- a/components/build-service/base/rbac/kustomization.yaml
+++ b/components/build-service/base/rbac/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - build-maintainer.yaml
 - build-admin.yaml
+- build-config.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-5fecad99/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
509,524d508
<   name: build-pipeline-config-read-only-binding
<   namespace: build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: build-service-build-pipeline-config-read-only
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
626,641d609
<   namespace: build-service
< ---
< apiVersion: v1
< data:
<   config.yaml: |
<     default-pipeline-name: docker-builder
<     pipelines:
<     - name: fbc-builder
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
<     - name: docker-builder
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: build-pipeline-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 5fecad99 to ba3d7edb on Tue May 14 14:37:21 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
new file mode 100644
index 00000000..2b0f7204
--- /dev/null
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -0,0 +1,13 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: build-pipeline-config
+  namespace: build-service
+data:
+  config.yaml: |
+    default-pipeline-name: docker-builder
+    pipelines:
+    - name: fbc-builder
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
+    - name: docker-builder
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index fd2f5a3b..0a4b8765 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - build-pipeline-selectors/build-pipeline-selector.yaml
+- build-pipeline-config/build-pipeline-config.yaml
 - monitoring.yaml
 - rbac
 
diff --git a/components/build-service/base/rbac/build-config.yaml b/components/build-service/base/rbac/build-config.yaml
new file mode 100644
index 00000000..bd04b8e9
--- /dev/null
+++ b/components/build-service/base/rbac/build-config.yaml
@@ -0,0 +1,15 @@
+# role in build-service https://github.com/konflux-ci/build-service/pull/296
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: build-pipeline-config-read-only-binding
+  namespace: build-service
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
+roleRef:
+  kind: Role
+  name: build-pipeline-config-read-only
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/build-service/base/rbac/kustomization.yaml b/components/build-service/base/rbac/kustomization.yaml
index 302fde5f..c0e8c285 100644
--- a/components/build-service/base/rbac/kustomization.yaml
+++ b/components/build-service/base/rbac/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - build-maintainer.yaml
 - build-admin.yaml
+- build-config.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-5fecad99/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
509,524d508
<   name: build-pipeline-config-read-only-binding
<   namespace: build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: build-service-build-pipeline-config-read-only
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
626,641d609
<   namespace: build-service
< ---
< apiVersion: v1
< data:
<   config.yaml: |
<     default-pipeline-name: docker-builder
<     pipelines:
<     - name: fbc-builder
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
<     - name: docker-builder
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: build-pipeline-config 
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
<h3>2: Development changes from 5fecad99 to ba3d7edb on Tue May 14 14:37:21 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
new file mode 100644
index 00000000..2b0f7204
--- /dev/null
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -0,0 +1,13 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: build-pipeline-config
+  namespace: build-service
+data:
+  config.yaml: |
+    default-pipeline-name: docker-builder
+    pipelines:
+    - name: fbc-builder
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
+    - name: docker-builder
+      bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index fd2f5a3b..0a4b8765 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - build-pipeline-selectors/build-pipeline-selector.yaml
+- build-pipeline-config/build-pipeline-config.yaml
 - monitoring.yaml
 - rbac
 
diff --git a/components/build-service/base/rbac/build-config.yaml b/components/build-service/base/rbac/build-config.yaml
new file mode 100644
index 00000000..bd04b8e9
--- /dev/null
+++ b/components/build-service/base/rbac/build-config.yaml
@@ -0,0 +1,15 @@
+# role in build-service https://github.com/konflux-ci/build-service/pull/296
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: build-pipeline-config-read-only-binding
+  namespace: build-service
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
+roleRef:
+  kind: Role
+  name: build-pipeline-config-read-only
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/build-service/base/rbac/kustomization.yaml b/components/build-service/base/rbac/kustomization.yaml
index 302fde5f..c0e8c285 100644
--- a/components/build-service/base/rbac/kustomization.yaml
+++ b/components/build-service/base/rbac/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - build-maintainer.yaml
 - build-admin.yaml
+- build-config.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-5fecad99/development/components/build-service/development/kustomize.out.yaml
509,524d508
<   name: build-pipeline-config-read-only-binding
<   namespace: build-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: build-service-build-pipeline-config-read-only
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
626,641d609
<   namespace: build-service
< ---
< apiVersion: v1
< data:
<   config.yaml: |
<     default-pipeline-name: docker-builder
<     pipelines:
<     - name: fbc-builder
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:032a8745d43a942a247f365fc890b06023ccd67d
<     - name: docker-builder
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:032a8745d43a942a247f365fc890b06023ccd67d
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: build-pipeline-config 
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
<h3>3: Production changes from 2259bf84 to 5fecad99 on Tue May 14 09:23:39 2024 </h3>  
 
<details> 
<summary>Git Diff (374 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
new file mode 100644
index 00000000..c67c33d8
--- /dev/null
+++ b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ci-helper-app
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ci-helper-app-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: ci-helper-app
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
\ No newline at end of file
diff --git a/argo-cd-apps/base/ci-helper-app/kustomization.yaml b/argo-cd-apps/base/ci-helper-app/kustomization.yaml
new file mode 100644
index 00000000..4783433e
--- /dev/null
+++ b/argo-cd-apps/base/ci-helper-app/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ci-helper-app.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 2d57c6ca..45004b39 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 1a18add3..3d9fd12c 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
+  - ../../base/ci-helper-app
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -157,3 +158,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: quality-dashboard
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ci-helper-app
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 45d047e2..bb2924ea 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -6,4 +6,5 @@ resources:
   - ../../base/all-clusters
   - ../../base/backup
   - ../../base/quality-dashboard
+  - ../../base/ci-helper-app
 namespace: konflux-public-staging
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index 3ac2f0a9..c2895f5d 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -16,6 +16,7 @@ spec:
       - build-service
       - build-templates
       - build-templates-e2e
+      - ci-helper-app
       - dedicated-admin
       - deployment-validation-operator
       - dora-metrics
diff --git a/components/ci-helper-app/OWNERS b/components/ci-helper-app/OWNERS
new file mode 100644
index 00000000..12875409
--- /dev/null
+++ b/components/ci-helper-app/OWNERS
@@ -0,0 +1,5 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- dheerajodha
+- psturc
\ No newline at end of file
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
new file mode 100644
index 00000000..f969c9c8
--- /dev/null
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- rbac
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=bda888fd5b7a72f27b486429bde3ae7b361d6bd1
+
+
+images:
+- name: quay.io/konflux-ci/ci-helper-app
+  newName: quay.io/konflux-ci/ci-helper-app
+  newTag: bda888fd5b7a72f27b486429bde3ae7b361d6bd1
+
+namespace: ci-helper-app
\ No newline at end of file
diff --git a/components/ci-helper-app/base/rbac/ci-helper-app.yaml b/components/ci-helper-app/base/rbac/ci-helper-app.yaml
new file mode 100644
index 00000000..db2ff884
--- /dev/null
+++ b/components/ci-helper-app/base/rbac/ci-helper-app.yaml
@@ -0,0 +1,30 @@
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: ci-helper-app-maintainer
+  namespace: ci-helper-app
+rules:
+  - verbs:
+      - create
+      - delete
+      - edit
+      - get
+      - list
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: ci-helper-app-maintainers
+  namespace: ci-helper-app
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-qe-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ci-helper-app-maintainer
\ No newline at end of file
diff --git a/components/ci-helper-app/base/rbac/kustomization.yaml b/components/ci-helper-app/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..744531e1
--- /dev/null
+++ b/components/ci-helper-app/base/rbac/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ci-helper-app.yaml
\ No newline at end of file
diff --git a/components/ci-helper-app/development/kustomization.yaml b/components/ci-helper-app/development/kustomization.yaml
new file mode 100644
index 00000000..443762b7
--- /dev/null
+++ b/components/ci-helper-app/development/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml b/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml
new file mode 100644
index 00000000..1b800729
--- /dev/null
+++ b/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ci-helper-app-secrets
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/qe/ci-helper-app-secrets
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ci-helper-app-secrets
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/external-secrets/kustomization.yaml b/components/ci-helper-app/staging/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..98885087
--- /dev/null
+++ b/components/ci-helper-app/staging/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ci-helper-app-secrets.yaml
+namespace: ci-helper-app
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/kustomization.yaml b/components/ci-helper-app/staging/kustomization.yaml
new file mode 100644
index 00000000..31448294
--- /dev/null
+++ b/components/ci-helper-app/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- external-secrets
\ No newline at end of file
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 3c51647e..35b0e0e9 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -50,3 +50,4 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - ci-helper-app
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index d6eec769..10fa4c35 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -57,5 +57,7 @@ docs-en:
     children:
       - title: Quality Dashboard
         url: /docs/misc/quality-dashboard.html
+      - title: CI Helper App
+        url: /docs/misc/ci-helper-app.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/ci-helper-app.md b/docs/misc/ci-helper-app.md
new file mode 100644
index 00000000..38375324
--- /dev/null
+++ b/docs/misc/ci-helper-app.md
@@ -0,0 +1,10 @@
+---
+title: CI Helper App
+---
+
+The purpose of the CI Helper App is to analyze CI failures linked in pull requests by openshift-ci bot and provide more details about the failure in a PR comment.
+More details can be found here https://github.com/konflux-ci/ci-helper-app
+
+The manifests can be found [here](../../components/ci-helper-app/)
+
+For validating changes to CI Helper App on a dev cluster, configure related environment variables specified in [preview-template.env](../../hack/preview-template.env)
\ No newline at end of file
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index 830516ca..4a06931f 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -5,6 +5,7 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh"
+    "${ROOT}/secret-creator/create-ci-helper-app-secret.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index 09de2ba9..b757a5ed 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
+oc delete project enterprise-contract-service gitops quality-dashboard ci-helper-app internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 20828816..b946edd4 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -137,4 +137,9 @@ export QD_SLACK_TOKEN=
 export QD_GITHUB_ORG=
 ### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
 export QD_OAUTH_CLIENT_ID=
-export QD_OAUTH_CLIENT_SECRET=
\ No newline at end of file
+export QD_OAUTH_CLIENT_SECRET=
+
+# CI Helper App
+export CI_HELPER_GITHUB_APP_INTEGRATION_ID=
+export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
+export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
\ No newline at end of file
diff --git a/hack/secret-creator/create-ci-helper-app-secret.sh b/hack/secret-creator/create-ci-helper-app-secret.sh
new file mode 100755
index 00000000..d380e116
--- /dev/null
+++ b/hack/secret-creator/create-ci-helper-app-secret.sh
@@ -0,0 +1,26 @@
+#!/bin/bash -e
+
+main() {
+    echo "Creating secret for CI Helper App"
+
+    NS=ci-helper-app
+    SECRET_NAME=$NS-secrets
+
+    APP_ID=${CI_HELPER_GITHUB_APP_INTEGRATION_ID:-}
+    PRIVATE_KEY=${CI_HELPER_GITHUB_APP_PRIVATE_KEY:-}
+    WEBHOOK_SECRET=${CI_HELPER_GITHUB_APP_WEBHOOK_SECRET:-}
+
+    kubectl create namespace $NS -o yaml --dry-run=client | oc apply -f-
+
+    if ! kubectl get secret $SECRET_NAME -n $NS  &>/dev/null; then
+        kubectl create secret generic $SECRET_NAME \
+            --namespace=$NS \
+            --from-literal=app-id="$APP_ID" \
+            --from-literal=app-private-key="$PRIVATE_KEY" \
+            --from-literal=webhook-secret="$WEBHOOK_SECRET"
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-2259bf84/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
125d124
<     - ci-helper-app
./commit-2259bf84/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
125d124
<     - ci-helper-app
./commit-2259bf84/production/components/backup/production/stone-prod-p01/kustomize.out.yaml
125d124
<     - ci-helper-app
./commit-2259bf84/production/components/cluster-secret-store/production/kustomize.out.yaml
33d32
<     - ci-helper-app 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 2259bf84 to 5fecad99 on Tue May 14 09:23:39 2024 </h3>  
 
<details> 
<summary>Git Diff (374 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
new file mode 100644
index 00000000..c67c33d8
--- /dev/null
+++ b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ci-helper-app
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ci-helper-app-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: ci-helper-app
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
\ No newline at end of file
diff --git a/argo-cd-apps/base/ci-helper-app/kustomization.yaml b/argo-cd-apps/base/ci-helper-app/kustomization.yaml
new file mode 100644
index 00000000..4783433e
--- /dev/null
+++ b/argo-cd-apps/base/ci-helper-app/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ci-helper-app.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 2d57c6ca..45004b39 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 1a18add3..3d9fd12c 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
+  - ../../base/ci-helper-app
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -157,3 +158,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: quality-dashboard
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ci-helper-app
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 45d047e2..bb2924ea 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -6,4 +6,5 @@ resources:
   - ../../base/all-clusters
   - ../../base/backup
   - ../../base/quality-dashboard
+  - ../../base/ci-helper-app
 namespace: konflux-public-staging
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index 3ac2f0a9..c2895f5d 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -16,6 +16,7 @@ spec:
       - build-service
       - build-templates
       - build-templates-e2e
+      - ci-helper-app
       - dedicated-admin
       - deployment-validation-operator
       - dora-metrics
diff --git a/components/ci-helper-app/OWNERS b/components/ci-helper-app/OWNERS
new file mode 100644
index 00000000..12875409
--- /dev/null
+++ b/components/ci-helper-app/OWNERS
@@ -0,0 +1,5 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- dheerajodha
+- psturc
\ No newline at end of file
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
new file mode 100644
index 00000000..f969c9c8
--- /dev/null
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- rbac
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=bda888fd5b7a72f27b486429bde3ae7b361d6bd1
+
+
+images:
+- name: quay.io/konflux-ci/ci-helper-app
+  newName: quay.io/konflux-ci/ci-helper-app
+  newTag: bda888fd5b7a72f27b486429bde3ae7b361d6bd1
+
+namespace: ci-helper-app
\ No newline at end of file
diff --git a/components/ci-helper-app/base/rbac/ci-helper-app.yaml b/components/ci-helper-app/base/rbac/ci-helper-app.yaml
new file mode 100644
index 00000000..db2ff884
--- /dev/null
+++ b/components/ci-helper-app/base/rbac/ci-helper-app.yaml
@@ -0,0 +1,30 @@
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: ci-helper-app-maintainer
+  namespace: ci-helper-app
+rules:
+  - verbs:
+      - create
+      - delete
+      - edit
+      - get
+      - list
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: ci-helper-app-maintainers
+  namespace: ci-helper-app
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-qe-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ci-helper-app-maintainer
\ No newline at end of file
diff --git a/components/ci-helper-app/base/rbac/kustomization.yaml b/components/ci-helper-app/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..744531e1
--- /dev/null
+++ b/components/ci-helper-app/base/rbac/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ci-helper-app.yaml
\ No newline at end of file
diff --git a/components/ci-helper-app/development/kustomization.yaml b/components/ci-helper-app/development/kustomization.yaml
new file mode 100644
index 00000000..443762b7
--- /dev/null
+++ b/components/ci-helper-app/development/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml b/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml
new file mode 100644
index 00000000..1b800729
--- /dev/null
+++ b/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ci-helper-app-secrets
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/qe/ci-helper-app-secrets
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ci-helper-app-secrets
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/external-secrets/kustomization.yaml b/components/ci-helper-app/staging/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..98885087
--- /dev/null
+++ b/components/ci-helper-app/staging/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ci-helper-app-secrets.yaml
+namespace: ci-helper-app
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/kustomization.yaml b/components/ci-helper-app/staging/kustomization.yaml
new file mode 100644
index 00000000..31448294
--- /dev/null
+++ b/components/ci-helper-app/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- external-secrets
\ No newline at end of file
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 3c51647e..35b0e0e9 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -50,3 +50,4 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - ci-helper-app
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index d6eec769..10fa4c35 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -57,5 +57,7 @@ docs-en:
     children:
       - title: Quality Dashboard
         url: /docs/misc/quality-dashboard.html
+      - title: CI Helper App
+        url: /docs/misc/ci-helper-app.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/ci-helper-app.md b/docs/misc/ci-helper-app.md
new file mode 100644
index 00000000..38375324
--- /dev/null
+++ b/docs/misc/ci-helper-app.md
@@ -0,0 +1,10 @@
+---
+title: CI Helper App
+---
+
+The purpose of the CI Helper App is to analyze CI failures linked in pull requests by openshift-ci bot and provide more details about the failure in a PR comment.
+More details can be found here https://github.com/konflux-ci/ci-helper-app
+
+The manifests can be found [here](../../components/ci-helper-app/)
+
+For validating changes to CI Helper App on a dev cluster, configure related environment variables specified in [preview-template.env](../../hack/preview-template.env)
\ No newline at end of file
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index 830516ca..4a06931f 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -5,6 +5,7 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh"
+    "${ROOT}/secret-creator/create-ci-helper-app-secret.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index 09de2ba9..b757a5ed 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
+oc delete project enterprise-contract-service gitops quality-dashboard ci-helper-app internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 20828816..b946edd4 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -137,4 +137,9 @@ export QD_SLACK_TOKEN=
 export QD_GITHUB_ORG=
 ### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
 export QD_OAUTH_CLIENT_ID=
-export QD_OAUTH_CLIENT_SECRET=
\ No newline at end of file
+export QD_OAUTH_CLIENT_SECRET=
+
+# CI Helper App
+export CI_HELPER_GITHUB_APP_INTEGRATION_ID=
+export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
+export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
\ No newline at end of file
diff --git a/hack/secret-creator/create-ci-helper-app-secret.sh b/hack/secret-creator/create-ci-helper-app-secret.sh
new file mode 100755
index 00000000..d380e116
--- /dev/null
+++ b/hack/secret-creator/create-ci-helper-app-secret.sh
@@ -0,0 +1,26 @@
+#!/bin/bash -e
+
+main() {
+    echo "Creating secret for CI Helper App"
+
+    NS=ci-helper-app
+    SECRET_NAME=$NS-secrets
+
+    APP_ID=${CI_HELPER_GITHUB_APP_INTEGRATION_ID:-}
+    PRIVATE_KEY=${CI_HELPER_GITHUB_APP_PRIVATE_KEY:-}
+    WEBHOOK_SECRET=${CI_HELPER_GITHUB_APP_WEBHOOK_SECRET:-}
+
+    kubectl create namespace $NS -o yaml --dry-run=client | oc apply -f-
+
+    if ! kubectl get secret $SECRET_NAME -n $NS  &>/dev/null; then
+        kubectl create secret generic $SECRET_NAME \
+            --namespace=$NS \
+            --from-literal=app-id="$APP_ID" \
+            --from-literal=app-private-key="$PRIVATE_KEY" \
+            --from-literal=webhook-secret="$WEBHOOK_SECRET"
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-2259bf84/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
125d124
<     - ci-helper-app
./commit-2259bf84/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
125d124
<     - ci-helper-app
./commit-2259bf84/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
125d124
<     - ci-helper-app
./commit-5fecad99/staging/components: ci-helper-app
./commit-2259bf84/staging/components/cluster-secret-store/staging/kustomize.out.yaml
33d32
<     - ci-helper-app 
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
<h3>3: Development changes from 2259bf84 to 5fecad99 on Tue May 14 09:23:39 2024 </h3>  
 
<details> 
<summary>Git Diff (374 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
new file mode 100644
index 00000000..c67c33d8
--- /dev/null
+++ b/argo-cd-apps/base/ci-helper-app/ci-helper-app.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ci-helper-app
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ci-helper-app-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: ci-helper-app
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
\ No newline at end of file
diff --git a/argo-cd-apps/base/ci-helper-app/kustomization.yaml b/argo-cd-apps/base/ci-helper-app/kustomization.yaml
new file mode 100644
index 00000000..4783433e
--- /dev/null
+++ b/argo-cd-apps/base/ci-helper-app/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ci-helper-app.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 2d57c6ca..45004b39 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -94,3 +94,9 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ci-helper-app
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 1a18add3..3d9fd12c 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/keycloak
   - ../../base/ui
+  - ../../base/ci-helper-app
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -157,3 +158,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: quality-dashboard
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ci-helper-app
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 45d047e2..bb2924ea 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -6,4 +6,5 @@ resources:
   - ../../base/all-clusters
   - ../../base/backup
   - ../../base/quality-dashboard
+  - ../../base/ci-helper-app
 namespace: konflux-public-staging
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index 3ac2f0a9..c2895f5d 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -16,6 +16,7 @@ spec:
       - build-service
       - build-templates
       - build-templates-e2e
+      - ci-helper-app
       - dedicated-admin
       - deployment-validation-operator
       - dora-metrics
diff --git a/components/ci-helper-app/OWNERS b/components/ci-helper-app/OWNERS
new file mode 100644
index 00000000..12875409
--- /dev/null
+++ b/components/ci-helper-app/OWNERS
@@ -0,0 +1,5 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- dheerajodha
+- psturc
\ No newline at end of file
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
new file mode 100644
index 00000000..f969c9c8
--- /dev/null
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- rbac
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=bda888fd5b7a72f27b486429bde3ae7b361d6bd1
+
+
+images:
+- name: quay.io/konflux-ci/ci-helper-app
+  newName: quay.io/konflux-ci/ci-helper-app
+  newTag: bda888fd5b7a72f27b486429bde3ae7b361d6bd1
+
+namespace: ci-helper-app
\ No newline at end of file
diff --git a/components/ci-helper-app/base/rbac/ci-helper-app.yaml b/components/ci-helper-app/base/rbac/ci-helper-app.yaml
new file mode 100644
index 00000000..db2ff884
--- /dev/null
+++ b/components/ci-helper-app/base/rbac/ci-helper-app.yaml
@@ -0,0 +1,30 @@
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: ci-helper-app-maintainer
+  namespace: ci-helper-app
+rules:
+  - verbs:
+      - create
+      - delete
+      - edit
+      - get
+      - list
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: ci-helper-app-maintainers
+  namespace: ci-helper-app
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-qe-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ci-helper-app-maintainer
\ No newline at end of file
diff --git a/components/ci-helper-app/base/rbac/kustomization.yaml b/components/ci-helper-app/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..744531e1
--- /dev/null
+++ b/components/ci-helper-app/base/rbac/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ci-helper-app.yaml
\ No newline at end of file
diff --git a/components/ci-helper-app/development/kustomization.yaml b/components/ci-helper-app/development/kustomization.yaml
new file mode 100644
index 00000000..443762b7
--- /dev/null
+++ b/components/ci-helper-app/development/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml b/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml
new file mode 100644
index 00000000..1b800729
--- /dev/null
+++ b/components/ci-helper-app/staging/external-secrets/ci-helper-app-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ci-helper-app-secrets
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/qe/ci-helper-app-secrets
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ci-helper-app-secrets
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/external-secrets/kustomization.yaml b/components/ci-helper-app/staging/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..98885087
--- /dev/null
+++ b/components/ci-helper-app/staging/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ci-helper-app-secrets.yaml
+namespace: ci-helper-app
\ No newline at end of file
diff --git a/components/ci-helper-app/staging/kustomization.yaml b/components/ci-helper-app/staging/kustomization.yaml
new file mode 100644
index 00000000..31448294
--- /dev/null
+++ b/components/ci-helper-app/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- external-secrets
\ No newline at end of file
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 3c51647e..35b0e0e9 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -50,3 +50,4 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - ci-helper-app
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index d6eec769..10fa4c35 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -57,5 +57,7 @@ docs-en:
     children:
       - title: Quality Dashboard
         url: /docs/misc/quality-dashboard.html
+      - title: CI Helper App
+        url: /docs/misc/ci-helper-app.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/ci-helper-app.md b/docs/misc/ci-helper-app.md
new file mode 100644
index 00000000..38375324
--- /dev/null
+++ b/docs/misc/ci-helper-app.md
@@ -0,0 +1,10 @@
+---
+title: CI Helper App
+---
+
+The purpose of the CI Helper App is to analyze CI failures linked in pull requests by openshift-ci bot and provide more details about the failure in a PR comment.
+More details can be found here https://github.com/konflux-ci/ci-helper-app
+
+The manifests can be found [here](../../components/ci-helper-app/)
+
+For validating changes to CI Helper App on a dev cluster, configure related environment variables specified in [preview-template.env](../../hack/preview-template.env)
\ No newline at end of file
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index 830516ca..4a06931f 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -5,6 +5,7 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh"
+    "${ROOT}/secret-creator/create-ci-helper-app-secret.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index 09de2ba9..b757a5ed 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
+oc delete project enterprise-contract-service gitops quality-dashboard ci-helper-app internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 20828816..b946edd4 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -137,4 +137,9 @@ export QD_SLACK_TOKEN=
 export QD_GITHUB_ORG=
 ### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
 export QD_OAUTH_CLIENT_ID=
-export QD_OAUTH_CLIENT_SECRET=
\ No newline at end of file
+export QD_OAUTH_CLIENT_SECRET=
+
+# CI Helper App
+export CI_HELPER_GITHUB_APP_INTEGRATION_ID=
+export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
+export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
\ No newline at end of file
diff --git a/hack/secret-creator/create-ci-helper-app-secret.sh b/hack/secret-creator/create-ci-helper-app-secret.sh
new file mode 100755
index 00000000..d380e116
--- /dev/null
+++ b/hack/secret-creator/create-ci-helper-app-secret.sh
@@ -0,0 +1,26 @@
+#!/bin/bash -e
+
+main() {
+    echo "Creating secret for CI Helper App"
+
+    NS=ci-helper-app
+    SECRET_NAME=$NS-secrets
+
+    APP_ID=${CI_HELPER_GITHUB_APP_INTEGRATION_ID:-}
+    PRIVATE_KEY=${CI_HELPER_GITHUB_APP_PRIVATE_KEY:-}
+    WEBHOOK_SECRET=${CI_HELPER_GITHUB_APP_WEBHOOK_SECRET:-}
+
+    kubectl create namespace $NS -o yaml --dry-run=client | oc apply -f-
+
+    if ! kubectl get secret $SECRET_NAME -n $NS  &>/dev/null; then
+        kubectl create secret generic $SECRET_NAME \
+            --namespace=$NS \
+            --from-literal=app-id="$APP_ID" \
+            --from-literal=app-private-key="$PRIVATE_KEY" \
+            --from-literal=webhook-secret="$WEBHOOK_SECRET"
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-5fecad99/development/components: ci-helper-app 
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
<h3>4: Production changes from c1f7d6ad to 2259bf84 on Tue May 14 07:35:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 6d768a8d..4af6b835 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-c1f7d6ad/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
802c802
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
814c814
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
826c826
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
838c838
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c1f7d6ad to 2259bf84 on Tue May 14 07:35:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 6d768a8d..4af6b835 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-c1f7d6ad/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
802c802
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
814c814
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
826c826
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
838c838
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from c1f7d6ad to 2259bf84 on Tue May 14 07:35:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 6d768a8d..4af6b835 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-c1f7d6ad/development/components/build-service/development/kustomize.out.yaml
788c788
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
800c800
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
812c812
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003
824c824
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:861b0b8581e43b1da3b3ad81290feb3c4d60484e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6b5e66e2a4f9c376e26f534a9d880bafc40a7003 
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
```
 
</details> 
<br> 


</div>
