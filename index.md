# kustomize changes tracked by commits 
### This file generated at Mon Apr 15 16:04:17 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 85945121 to 5b7d2164 on Mon Apr 15 13:38:57 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/all/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/everyone-can-view-patch.yaml
rename to components/authentication/base/all/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
index baa194e3..44bc73d8 100644
--- a/components/authentication/base/all/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,7 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -91,7 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -101,7 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
index a979ad78..c7380b60 100644
--- a/components/authentication/base/all/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -6,3 +6,23 @@ resources:
 - component-maintainer.yaml
 - everyone-can-view.yaml
 - konflux-admins.yaml
+
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
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
deleted file mode 100644
index 88414a0a..00000000
--- a/components/authentication/base/github/everyone-can-view-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: add
-  path: /subjects
-  value:
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'stage'
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 374420c0..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio-sre
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio-sre
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
index 391fe370..8e663f2b 100644
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - github-redhat-appstudio-sre.yaml
   - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 8fa2a692..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio-sre
-      credentialsSecret:
-        name: github-redhat-appstudio-sre
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
index 012ecfa8..81213fa4 100644
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - external-secrets
-- github-redhat-appstudio-sre.yaml
 - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/github/kustomization.yaml
+++ b/components/authentication/base/github/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
deleted file mode 100644
index 62e30f1f..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio-sre
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 6adbabef..91b9c215 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -11,9 +11,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: github-redhat-appstudio-sre-secret-patch.yaml
-    target:
-      name: github-redhat-appstudio-sre
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1 
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
<h3>1: Staging changes from 85945121 to 5b7d2164 on Mon Apr 15 13:38:57 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/all/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/everyone-can-view-patch.yaml
rename to components/authentication/base/all/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
index baa194e3..44bc73d8 100644
--- a/components/authentication/base/all/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,7 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -91,7 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -101,7 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
index a979ad78..c7380b60 100644
--- a/components/authentication/base/all/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -6,3 +6,23 @@ resources:
 - component-maintainer.yaml
 - everyone-can-view.yaml
 - konflux-admins.yaml
+
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
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
deleted file mode 100644
index 88414a0a..00000000
--- a/components/authentication/base/github/everyone-can-view-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: add
-  path: /subjects
-  value:
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'stage'
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 374420c0..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio-sre
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio-sre
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
index 391fe370..8e663f2b 100644
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - github-redhat-appstudio-sre.yaml
   - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 8fa2a692..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio-sre
-      credentialsSecret:
-        name: github-redhat-appstudio-sre
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
index 012ecfa8..81213fa4 100644
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - external-secrets
-- github-redhat-appstudio-sre.yaml
 - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/github/kustomization.yaml
+++ b/components/authentication/base/github/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
deleted file mode 100644
index 62e30f1f..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio-sre
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 6adbabef..91b9c215 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -11,9 +11,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: github-redhat-appstudio-sre-secret-patch.yaml
-    target:
-      name: github-redhat-appstudio-sre
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1 
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
<h3>1: Development changes from 85945121 to 5b7d2164 on Mon Apr 15 13:38:57 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/all/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/everyone-can-view-patch.yaml
rename to components/authentication/base/all/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
index baa194e3..44bc73d8 100644
--- a/components/authentication/base/all/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,7 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -91,7 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -101,7 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
index a979ad78..c7380b60 100644
--- a/components/authentication/base/all/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -6,3 +6,23 @@ resources:
 - component-maintainer.yaml
 - everyone-can-view.yaml
 - konflux-admins.yaml
+
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
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
deleted file mode 100644
index 88414a0a..00000000
--- a/components/authentication/base/github/everyone-can-view-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: add
-  path: /subjects
-  value:
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'stage'
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 374420c0..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio-sre
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio-sre
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
index 391fe370..8e663f2b 100644
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - github-redhat-appstudio-sre.yaml
   - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 8fa2a692..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio-sre
-      credentialsSecret:
-        name: github-redhat-appstudio-sre
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
index 012ecfa8..81213fa4 100644
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - external-secrets
-- github-redhat-appstudio-sre.yaml
 - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/github/kustomization.yaml
+++ b/components/authentication/base/github/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
deleted file mode 100644
index 62e30f1f..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio-sre
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 6adbabef..91b9c215 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -11,9 +11,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: github-redhat-appstudio-sre-secret-patch.yaml
-    target:
-      name: github-redhat-appstudio-sre
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 0c606a5b to 85945121 on Thu Apr 11 04:34:09 2024 </h3>  
 
<details> 
<summary>Git Diff (92 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 49236b0e..8741c2b4 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 03699519..926e4cdf 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 2cbeba88..816e670e 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index ed125c4d..5fa62d28 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager 
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
<h3>2: Staging changes from 0c606a5b to 85945121 on Thu Apr 11 04:34:09 2024 </h3>  
 
<details> 
<summary>Git Diff (92 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 49236b0e..8741c2b4 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 03699519..926e4cdf 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 2cbeba88..816e670e 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index ed125c4d..5fa62d28 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-0c606a5b/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
---
>       key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
./commit-0c606a5b/staging/components/backup/staging/stone-stg-host/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
---
>       key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
./commit-0c606a5b/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
---
>       key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
./commit-0c606a5b/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
---
>       key: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01 
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
<h3>2: Development changes from 0c606a5b to 85945121 on Thu Apr 11 04:34:09 2024 </h3>  
 
<details> 
<summary>Git Diff (92 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 49236b0e..8741c2b4 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 03699519..926e4cdf 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 2cbeba88..816e670e 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index ed125c4d..5fa62d28 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 14321b34..548e1267 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 5ca52e35 to 0c606a5b on Mon Apr 8 19:29:50 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 32efd1c2..97fe2cb0 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun|schedule"
+          pipeline|pipelinename|pipelinerun|schedule|check"
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 5ca52e35 to 0c606a5b on Mon Apr 8 19:29:50 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 32efd1c2..97fe2cb0 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun|schedule"
+          pipeline|pipelinename|pipelinerun|schedule|check"
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 5ca52e35 to 0c606a5b on Mon Apr 8 19:29:50 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 32efd1c2..97fe2cb0 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun|schedule"
+          pipeline|pipelinename|pipelinerun|schedule|check"
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 2f8c888c to 5ca52e35 on Mon Apr 8 16:00:52 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index afc8ae34..6be70876 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=52405e0e807900e62d8a1911a3ab7da6a9746bf2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+  newTag: 52405e0e807900e62d8a1911a3ab7da6a9746bf2 
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
<h3>4: Staging changes from 2f8c888c to 5ca52e35 on Mon Apr 8 16:00:52 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index afc8ae34..6be70876 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=52405e0e807900e62d8a1911a3ab7da6a9746bf2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+  newTag: 52405e0e807900e62d8a1911a3ab7da6a9746bf2 
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
<h3>4: Development changes from 2f8c888c to 5ca52e35 on Mon Apr 8 16:00:52 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index afc8ae34..6be70876 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=52405e0e807900e62d8a1911a3ab7da6a9746bf2
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+  newTag: 52405e0e807900e62d8a1911a3ab7da6a9746bf2 
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
```
 
</details> 
<br> 


</div>
