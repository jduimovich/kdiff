# kustomize changes tracked by commits 
### This file generated at Tue Jul 16 12:04:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8a64b936 to ddc71252 on Tue Jul 16 12:00:58 2024 </h3>  
 
<details> 
<summary>Git Diff (432 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
index d1a8e1b5..143511a7 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-admin
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
index 1c598813..508a3067 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
index f74f6c43..cb3258b1 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-contributor
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
index f11fed14..7902bec6 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
index f2cc0507..d1c40004 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-maintainer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
index 29081764..ea578856 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-viewer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
index 301a8d5d..9530645f 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
index dd2e72c5..f757fe94 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
index 38f77053..c4c56172 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
index b8bc41a9..bb5d3e13 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
index 9390957f..4b9efbc1 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
index 353d94e8..0e3ebcff 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
index 98ba5595..6de49f4f 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
index 5d180a9a..d69d0090 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
index 184cd3ed..7ab5ab89 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
index 45be6e56..095b72e1 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
index 2ac21095..6f23b134 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
index 8203734e..9fca2056 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
index d1a8e1b5..143511a7 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-admin
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
index 1c598813..508a3067 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
index f74f6c43..cb3258b1 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-contributor
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
index f11fed14..7902bec6 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
index f2cc0507..d1c40004 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-maintainer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
index 29081764..ea578856 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-viewer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
index 301a8d5d..9530645f 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
index dd2e72c5..f757fe94 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
index 38f77053..c4c56172 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
index b8bc41a9..bb5d3e13 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
index 9390957f..4b9efbc1 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
index 353d94e8..0e3ebcff 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
index 98ba5595..6de49f4f 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
index 5d180a9a..d69d0090 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
index 184cd3ed..7ab5ab89 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
index 45be6e56..095b72e1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
index 2ac21095..6f23b134 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
index 8203734e..9fca2056 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 8a64b936 to ddc71252 on Tue Jul 16 12:00:58 2024 </h3>  
 
<details> 
<summary>Git Diff (432 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
index d1a8e1b5..143511a7 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-admin
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
index 1c598813..508a3067 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
index f74f6c43..cb3258b1 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-contributor
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
index f11fed14..7902bec6 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
index f2cc0507..d1c40004 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-maintainer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
index 29081764..ea578856 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-viewer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
index 301a8d5d..9530645f 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
index dd2e72c5..f757fe94 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
index 38f77053..c4c56172 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
index b8bc41a9..bb5d3e13 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
index 9390957f..4b9efbc1 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
index 353d94e8..0e3ebcff 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
index 98ba5595..6de49f4f 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
index 5d180a9a..d69d0090 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
index 184cd3ed..7ab5ab89 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
index 45be6e56..095b72e1 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
index 2ac21095..6f23b134 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
index 8203734e..9fca2056 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
index d1a8e1b5..143511a7 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-admin
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
index 1c598813..508a3067 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
index f74f6c43..cb3258b1 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-contributor
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
index f11fed14..7902bec6 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
index f2cc0507..d1c40004 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-maintainer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
index 29081764..ea578856 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-viewer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
index 301a8d5d..9530645f 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
index dd2e72c5..f757fe94 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
index 38f77053..c4c56172 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
index b8bc41a9..bb5d3e13 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
index 9390957f..4b9efbc1 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
index 353d94e8..0e3ebcff 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
index 98ba5595..6de49f4f 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
index 5d180a9a..d69d0090 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
index 184cd3ed..7ab5ab89 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
index 45be6e56..095b72e1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
index 2ac21095..6f23b134 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
index 8203734e..9fca2056 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 8a64b936 to ddc71252 on Tue Jul 16 12:00:58 2024 </h3>  
 
<details> 
<summary>Git Diff (432 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
index d1a8e1b5..143511a7 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-admin
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
index 1c598813..508a3067 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
index f74f6c43..cb3258b1 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-contributor
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
index f11fed14..7902bec6 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
index f2cc0507..d1c40004 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-maintainer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
index 29081764..ea578856 100644
--- a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-viewer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
index 301a8d5d..9530645f 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
index dd2e72c5..f757fe94 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
index 38f77053..c4c56172 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
index b8bc41a9..bb5d3e13 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
index 9390957f..4b9efbc1 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
index 353d94e8..0e3ebcff 100644
--- a/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
index 98ba5595..6de49f4f 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
index 5d180a9a..d69d0090 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
index 184cd3ed..7ab5ab89 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
index 45be6e56..095b72e1 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
index 2ac21095..6f23b134 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
index 8203734e..9fca2056 100644
--- a/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/production/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
index d1a8e1b5..143511a7 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-admin-4171108837-4171108837.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-admin
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
index 1c598813..508a3067 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-2916842387-2916842387.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
index f74f6c43..cb3258b1 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-contributor-297495683-297495683.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-contributor
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
index f11fed14..7902bec6 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-env-1575256421-1575256421.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
index f2cc0507..d1c40004 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-maintainer-1039478644-1039478644.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-maintainer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
index 29081764..ea578856 100644
--- a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-viewer-617892940-617892940.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-env-spacerole-viewer
     objects: []
   tierName: appstudio-env
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
index 301a8d5d..9530645f 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-221167138-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
index dd2e72c5..f757fe94 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-750679343-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
index 38f77053..c4c56172 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-contributor-3696782055-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
index b8bc41a9..bb5d3e13 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-maintainer-98574726-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
index 9390957f..4b9efbc1 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-1252037388-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
index 353d94e8..0e3ebcff 100644
--- a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-viewer-210715919-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
index 98ba5595..6de49f4f 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-221167138.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-admin
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
index 5d180a9a..d69d0090 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1884308846-750679343.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-cluster-resources
     objects:
     - apiVersion: quota.openshift.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
index 184cd3ed..7ab5ab89 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1884308846-3696782055.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-contributor
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
index 45be6e56..095b72e1 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1884308846-98574726.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-maintainer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
index 2ac21095..6f23b134 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1884308846-1252037388.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-tenant
     objects:
     - apiVersion: v1
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
index 8203734e..9fca2056 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1884308846-210715919.yaml
@@ -13,7 +13,6 @@ spec:
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
-      creationTimestamp: null
       name: appstudio-spacerole-viewer
     objects:
     - apiVersion: rbac.authorization.k8s.io/v1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 727b68db to 8a64b936 on Tue Jul 16 07:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 518f9ea7..7a4ac673 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -17,7 +17,7 @@ data:
       "requireConfig": "optional",
       "platformCommit": true,
       "autodiscover": false,
-      "enabledManagers": ["tekton", "dockerfile", "rpm"],
+      "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
       "tekton": {
         "fileMatch": ["\\.yaml$","\\.yml$"],
         "includePaths": [".tekton/**"],
@@ -45,6 +45,9 @@ data:
           }
         ]
       },
+      "git-submodules": {
+        "enabled": true,
+      },
       "lockFileMaintenance": {
         "enabled": true,
         "recreateWhen": "always", 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-727b68db/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
416c416
<       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm"],
443,445d442
<       },
<       "git-submodules": {
<         "enabled": true,
./commit-727b68db/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
416c416
<       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm"],
443,445d442
<       },
<       "git-submodules": {
<         "enabled": true, 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 727b68db to 8a64b936 on Tue Jul 16 07:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 518f9ea7..7a4ac673 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -17,7 +17,7 @@ data:
       "requireConfig": "optional",
       "platformCommit": true,
       "autodiscover": false,
-      "enabledManagers": ["tekton", "dockerfile", "rpm"],
+      "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
       "tekton": {
         "fileMatch": ["\\.yaml$","\\.yml$"],
         "includePaths": [".tekton/**"],
@@ -45,6 +45,9 @@ data:
           }
         ]
       },
