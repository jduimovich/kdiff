# kustomize changes tracked by commits 
### This file generated at Tue Jan 30 08:04:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b1041d81 to ad9e458e on Tue Jan 30 07:24:57 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/components/authentication/base/admin-checker/admin-checker-sa.yaml b/components/authentication/base/all/admin-checker/admin-checker-sa.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/admin-checker-sa.yaml
rename to components/authentication/base/all/admin-checker/admin-checker-sa.yaml
diff --git a/components/authentication/base/admin-checker/cronjob.yaml b/components/authentication/base/all/admin-checker/cronjob.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/cronjob.yaml
rename to components/authentication/base/all/admin-checker/cronjob.yaml
diff --git a/components/authentication/base/admin-checker/external-secrets/kustomization.yaml b/components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/external-secrets/kustomization.yaml
rename to components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml b/components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
rename to components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
diff --git a/components/authentication/base/admin-checker/kustomization.yaml b/components/authentication/base/all/admin-checker/kustomization.yaml
similarity index 88%
rename from components/authentication/base/admin-checker/kustomization.yaml
rename to components/authentication/base/all/admin-checker/kustomization.yaml
index d499a597..521a4380 100644
--- a/components/authentication/base/admin-checker/kustomization.yaml
+++ b/components/authentication/base/all/admin-checker/kustomization.yaml
@@ -5,4 +5,4 @@ resources:
   - admin-checker-sa.yaml
   - cronjob.yaml
   - namespace.yaml
-  - external-secrets/
+  - external-secrets
diff --git a/components/authentication/base/admin-checker/namespace.yaml b/components/authentication/base/all/admin-checker/namespace.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/namespace.yaml
rename to components/authentication/base/all/admin-checker/namespace.yaml
diff --git a/components/authentication/base/component-maintainer.yaml b/components/authentication/base/all/component-maintainer.yaml
similarity index 100%
rename from components/authentication/base/component-maintainer.yaml
rename to components/authentication/base/all/component-maintainer.yaml
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
similarity index 89%
rename from components/authentication/base/everyone-can-view.yaml
rename to components/authentication/base/all/everyone-can-view.yaml
index eea712c1..baa194e3 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,10 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -94,10 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -107,10 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/all/group-sync/group-sync.yaml
similarity index 100%
rename from components/authentication/base/group-sync/group-sync.yaml
rename to components/authentication/base/all/group-sync/group-sync.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/all/group-sync/kustomization.yaml
new file mode 100644
index 00000000..c7c56631
--- /dev/null
+++ b/components/authentication/base/all/group-sync/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- group-sync.yaml
+- namespaces.yaml
+- subscription.yaml
diff --git a/components/authentication/base/group-sync/namespaces.yaml b/components/authentication/base/all/group-sync/namespaces.yaml
similarity index 100%
rename from components/authentication/base/group-sync/namespaces.yaml
rename to components/authentication/base/all/group-sync/namespaces.yaml
diff --git a/components/authentication/base/group-sync/subscription.yaml b/components/authentication/base/all/group-sync/subscription.yaml
similarity index 100%
rename from components/authentication/base/group-sync/subscription.yaml
rename to components/authentication/base/all/group-sync/subscription.yaml
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/all/konflux-admins.yaml
similarity index 100%
rename from components/authentication/base/konflux-admins.yaml
rename to components/authentication/base/all/konflux-admins.yaml
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
similarity index 82%
rename from components/authentication/base/kustomization.yaml
rename to components/authentication/base/all/kustomization.yaml
index 3b208818..a979ad78 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -1,9 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
 resources:
-- everyone-can-view.yaml
+- admin-checker
+- group-sync
 - component-maintainer.yaml
-- group-sync/
+- everyone-can-view.yaml
 - konflux-admins.yaml
