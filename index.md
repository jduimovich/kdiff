# kustomize changes tracked by commits 
### This file generated at Tue Mar 12 16:05:36 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b8fee7df to a08f5c59 on Tue Mar 12 15:28:53 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
index b3f9c675..09bbdf08 100644
--- a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -15,7 +15,5 @@ spec:
               "-auth_mode",
               "token",
               "-check_owner=false",
-              "-completed_run_grace_period",
-              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
-              "2h",
+              "-completed_run_grace_period=2h",
             ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index abdaa837..52e80606 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -33,3 +33,12 @@ patches:
       namespace: tekton-results
       name: tekton-results-watcher
   - path: increase-results-pruner-gracePeriod.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: reduce-watcher-cpu-mem-reqs.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
new file mode 100644
index 00000000..8e50d3af
--- /dev/null
+++ b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/cpu
+  value: "100m"
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/memory
+  value: "64Mi"
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from b8fee7df to a08f5c59 on Tue Mar 12 15:28:53 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
index b3f9c675..09bbdf08 100644
--- a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -15,7 +15,5 @@ spec:
               "-auth_mode",
               "token",
               "-check_owner=false",
-              "-completed_run_grace_period",
-              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
-              "2h",
+              "-completed_run_grace_period=2h",
             ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index abdaa837..52e80606 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -33,3 +33,12 @@ patches:
       namespace: tekton-results
       name: tekton-results-watcher
   - path: increase-results-pruner-gracePeriod.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: reduce-watcher-cpu-mem-reqs.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
new file mode 100644
index 00000000..8e50d3af
--- /dev/null
+++ b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/cpu
+  value: "100m"
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/memory
+  value: "64Mi"
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from b8fee7df to a08f5c59 on Tue Mar 12 15:28:53 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
index b3f9c675..09bbdf08 100644
--- a/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
+++ b/components/pipeline-service/development/increase-results-pruner-gracePeriod.yaml
@@ -15,7 +15,5 @@ spec:
               "-auth_mode",
               "token",
               "-check_owner=false",
-              "-completed_run_grace_period",
-              # default pipeline-service configuration has a greacePeriod of "10m" and will be moving towards immediate pruning in future
-              "2h",
+              "-completed_run_grace_period=2h",
             ]
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index abdaa837..52e80606 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -33,3 +33,12 @@ patches:
       namespace: tekton-results
       name: tekton-results-watcher
   - path: increase-results-pruner-gracePeriod.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
+  - path: reduce-watcher-cpu-mem-reqs.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
new file mode 100644
index 00000000..8e50d3af
--- /dev/null
+++ b/components/pipeline-service/development/reduce-watcher-cpu-mem-reqs.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/cpu
+  value: "100m"
+- op: replace
+  path: /spec/template/spec/containers/0/resources/requests/memory
+  value: "64Mi"
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-b8fee7df/development/components/pipeline-service/development/kustomize.out.yaml
1550c1550,1551
<         - -completed_run_grace_period=2h
---
>         - -completed_run_grace_period
>         - 2h
1580,1581c1581,1582
<             cpu: 100m
<             memory: 64Mi
---
>             cpu: 250m
>             memory: 2Gi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from ddb34f64 to b8fee7df on Tue Mar 12 13:30:17 2024 </h3>  
 