+      "git-submodules": {
+        "enabled": true,
+      },
       "lockFileMaintenance": {
         "enabled": true,
         "recreateWhen": "always", 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-727b68db/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
416c416
<       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm"],
443,445d442
<       },
<       "git-submodules": {
<         "enabled": true, 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 727b68db to 8a64b936 on Tue Jul 16 07:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index 518f9ea7..7a4ac673 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -17,7 +17,7 @@ data:
       "requireConfig": "optional",
       "platformCommit": true,
       "autodiscover": false,
-      "enabledManagers": ["tekton", "dockerfile", "rpm"],
+      "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
       "tekton": {
         "fileMatch": ["\\.yaml$","\\.yml$"],
         "includePaths": [".tekton/**"],
@@ -45,6 +45,9 @@ data:
           }
         ]
       },
+      "git-submodules": {
+        "enabled": true,
+      },
       "lockFileMaintenance": {
         "enabled": true,
         "recreateWhen": "always", 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-727b68db/development/components/mintmaker/development/kustomize.out.yaml
416c416
<       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm"],
443,445d442
<       },
<       "git-submodules": {
<         "enabled": true, 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 72211138 to 727b68db on Tue Jul 16 03:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f6a57560..aa1f3d94 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-72211138/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
./commit-72211138/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 72211138 to 727b68db on Tue Jul 16 03:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f6a57560..aa1f3d94 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-72211138/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 72211138 to 727b68db on Tue Jul 16 03:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f6a57560..aa1f3d94 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,6 +8,6 @@ data:
     default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-72211138/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:db86c5b9b58279c9263d46e44e12980d0bf16323
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:6e5906cda5d03e40d61d4dfce4cb8d79c7b9435d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 70d3ecbd to 72211138 on Tue Jul 16 01:41:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 961c0d80..ad85dabd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e8cb595c..e00e5ee3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -41,7 +41,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 70d3ecbd to 72211138 on Tue Jul 16 01:41:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 961c0d80..ad85dabd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e8cb595c..e00e5ee3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -41,7 +41,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 70d3ecbd to 72211138 on Tue Jul 16 01:41:36 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 961c0d80..ad85dabd 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -42,7 +42,7 @@ spec:
         ssoRealm: redhat-external
       environment: prod
       replicas: 10
-      registrationServiceURL: https://console.redhat.com/preview/hac/application-pipeline
+      registrationServiceURL: https://console.redhat.com/preview/application-pipeline
       verification:
         enabled: false # skip phone verification for now
         excludedEmailDomains: 'redhat.com'
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
index e8cb595c..e00e5ee3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
@@ -41,7 +41,7 @@ spec:
           ssoRealm: redhat-external
         environment: prod
         replicas: 10
-        registrationServiceURL: https://console.dev.redhat.com/preview/hac/application-pipeline
+        registrationServiceURL: https://console.dev.redhat.com/preview/application-pipeline
         verification:
           enabled: true
           excludedEmailDomains: 'redhat.com' 
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
```
 
</details> 
<br> 


</div>