-- admin-checker/
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..88414a0a
--- /dev/null
+++ b/components/authentication/base/github/everyone-can-view-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'stage'
diff --git a/components/authentication/base/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
rename to components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
diff --git a/components/authentication/base/group-sync/external-secrets/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/github-redhat-appstudio.yaml
rename to components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
diff --git a/components/authentication/base/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
similarity index 100%
rename from components/authentication/base/group-sync/github-redhat-appstudio-sre.yaml
rename to components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
diff --git a/components/authentication/base/group-sync/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
similarity index 100%
rename from components/authentication/base/group-sync/github-redhat-appstudio.yaml
rename to components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
diff --git a/components/authentication/base/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
similarity index 77%
rename from components/authentication/base/group-sync/kustomization.yaml
rename to components/authentication/base/github/group-sync/kustomization.yaml
index 79ea67db..012ecfa8 100644
--- a/components/authentication/base/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -1,11 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: group-sync-operator
 resources:
-- github-redhat-appstudio.yaml
-- github-redhat-appstudio-sre.yaml
-- group-sync.yaml
-- namespaces.yaml
-- subscription.yaml
 - external-secrets
-
-namespace: group-sync-operator
+- github-redhat-appstudio-sre.yaml
+- github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/github/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/kustomization.yaml
index f5efc6b2..c317312e 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 27bb5cb0..ef81af8d 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../base/github 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from b1041d81 to ad9e458e on Tue Jan 30 07:24:57 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/components/authentication/base/admin-checker/admin-checker-sa.yaml b/components/authentication/base/all/admin-checker/admin-checker-sa.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/admin-checker-sa.yaml
rename to components/authentication/base/all/admin-checker/admin-checker-sa.yaml
diff --git a/components/authentication/base/admin-checker/cronjob.yaml b/components/authentication/base/all/admin-checker/cronjob.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/cronjob.yaml
rename to components/authentication/base/all/admin-checker/cronjob.yaml
diff --git a/components/authentication/base/admin-checker/external-secrets/kustomization.yaml b/components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/external-secrets/kustomization.yaml
rename to components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml b/components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
rename to components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
diff --git a/components/authentication/base/admin-checker/kustomization.yaml b/components/authentication/base/all/admin-checker/kustomization.yaml
similarity index 88%
rename from components/authentication/base/admin-checker/kustomization.yaml
rename to components/authentication/base/all/admin-checker/kustomization.yaml
index d499a597..521a4380 100644
--- a/components/authentication/base/admin-checker/kustomization.yaml
+++ b/components/authentication/base/all/admin-checker/kustomization.yaml
@@ -5,4 +5,4 @@ resources:
   - admin-checker-sa.yaml
   - cronjob.yaml
   - namespace.yaml
-  - external-secrets/
+  - external-secrets
diff --git a/components/authentication/base/admin-checker/namespace.yaml b/components/authentication/base/all/admin-checker/namespace.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/namespace.yaml
rename to components/authentication/base/all/admin-checker/namespace.yaml
diff --git a/components/authentication/base/component-maintainer.yaml b/components/authentication/base/all/component-maintainer.yaml
similarity index 100%
rename from components/authentication/base/component-maintainer.yaml
rename to components/authentication/base/all/component-maintainer.yaml
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
similarity index 89%
rename from components/authentication/base/everyone-can-view.yaml
rename to components/authentication/base/all/everyone-can-view.yaml
index eea712c1..baa194e3 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,10 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -94,10 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -107,10 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/all/group-sync/group-sync.yaml
similarity index 100%
rename from components/authentication/base/group-sync/group-sync.yaml
rename to components/authentication/base/all/group-sync/group-sync.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/all/group-sync/kustomization.yaml
new file mode 100644
index 00000000..c7c56631
--- /dev/null
+++ b/components/authentication/base/all/group-sync/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- group-sync.yaml
+- namespaces.yaml
+- subscription.yaml
diff --git a/components/authentication/base/group-sync/namespaces.yaml b/components/authentication/base/all/group-sync/namespaces.yaml
similarity index 100%
rename from components/authentication/base/group-sync/namespaces.yaml
rename to components/authentication/base/all/group-sync/namespaces.yaml
diff --git a/components/authentication/base/group-sync/subscription.yaml b/components/authentication/base/all/group-sync/subscription.yaml
similarity index 100%
rename from components/authentication/base/group-sync/subscription.yaml
rename to components/authentication/base/all/group-sync/subscription.yaml
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/all/konflux-admins.yaml
similarity index 100%
rename from components/authentication/base/konflux-admins.yaml
rename to components/authentication/base/all/konflux-admins.yaml
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
similarity index 82%
rename from components/authentication/base/kustomization.yaml
rename to components/authentication/base/all/kustomization.yaml
index 3b208818..a979ad78 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -1,9 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
 resources:
-- everyone-can-view.yaml
+- admin-checker
+- group-sync
 - component-maintainer.yaml
-- group-sync/
+- everyone-can-view.yaml
 - konflux-admins.yaml
-- admin-checker/
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..88414a0a
--- /dev/null
+++ b/components/authentication/base/github/everyone-can-view-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'stage'
diff --git a/components/authentication/base/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
rename to components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
diff --git a/components/authentication/base/group-sync/external-secrets/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/github-redhat-appstudio.yaml
rename to components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
diff --git a/components/authentication/base/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
similarity index 100%
rename from components/authentication/base/group-sync/github-redhat-appstudio-sre.yaml
rename to components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
diff --git a/components/authentication/base/group-sync/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
similarity index 100%
rename from components/authentication/base/group-sync/github-redhat-appstudio.yaml
rename to components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
diff --git a/components/authentication/base/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
similarity index 77%
rename from components/authentication/base/group-sync/kustomization.yaml
rename to components/authentication/base/github/group-sync/kustomization.yaml
index 79ea67db..012ecfa8 100644
--- a/components/authentication/base/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -1,11 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: group-sync-operator
 resources:
-- github-redhat-appstudio.yaml
-- github-redhat-appstudio-sre.yaml
-- group-sync.yaml
-- namespaces.yaml
-- subscription.yaml
 - external-secrets
-
-namespace: group-sync-operator
+- github-redhat-appstudio-sre.yaml
+- github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/github/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/kustomization.yaml
index f5efc6b2..c317312e 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 27bb5cb0..ef81af8d 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../base/github 
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
<h3>1: Development changes from b1041d81 to ad9e458e on Tue Jan 30 07:24:57 2024 </h3>  
 
<details> 
<summary>Git Diff (239 lines)</summary>  