<details> 
<summary>Git Diff (1546 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 9d69d9e1..ff5d860f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -21,9 +21,6 @@ resources:
 - ban-user-alkazako-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -47,8 +44,6 @@ resources:
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-mjobanek-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
@@ -62,10 +57,8 @@ resources:
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
similarity index 87%
rename from components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
rename to components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index 07b47fe5..d8438153 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -7,12 +7,12 @@ kind: RoleBinding
 metadata:
   labels:
     provider: sandbox-sre
-  name: view-secrets-fmuntean-host
+  name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
-  name: view-secrets-host
+  name: retarget-user-host
 subjects:
 - kind: ServiceAccount
   name: fmuntean
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 3cfc9815..4a33f24c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,9 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -21,12 +18,7 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
index 77c382b3..28283b65 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,18 +23,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -44,28 +38,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -73,23 +61,20 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
+      - retarget-user
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
deleted file mode 100644
index 1682c6c1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
deleted file mode 100644
index 495a5754..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 2f967577..bb4341d3 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -24,10 +24,6 @@ resources:
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-dperaza4dustbit-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -62,9 +58,6 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-dperaza4dustbit-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -91,7 +84,3 @@ resources:
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-dperaza4dustbit-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
deleted file mode 100644
index 7d767237..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
deleted file mode 100644
index 07b47fe5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
deleted file mode 100644
index 83a28fe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3df642e4..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 7956116a..6dc88865 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,10 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-dperaza4dustbit-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -24,15 +20,8 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-dperaza4dustbit-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-dperaza4dustbit-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3ea1c71b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 63789e8d..f0611d27 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,28 +23,22 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: alkazako
   host:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -54,18 +46,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -73,28 +61,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -102,7 +84,6 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -110,16 +91,13 @@ serviceAccounts:
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from ddb34f64 to b8fee7df on Tue Mar 12 13:30:17 2024 </h3>  
 
<details> 
<summary>Git Diff (1546 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 9d69d9e1..ff5d860f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -21,9 +21,6 @@ resources:
 - ban-user-alkazako-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -47,8 +44,6 @@ resources:
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-mjobanek-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
@@ -62,10 +57,8 @@ resources:
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
similarity index 87%
rename from components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
rename to components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index 07b47fe5..d8438153 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -7,12 +7,12 @@ kind: RoleBinding
 metadata:
   labels:
     provider: sandbox-sre
-  name: view-secrets-fmuntean-host
+  name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
-  name: view-secrets-host
+  name: retarget-user-host
 subjects:
 - kind: ServiceAccount
   name: fmuntean
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 3cfc9815..4a33f24c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,9 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -21,12 +18,7 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
index 77c382b3..28283b65 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,18 +23,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -44,28 +38,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -73,23 +61,20 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
+      - retarget-user
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
deleted file mode 100644
index 1682c6c1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
deleted file mode 100644
index 495a5754..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 2f967577..bb4341d3 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -24,10 +24,6 @@ resources:
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-dperaza4dustbit-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -62,9 +58,6 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-dperaza4dustbit-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -91,7 +84,3 @@ resources:
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-dperaza4dustbit-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
deleted file mode 100644
index 7d767237..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
deleted file mode 100644
index 07b47fe5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
deleted file mode 100644
index 83a28fe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3df642e4..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 7956116a..6dc88865 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,10 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-dperaza4dustbit-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -24,15 +20,8 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-dperaza4dustbit-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-dperaza4dustbit-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3ea1c71b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 63789e8d..f0611d27 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,28 +23,22 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: alkazako
   host:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -54,18 +46,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -73,28 +61,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -102,7 +84,6 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -110,16 +91,13 @@ serviceAccounts:
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from ddb34f64 to b8fee7df on Tue Mar 12 13:30:17 2024 </h3>  
 
<details> 
<summary>Git Diff (1546 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 9d69d9e1..ff5d860f 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -21,9 +21,6 @@ resources:
 - ban-user-alkazako-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -47,8 +44,6 @@ resources:
 - gdpr-delete-bsutter-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-mjobanek-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bsutter-host.yaml
@@ -62,10 +57,8 @@ resources:
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
 - retarget-user-ergonzal-host.yaml
+- retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
 - retarget-user-mjobanek-host.yaml
 - retarget-user-ralphbean-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
similarity index 87%
rename from components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
rename to components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
index 07b47fe5..d8438153 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-fmuntean-host.yaml
@@ -7,12 +7,12 @@ kind: RoleBinding
 metadata:
   labels:
     provider: sandbox-sre
-  name: view-secrets-fmuntean-host
+  name: retarget-user-fmuntean-host
   namespace: toolchain-host-operator
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
-  name: view-secrets-host
+  name: retarget-user-host
 subjects:
 - kind: ServiceAccount
   name: fmuntean
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 3cfc9815..4a33f24c 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,9 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -21,12 +18,7 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
index 77c382b3..28283b65 100644
--- a/components/sandbox/user-management/production/sandbox-config.yaml
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,18 +23,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -44,28 +38,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -73,23 +61,20 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
+      - retarget-user
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
deleted file mode 100644
index 6e43b0b1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
deleted file mode 100644
index 1682c6c1..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
deleted file mode 100644
index 83055cc9..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
deleted file mode 100644
index 3a4f16d5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
deleted file mode 100644
index 4084a750..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
deleted file mode 100644
index 495a5754..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
deleted file mode 100644
index e89e039c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 2f967577..bb4341d3 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -24,10 +24,6 @@ resources:
 - ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
-- clusterrole-edit-alkazako-host.yaml
-- clusterrole-edit-dperaza4dustbit-host.yaml
-- clusterrole-edit-fmuntean-host.yaml
-- clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
 - clusterrole-view-bcook-host.yaml
 - clusterrole-view-bkundu-host.yaml
@@ -62,9 +58,6 @@ resources:
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
-- install-operator-alkazako-host.yaml
-- install-operator-dperaza4dustbit-host.yaml
-- install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
@@ -91,7 +84,3 @@ resources:
 - retarget-user-ralphbean-host.yaml
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
-- view-secrets-alkazako-host.yaml
-- view-secrets-dperaza4dustbit-host.yaml
-- view-secrets-fmuntean-host.yaml
-- view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
deleted file mode 100644
index 88a82cd0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
deleted file mode 100644
index 7d767237..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
deleted file mode 100644
index 07b47fe5..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
deleted file mode 100644
index ae64631e..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-host
-  namespace: toolchain-host-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-host
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
deleted file mode 100644
index 5ef5483f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
index 95e8b83c..b87d527b 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -9,8 +9,6 @@ resources:
 - ban-user-host.yaml
 - deactivate-user-host.yaml
 - gdpr-delete-host.yaml
-- install-operator-host.yaml
 - promote-user-host.yaml
 - restart-deployment-host.yaml
 - retarget-user-host.yaml
-- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
deleted file mode 100644
index 01d2ffe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-host
-  namespace: toolchain-host-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
deleted file mode 100644
index bfc35de2..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
deleted file mode 100644
index 83a28fe0..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
deleted file mode 100644
index 74f1d708..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
deleted file mode 100644
index 160afe57..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: clusterrole-edit-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
deleted file mode 100644
index e247de18..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3df642e4..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
deleted file mode 100644
index e8827f2b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: install-operator-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index 7956116a..6dc88865 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -5,10 +5,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- clusterrole-edit-alkazako-member.yaml
-- clusterrole-edit-dperaza4dustbit-member.yaml
-- clusterrole-edit-fmuntean-member.yaml
-- clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
 - clusterrole-view-bcook-member.yaml
 - clusterrole-view-bkundu-member.yaml
@@ -24,15 +20,8 @@ resources:
 - clusterrole-view-ralphbean-member.yaml
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
-- install-operator-alkazako-member.yaml
-- install-operator-dperaza4dustbit-member.yaml
-- install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
 - restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
-- view-secrets-alkazako-member.yaml
-- view-secrets-dperaza4dustbit-member.yaml
-- view-secrets-fmuntean-member.yaml
-- view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
deleted file mode 100644
index 3d3d131f..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-alkazako-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: alkazako
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
deleted file mode 100644
index 3ea1c71b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-dperaza4dustbit-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: dperaza4dustbit
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
deleted file mode 100644
index 4424ed9c..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-fmuntean-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: fmuntean
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
deleted file mode 100644
index 38f3db01..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-mjobanek-member
-  namespace: toolchain-member-operator
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: view-secrets-member
-subjects:
-- kind: ServiceAccount
-  name: mjobanek
-  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
deleted file mode 100644
index a9845528..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: install-operator-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - operators.coreos.com
-  resources:
-  - catalogsources
-  - operatorgroups
-  - subscriptions
-  verbs:
-  - get
-  - list
-  - create
-  - patch
-  - update
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
index 790324e2..b61931a2 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -5,6 +5,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- install-operator-member.yaml
 - restart-deployment-member.yaml
-- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
deleted file mode 100644
index e5b7e30b..00000000
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-# ----------------------------------------------------------------
-# Generated by cli - DO NOT EDIT
-# ----------------------------------------------------------------
-
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  labels:
-    provider: sandbox-sre
-  name: view-secrets-member
-  namespace: toolchain-member-operator
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 63789e8d..f0611d27 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -14,10 +14,8 @@ serviceAccounts:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -25,28 +23,22 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: alkazako
   host:
     roleBindings:
     - namespace: toolchain-host-operator
       roles:
-      - install-operator
       - restart-deployment
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -54,18 +46,14 @@ serviceAccounts:
       - gdpr-delete
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: mjobanek
   host:
@@ -73,28 +61,22 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
       - retarget-user
       - gdpr-delete
-      - install-operator
       - restart-deployment
       clusterRoles:
       - view
-      - edit
 
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
-      - install-operator
       - restart-deployment
-      - view-secrets
       clusterRoles:
       - view
-      - edit
 
 - name: fmuntean
   host:
@@ -102,7 +84,6 @@ serviceAccounts:
     - namespace: toolchain-host-operator
       roles:
       - approve-user
-      - view-secrets
       - deactivate-user
       - ban-user
       - promote-user
@@ -110,16 +91,13 @@ serviceAccounts:
       - gdpr-delete
       - restart-deployment
       clusterRoles:
-      - edit
       - view
   member:
     roleBindings:
     - namespace: toolchain-member-operator
       roles:
       - restart-deployment
-      - view-secrets
       clusterRoles:
-      - edit
       - view
 
 - name: bkundu 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from fb1c71bb to ddb34f64 on Tue Mar 12 12:26:57 2024 </h3>  
 
<details> 
<summary>Git Diff (620 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..15b0babb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index 4f163d3a..a962287c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..63b312b2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..ec73894e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: ban-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..1682c6c1
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-edit-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..71eb013c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..f80bddb1
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..785918b5
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..495a5754
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: install-operator-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 619bb153..2f967577 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - approve-user-bkundu-host.yaml
 - approve-user-bsutter-host.yaml
 - approve-user-dfodor-host.yaml
+- approve-user-dperaza4dustbit-host.yaml
 - approve-user-ergonzal-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
@@ -20,9 +21,11 @@ resources:
 - approve-user-rorai-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
+- ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
 - clusterrole-edit-alkazako-host.yaml
+- clusterrole-edit-dperaza4dustbit-host.yaml
 - clusterrole-edit-fmuntean-host.yaml
 - clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
@@ -30,6 +33,7 @@ resources:
 - clusterrole-view-bkundu-host.yaml
 - clusterrole-view-bsutter-host.yaml
 - clusterrole-view-dfodor-host.yaml
+- clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-ergonzal-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
@@ -43,6 +47,7 @@ resources:
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bkundu-host.yaml
 - deactivate-user-bsutter-host.yaml
+- deactivate-user-dperaza4dustbit-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
@@ -51,21 +56,25 @@ resources:
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bkundu-host.yaml
 - gdpr-delete-bsutter-host.yaml
+- gdpr-delete-dperaza4dustbit-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-jhutar-host.yaml
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
 - install-operator-alkazako-host.yaml
+- install-operator-dperaza4dustbit-host.yaml
 - install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
 - promote-user-bsutter-host.yaml
+- promote-user-dperaza4dustbit-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
 - restart-deployment-alkazako-host.yaml
+- restart-deployment-dperaza4dustbit-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
 - retarget-user-alkazako-host.yaml
@@ -73,6 +82,7 @@ resources:
 - retarget-user-bkundu-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
+- retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
@@ -82,5 +92,6 @@ resources:
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
 - view-secrets-alkazako-host.yaml
+- view-secrets-dperaza4dustbit-host.yaml
 - view-secrets-fmuntean-host.yaml
 - view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..69f794bb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..07e1b1bb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..50d011c0
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..7d767237
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: view-secrets-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..01dbca0e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index 4f163d3a..a962287c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..83a28fe0
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-edit-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..9f5013c2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..3df642e4
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: install-operator-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index a33c4d89..7956116a 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - clusterrole-edit-alkazako-member.yaml
+- clusterrole-edit-dperaza4dustbit-member.yaml
 - clusterrole-edit-fmuntean-member.yaml
 - clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
@@ -13,6 +14,7 @@ resources:
 - clusterrole-view-bkundu-member.yaml
 - clusterrole-view-bsutter-member.yaml
 - clusterrole-view-dfodor-member.yaml
+- clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-ergonzal-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
@@ -23,11 +25,14 @@ resources:
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
 - install-operator-alkazako-member.yaml
+- install-operator-dperaza4dustbit-member.yaml
 - install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
+- restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
 - view-secrets-alkazako-member.yaml
+- view-secrets-dperaza4dustbit-member.yaml
 - view-secrets-fmuntean-member.yaml
 - view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..b2a212c3
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..3ea1c71b
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: view-secrets-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 7d54f6d3..63789e8d 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -9,6 +9,35 @@ clusters:
 
 serviceAccounts:
 ## service accounts to be used by humans via `sandbox-cli`
+- name: dperaza4dustbit
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+      - edit
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - view
+      - edit
+
 - name: alkazako
   host:
     roleBindings: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from fb1c71bb to ddb34f64 on Tue Mar 12 12:26:57 2024 </h3>  
 
<details> 
<summary>Git Diff (620 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..15b0babb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index 4f163d3a..a962287c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..63b312b2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..ec73894e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: ban-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..1682c6c1
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-edit-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..71eb013c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..f80bddb1
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..785918b5
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..495a5754
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: install-operator-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 619bb153..2f967577 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - approve-user-bkundu-host.yaml
 - approve-user-bsutter-host.yaml
 - approve-user-dfodor-host.yaml
+- approve-user-dperaza4dustbit-host.yaml
 - approve-user-ergonzal-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
@@ -20,9 +21,11 @@ resources:
 - approve-user-rorai-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
+- ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
 - clusterrole-edit-alkazako-host.yaml
+- clusterrole-edit-dperaza4dustbit-host.yaml
 - clusterrole-edit-fmuntean-host.yaml
 - clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
@@ -30,6 +33,7 @@ resources:
 - clusterrole-view-bkundu-host.yaml
 - clusterrole-view-bsutter-host.yaml
 - clusterrole-view-dfodor-host.yaml
+- clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-ergonzal-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
@@ -43,6 +47,7 @@ resources:
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bkundu-host.yaml
 - deactivate-user-bsutter-host.yaml
+- deactivate-user-dperaza4dustbit-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
@@ -51,21 +56,25 @@ resources:
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bkundu-host.yaml
 - gdpr-delete-bsutter-host.yaml
+- gdpr-delete-dperaza4dustbit-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-jhutar-host.yaml
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
 - install-operator-alkazako-host.yaml
+- install-operator-dperaza4dustbit-host.yaml
 - install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
 - promote-user-bsutter-host.yaml
+- promote-user-dperaza4dustbit-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
 - restart-deployment-alkazako-host.yaml
+- restart-deployment-dperaza4dustbit-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
 - retarget-user-alkazako-host.yaml
@@ -73,6 +82,7 @@ resources:
 - retarget-user-bkundu-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
+- retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
@@ -82,5 +92,6 @@ resources:
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
 - view-secrets-alkazako-host.yaml
+- view-secrets-dperaza4dustbit-host.yaml
 - view-secrets-fmuntean-host.yaml
 - view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..69f794bb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..07e1b1bb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..50d011c0
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..7d767237
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: view-secrets-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..01dbca0e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index 4f163d3a..a962287c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..83a28fe0
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-edit-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..9f5013c2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..3df642e4
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: install-operator-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index a33c4d89..7956116a 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - clusterrole-edit-alkazako-member.yaml
+- clusterrole-edit-dperaza4dustbit-member.yaml
 - clusterrole-edit-fmuntean-member.yaml
 - clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
@@ -13,6 +14,7 @@ resources:
 - clusterrole-view-bkundu-member.yaml
 - clusterrole-view-bsutter-member.yaml
 - clusterrole-view-dfodor-member.yaml
+- clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-ergonzal-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
@@ -23,11 +25,14 @@ resources:
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
 - install-operator-alkazako-member.yaml
+- install-operator-dperaza4dustbit-member.yaml
 - install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
+- restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
 - view-secrets-alkazako-member.yaml
+- view-secrets-dperaza4dustbit-member.yaml
 - view-secrets-fmuntean-member.yaml
 - view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..b2a212c3
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..3ea1c71b
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: view-secrets-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 7d54f6d3..63789e8d 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -9,6 +9,35 @@ clusters:
 
 serviceAccounts:
 ## service accounts to be used by humans via `sandbox-cli`
+- name: dperaza4dustbit
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+      - edit
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - view
+      - edit
+
 - name: alkazako
   host:
     roleBindings: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from fb1c71bb to ddb34f64 on Tue Mar 12 12:26:57 2024 </h3>  
 
<details> 
<summary>Git Diff (620 lines)</summary>  

``` 
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..15b0babb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dperaza4dustbit.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
index 4f163d3a..a962287c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..63b312b2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: approve-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..ec73894e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: ban-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..1682c6c1
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-edit-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..71eb013c
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..f80bddb1
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: deactivate-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..785918b5
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: gdpr-delete-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..495a5754
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: install-operator-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
index 619bb153..2f967577 100644
--- a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - approve-user-bkundu-host.yaml
 - approve-user-bsutter-host.yaml
 - approve-user-dfodor-host.yaml
+- approve-user-dperaza4dustbit-host.yaml
 - approve-user-ergonzal-host.yaml
 - approve-user-fmuntean-host.yaml
 - approve-user-gbenhaim-host.yaml
@@ -20,9 +21,11 @@ resources:
 - approve-user-rorai-host.yaml
 - approve-user-saviv-host.yaml
 - ban-user-alkazako-host.yaml
+- ban-user-dperaza4dustbit-host.yaml
 - ban-user-fmuntean-host.yaml
 - ban-user-mjobanek-host.yaml
 - clusterrole-edit-alkazako-host.yaml
+- clusterrole-edit-dperaza4dustbit-host.yaml
 - clusterrole-edit-fmuntean-host.yaml
 - clusterrole-edit-mjobanek-host.yaml
 - clusterrole-view-alkazako-host.yaml
@@ -30,6 +33,7 @@ resources:
 - clusterrole-view-bkundu-host.yaml
 - clusterrole-view-bsutter-host.yaml
 - clusterrole-view-dfodor-host.yaml
+- clusterrole-view-dperaza4dustbit-host.yaml
 - clusterrole-view-ergonzal-host.yaml
 - clusterrole-view-fmuntean-host.yaml
 - clusterrole-view-gbenhaim-host.yaml
@@ -43,6 +47,7 @@ resources:
 - deactivate-user-bcook-host.yaml
 - deactivate-user-bkundu-host.yaml
 - deactivate-user-bsutter-host.yaml
+- deactivate-user-dperaza4dustbit-host.yaml
 - deactivate-user-fmuntean-host.yaml
 - deactivate-user-mjobanek-host.yaml
 - deactivate-user-pdave-host.yaml
@@ -51,21 +56,25 @@ resources:
 - gdpr-delete-bcook-host.yaml
 - gdpr-delete-bkundu-host.yaml
 - gdpr-delete-bsutter-host.yaml
+- gdpr-delete-dperaza4dustbit-host.yaml
 - gdpr-delete-fmuntean-host.yaml
 - gdpr-delete-jhutar-host.yaml
 - gdpr-delete-mjobanek-host.yaml
 - gdpr-delete-pdave-host.yaml
 - gdpr-delete-rorai-host.yaml
 - install-operator-alkazako-host.yaml
+- install-operator-dperaza4dustbit-host.yaml
 - install-operator-mjobanek-host.yaml
 - promote-user-alkazako-host.yaml
 - promote-user-bcook-host.yaml
 - promote-user-bkundu-host.yaml
 - promote-user-bsutter-host.yaml
+- promote-user-dperaza4dustbit-host.yaml
 - promote-user-fmuntean-host.yaml
 - promote-user-mjobanek-host.yaml
 - promote-user-pdave-host.yaml
 - restart-deployment-alkazako-host.yaml
+- restart-deployment-dperaza4dustbit-host.yaml
 - restart-deployment-fmuntean-host.yaml
 - restart-deployment-mjobanek-host.yaml
 - retarget-user-alkazako-host.yaml
@@ -73,6 +82,7 @@ resources:
 - retarget-user-bkundu-host.yaml
 - retarget-user-bsutter-host.yaml
 - retarget-user-dfodor-host.yaml
+- retarget-user-dperaza4dustbit-host.yaml
 - retarget-user-ergonzal-host.yaml
 - retarget-user-fmuntean-host.yaml
 - retarget-user-gbenhaim-host.yaml
@@ -82,5 +92,6 @@ resources:
 - retarget-user-rorai-host.yaml
 - retarget-user-saviv-host.yaml
 - view-secrets-alkazako-host.yaml
+- view-secrets-dperaza4dustbit-host.yaml
 - view-secrets-fmuntean-host.yaml
 - view-secrets-mjobanek-host.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..69f794bb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: promote-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..07e1b1bb
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..50d011c0
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: retarget-user-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
new file mode 100644
index 00000000..7d767237
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-dperaza4dustbit-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: view-secrets-dperaza4dustbit-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
new file mode 100644
index 00000000..01dbca0e
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dperaza4dustbit.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    provider: sandbox-sre
+    username: dperaza4dustbit
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
index 4f163d3a..a962287c 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
 - bkundu.yaml
 - bsutter.yaml
 - dfodor.yaml
+- dperaza4dustbit.yaml
 - ergonzal.yaml
 - fmuntean.yaml
 - gbenhaim.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..83a28fe0
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-edit-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..9f5013c2
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: clusterrole-view-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..3df642e4
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: install-operator-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
index a33c4d89..7956116a 100644
--- a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - clusterrole-edit-alkazako-member.yaml
+- clusterrole-edit-dperaza4dustbit-member.yaml
 - clusterrole-edit-fmuntean-member.yaml
 - clusterrole-edit-mjobanek-member.yaml
 - clusterrole-view-alkazako-member.yaml
@@ -13,6 +14,7 @@ resources:
 - clusterrole-view-bkundu-member.yaml
 - clusterrole-view-bsutter-member.yaml
 - clusterrole-view-dfodor-member.yaml
+- clusterrole-view-dperaza4dustbit-member.yaml
 - clusterrole-view-ergonzal-member.yaml
 - clusterrole-view-fmuntean-member.yaml
 - clusterrole-view-gbenhaim-member.yaml
@@ -23,11 +25,14 @@ resources:
 - clusterrole-view-rorai-member.yaml
 - clusterrole-view-saviv-member.yaml
 - install-operator-alkazako-member.yaml
+- install-operator-dperaza4dustbit-member.yaml
 - install-operator-mjobanek-member.yaml
 - restart-deployment-alkazako-member.yaml
 - restart-deployment-bkundu-member.yaml
+- restart-deployment-dperaza4dustbit-member.yaml
 - restart-deployment-fmuntean-member.yaml
 - restart-deployment-mjobanek-member.yaml
 - view-secrets-alkazako-member.yaml
+- view-secrets-dperaza4dustbit-member.yaml
 - view-secrets-fmuntean-member.yaml
 - view-secrets-mjobanek-member.yaml
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..b2a212c3
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: restart-deployment-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
new file mode 100644
index 00000000..3ea1c71b
--- /dev/null
+++ b/components/sandbox/user-management/staging/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-dperaza4dustbit-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    provider: sandbox-sre
+  name: view-secrets-dperaza4dustbit-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: dperaza4dustbit
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/staging/sandbox-config.yaml b/components/sandbox/user-management/staging/sandbox-config.yaml
index 7d54f6d3..63789e8d 100644
--- a/components/sandbox/user-management/staging/sandbox-config.yaml
+++ b/components/sandbox/user-management/staging/sandbox-config.yaml
@@ -9,6 +9,35 @@ clusters:
 
 serviceAccounts:
 ## service accounts to be used by humans via `sandbox-cli`
+- name: dperaza4dustbit
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+      - edit
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - view
+      - edit
+
 - name: alkazako
   host:
     roleBindings: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from f4a04e41 to fb1c71bb on Tue Mar 12 10:01:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index a26cf9b8..aa46f356 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 55f5671   
+    newTag: 440184a
 
 configMapGenerator:
   - name: fed-modules 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from f4a04e41 to fb1c71bb on Tue Mar 12 10:01:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index a26cf9b8..aa46f356 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 55f5671   
+    newTag: 440184a
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f4a04e41/staging/components/ui/staging/kustomize.out.yaml
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:440184a
---
>       - image: quay.io/cloudservices/hac-dev-frontend:55f5671 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from f4a04e41 to fb1c71bb on Tue Mar 12 10:01:17 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index a26cf9b8..aa46f356 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 55f5671   
+    newTag: 440184a
 
 configMapGenerator:
   - name: fed-modules 
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
```
 
</details> 
<br> 


</div>