``` 
diff --git a/components/authentication/base/admin-checker/admin-checker-sa.yaml b/components/authentication/base/all/admin-checker/admin-checker-sa.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/admin-checker-sa.yaml
rename to components/authentication/base/all/admin-checker/admin-checker-sa.yaml
diff --git a/components/authentication/base/admin-checker/cronjob.yaml b/components/authentication/base/all/admin-checker/cronjob.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/cronjob.yaml
rename to components/authentication/base/all/admin-checker/cronjob.yaml
diff --git a/components/authentication/base/admin-checker/external-secrets/kustomization.yaml b/components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/external-secrets/kustomization.yaml
rename to components/authentication/base/all/admin-checker/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml b/components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/external-secrets/rhtap-infra-secrets.yaml
rename to components/authentication/base/all/admin-checker/external-secrets/rhtap-infra-secrets.yaml
diff --git a/components/authentication/base/admin-checker/kustomization.yaml b/components/authentication/base/all/admin-checker/kustomization.yaml
similarity index 88%
rename from components/authentication/base/admin-checker/kustomization.yaml
rename to components/authentication/base/all/admin-checker/kustomization.yaml
index d499a597..521a4380 100644
--- a/components/authentication/base/admin-checker/kustomization.yaml
+++ b/components/authentication/base/all/admin-checker/kustomization.yaml
@@ -5,4 +5,4 @@ resources:
   - admin-checker-sa.yaml
   - cronjob.yaml
   - namespace.yaml
-  - external-secrets/
+  - external-secrets
diff --git a/components/authentication/base/admin-checker/namespace.yaml b/components/authentication/base/all/admin-checker/namespace.yaml
similarity index 100%
rename from components/authentication/base/admin-checker/namespace.yaml
rename to components/authentication/base/all/admin-checker/namespace.yaml
diff --git a/components/authentication/base/component-maintainer.yaml b/components/authentication/base/all/component-maintainer.yaml
similarity index 100%
rename from components/authentication/base/component-maintainer.yaml
rename to components/authentication/base/all/component-maintainer.yaml
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
similarity index 89%
rename from components/authentication/base/everyone-can-view.yaml
rename to components/authentication/base/all/everyone-can-view.yaml
index eea712c1..baa194e3 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,10 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -94,10 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -107,10 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects:
-- kind: Group
-  apiGroup: rbac.authorization.k8s.io
-  name: 'stage'
+subjects: [] # added by auth specific overlay, e.g. github
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/all/group-sync/group-sync.yaml
similarity index 100%
rename from components/authentication/base/group-sync/group-sync.yaml
rename to components/authentication/base/all/group-sync/group-sync.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/all/group-sync/kustomization.yaml
new file mode 100644
index 00000000..c7c56631
--- /dev/null
+++ b/components/authentication/base/all/group-sync/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- group-sync.yaml
+- namespaces.yaml
+- subscription.yaml
diff --git a/components/authentication/base/group-sync/namespaces.yaml b/components/authentication/base/all/group-sync/namespaces.yaml
similarity index 100%
rename from components/authentication/base/group-sync/namespaces.yaml
rename to components/authentication/base/all/group-sync/namespaces.yaml
diff --git a/components/authentication/base/group-sync/subscription.yaml b/components/authentication/base/all/group-sync/subscription.yaml
similarity index 100%
rename from components/authentication/base/group-sync/subscription.yaml
rename to components/authentication/base/all/group-sync/subscription.yaml
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/all/konflux-admins.yaml
similarity index 100%
rename from components/authentication/base/konflux-admins.yaml
rename to components/authentication/base/all/konflux-admins.yaml
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
similarity index 82%
rename from components/authentication/base/kustomization.yaml
rename to components/authentication/base/all/kustomization.yaml
index 3b208818..a979ad78 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -1,9 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
 resources:
-- everyone-can-view.yaml
+- admin-checker
+- group-sync
 - component-maintainer.yaml
-- group-sync/
+- everyone-can-view.yaml
 - konflux-admins.yaml
-- admin-checker/
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..88414a0a
--- /dev/null
+++ b/components/authentication/base/github/everyone-can-view-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'stage'
diff --git a/components/authentication/base/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
rename to components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
diff --git a/components/authentication/base/group-sync/external-secrets/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/github-redhat-appstudio.yaml
rename to components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio.yaml
diff --git a/components/authentication/base/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
similarity index 100%
rename from components/authentication/base/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
diff --git a/components/authentication/base/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
similarity index 100%
rename from components/authentication/base/group-sync/github-redhat-appstudio-sre.yaml
rename to components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
diff --git a/components/authentication/base/group-sync/github-redhat-appstudio.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
similarity index 100%
rename from components/authentication/base/group-sync/github-redhat-appstudio.yaml
rename to components/authentication/base/github/group-sync/github-redhat-appstudio.yaml
diff --git a/components/authentication/base/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
similarity index 77%
rename from components/authentication/base/group-sync/kustomization.yaml
rename to components/authentication/base/github/group-sync/kustomization.yaml
index 79ea67db..012ecfa8 100644
--- a/components/authentication/base/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -1,11 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+namespace: group-sync-operator
 resources:
-- github-redhat-appstudio.yaml
-- github-redhat-appstudio-sre.yaml
-- group-sync.yaml
-- namespaces.yaml
-- subscription.yaml
 - external-secrets
-
-namespace: group-sync-operator
+- github-redhat-appstudio-sre.yaml
+- github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/github/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/kustomization.yaml
index f5efc6b2..c317312e 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 27bb5cb0..ef81af8d 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base
+  - ../base/github 
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
<h3>2: Production changes from b5c4e40e to b1041d81 on Tue Jan 30 05:43:00 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index b9ccca7c..d37f2bf5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index bc9ef4d8..0963ce99 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from b5c4e40e to b1041d81 on Tue Jan 30 05:43:00 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index b9ccca7c..d37f2bf5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index bc9ef4d8..0963ce99 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-b5c4e40e/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
364,371d363
<   - appstudio.redhat.com
<   resources:
<   - releaseplanadmissions
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
754c746
<         image: quay.io/redhat-appstudio/build-service:f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
---
>         image: quay.io/redhat-appstudio/build-service:118aeb4f8c1c9b187140d8dc17a8beeb4eab2581 
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
<h3>2: Development changes from b5c4e40e to b1041d81 on Tue Jan 30 05:43:00 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index b9ccca7c..d37f2bf5 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index bc9ef4d8..0963ce99 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
+  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-b5c4e40e/development/components/build-service/development/kustomize.out.yaml
364,371d363
<   - appstudio.redhat.com
<   resources:
<   - releaseplanadmissions
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
761c753
<         image: quay.io/redhat-appstudio/build-service:f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
---
>         image: quay.io/redhat-appstudio/build-service:118aeb4f8c1c9b187140d8dc17a8beeb4eab2581 
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
<h3>3: Production changes from ce11791b to b5c4e40e on Mon Jan 29 22:14:10 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
index 96454936..4663435f 100644
--- a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
+++ b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/image-controller/base/external-secrets/quaytoken.yaml b/components/image-controller/base/external-secrets/quaytoken.yaml
index 8090bee0..23b84142 100644
--- a/components/image-controller/base/external-secrets/quaytoken.yaml
+++ b/components/image-controller/base/external-secrets/quaytoken.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/build/image-controller
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ce11791b/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
892c892
<   refreshInterval: 5m
---
>   refreshInterval: 15m
./commit-ce11791b/production/components/image-controller/production/kustomize.out.yaml
773c773
<   refreshInterval: 5m
---
>   refreshInterval: 15m 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ce11791b to b5c4e40e on Mon Jan 29 22:14:10 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
index 96454936..4663435f 100644
--- a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
+++ b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/image-controller/base/external-secrets/quaytoken.yaml b/components/image-controller/base/external-secrets/quaytoken.yaml
index 8090bee0..23b84142 100644
--- a/components/image-controller/base/external-secrets/quaytoken.yaml
+++ b/components/image-controller/base/external-secrets/quaytoken.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/build/image-controller
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ce11791b/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
892c892
<   refreshInterval: 5m
---
>   refreshInterval: 15m
./commit-ce11791b/staging/components/image-controller/staging/kustomize.out.yaml
801c801
<   refreshInterval: 5m
---
>   refreshInterval: 15m 
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
<h3>3: Development changes from ce11791b to b5c4e40e on Mon Jan 29 22:14:10 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
index 96454936..4663435f 100644
--- a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
+++ b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/image-controller/base/external-secrets/quaytoken.yaml b/components/image-controller/base/external-secrets/quaytoken.yaml
index 8090bee0..23b84142 100644
--- a/components/image-controller/base/external-secrets/quaytoken.yaml
+++ b/components/image-controller/base/external-secrets/quaytoken.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/build/image-controller
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
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
<h3>4: Production changes from d81f90a4 to ce11791b on Mon Jan 29 20:29:44 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 8f9cd171..f918fb73 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun"
+          pipeline|pipelinename|pipelinerun|schedule"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from d81f90a4 to ce11791b on Mon Jan 29 20:29:44 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 8f9cd171..f918fb73 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun"
+          pipeline|pipelinename|pipelinerun|schedule"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1 
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
<h3>4: Development changes from d81f90a4 to ce11791b on Mon Jan 29 20:29:44 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 8f9cd171..f918fb73 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun"
+          pipeline|pipelinename|pipelinerun|schedule"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1 
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
