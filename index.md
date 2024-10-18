# kustomize changes tracked by commits 
### This file generated at Fri Oct 18 16:10:38 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9676b39c to a54fe108 on Fri Oct 18 15:20:16 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 60d635d6..738c1e09 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -404,7 +404,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "100"
+  dynamic.linux-ppc64le.max-instances: "200"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd: 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 9676b39c to a54fe108 on Fri Oct 18 15:20:16 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 60d635d6..738c1e09 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -404,7 +404,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "100"
+  dynamic.linux-ppc64le.max-instances: "200"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 9676b39c to a54fe108 on Fri Oct 18 15:20:16 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 60d635d6..738c1e09 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -404,7 +404,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "100"
+  dynamic.linux-ppc64le.max-instances: "200"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd: 
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
<h3>2: Production changes from 14ca6b37 to 9676b39c on Fri Oct 18 15:14:23 2024 </h3>  
 
<details> 
<summary>Git Diff (2608 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index 16b38934..b0545b1d 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -6,17 +6,23 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-409719430-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-409719430-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-409719430-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-409719430-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
+- tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-409719430-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-409719430-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 9f6cff17..adc0e17a 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudioxlarge-clusterresources-409719430-593233715
+    templateRef: appstudioxlarge-clusterresources-1655178728-593233715
   namespaces:
-  - templateRef: appstudioxlarge-tenant-409719430-4121561789
+  - templateRef: appstudioxlarge-tenant-1655178728-4121561789
   spaceRoles:
     admin:
-      templateRef: appstudioxlarge-admin-409719430-849337768
+      templateRef: appstudioxlarge-admin-1655178728-849337768
     contributor:
-      templateRef: appstudioxlarge-contributor-409719430-829105171
+      templateRef: appstudioxlarge-contributor-1655178728-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-409719430-474752551
+      templateRef: appstudioxlarge-maintainer-1655178728-474752551
     viewer:
-      templateRef: appstudioxlarge-viewer-409719430-4256863455
+      templateRef: appstudioxlarge-viewer-1655178728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
new file mode 100644
index 00000000..271e4653
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-1655178728-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
new file mode 100644
index 00000000..52538276
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-1655178728-593233715
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-593233715
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "3000"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
new file mode 100644
index 00000000..6e1372ee
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-1655178728-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
new file mode 100644
index 00000000..ab33bc1a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-1655178728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
new file mode 100644
index 00000000..24fc581a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-1655178728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: 4k
+    - name: CPU_BUILD_REQUEST
+      value: 2k
+    - name: MEMORY_BUILD_LIMIT
+      value: 8Ti
+    - name: MEMORY_BUILD_REQUEST
+      value: 4Ti
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
new file mode 100644
index 00000000..5948413a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-1655178728-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
index b9f4fb9a..041e38f6 100644
--- a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
+++ b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
@@ -5,13 +5,13 @@ parameters:
 - name: SECRET_QUOTA
   value: "3000"
 - name: CPU_BUILD_LIMIT
-  value: "960"
+  value: "4k"
 - name: CPU_BUILD_REQUEST
-  value: "480"
+  value: "2k"
 - name: MEMORY_BUILD_LIMIT
-  value: "1024Gi"
+  value: "8Ti"
 - name: MEMORY_BUILD_REQUEST
-  value: "512Gi"
+  value: "4Ti"
 - name: COUNT_PVC
   value: "360"
 - name: REQUEST_STORAGE
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index 16b38934..b0545b1d 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -6,17 +6,23 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-409719430-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-409719430-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-409719430-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-409719430-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
+- tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-409719430-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-409719430-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 9f6cff17..adc0e17a 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudioxlarge-clusterresources-409719430-593233715
+    templateRef: appstudioxlarge-clusterresources-1655178728-593233715
   namespaces:
-  - templateRef: appstudioxlarge-tenant-409719430-4121561789
+  - templateRef: appstudioxlarge-tenant-1655178728-4121561789
   spaceRoles:
     admin:
-      templateRef: appstudioxlarge-admin-409719430-849337768
+      templateRef: appstudioxlarge-admin-1655178728-849337768
     contributor:
-      templateRef: appstudioxlarge-contributor-409719430-829105171
+      templateRef: appstudioxlarge-contributor-1655178728-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-409719430-474752551
+      templateRef: appstudioxlarge-maintainer-1655178728-474752551
     viewer:
-      templateRef: appstudioxlarge-viewer-409719430-4256863455
+      templateRef: appstudioxlarge-viewer-1655178728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
new file mode 100644
index 00000000..271e4653
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-1655178728-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
new file mode 100644
index 00000000..52538276
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-1655178728-593233715
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-593233715
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "3000"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
new file mode 100644
index 00000000..6e1372ee
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-1655178728-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
new file mode 100644
index 00000000..ab33bc1a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-1655178728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
new file mode 100644
index 00000000..24fc581a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-1655178728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: 4k
+    - name: CPU_BUILD_REQUEST
+      value: 2k
+    - name: MEMORY_BUILD_LIMIT
+      value: 8Ti
+    - name: MEMORY_BUILD_REQUEST
+      value: 4Ti
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
new file mode 100644
index 00000000..5948413a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-1655178728-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 14ca6b37 to 9676b39c on Fri Oct 18 15:14:23 2024 </h3>  
 
<details> 
<summary>Git Diff (2608 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index 16b38934..b0545b1d 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -6,17 +6,23 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-409719430-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-409719430-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-409719430-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-409719430-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
+- tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-409719430-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-409719430-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 9f6cff17..adc0e17a 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudioxlarge-clusterresources-409719430-593233715
+    templateRef: appstudioxlarge-clusterresources-1655178728-593233715
   namespaces:
-  - templateRef: appstudioxlarge-tenant-409719430-4121561789
+  - templateRef: appstudioxlarge-tenant-1655178728-4121561789
   spaceRoles:
     admin:
-      templateRef: appstudioxlarge-admin-409719430-849337768
+      templateRef: appstudioxlarge-admin-1655178728-849337768
     contributor:
-      templateRef: appstudioxlarge-contributor-409719430-829105171
+      templateRef: appstudioxlarge-contributor-1655178728-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-409719430-474752551
+      templateRef: appstudioxlarge-maintainer-1655178728-474752551
     viewer:
-      templateRef: appstudioxlarge-viewer-409719430-4256863455
+      templateRef: appstudioxlarge-viewer-1655178728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
new file mode 100644
index 00000000..271e4653
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-1655178728-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
new file mode 100644
index 00000000..52538276
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-1655178728-593233715
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-593233715
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "3000"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
new file mode 100644
index 00000000..6e1372ee
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-1655178728-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
new file mode 100644
index 00000000..ab33bc1a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-1655178728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
new file mode 100644
index 00000000..24fc581a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-1655178728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: 4k
+    - name: CPU_BUILD_REQUEST
+      value: 2k
+    - name: MEMORY_BUILD_LIMIT
+      value: 8Ti
+    - name: MEMORY_BUILD_REQUEST
+      value: 4Ti
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
new file mode 100644
index 00000000..5948413a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-1655178728-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
index b9f4fb9a..041e38f6 100644
--- a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
+++ b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
@@ -5,13 +5,13 @@ parameters:
 - name: SECRET_QUOTA
   value: "3000"
 - name: CPU_BUILD_LIMIT
-  value: "960"
+  value: "4k"
 - name: CPU_BUILD_REQUEST
-  value: "480"
+  value: "2k"
 - name: MEMORY_BUILD_LIMIT
-  value: "1024Gi"
+  value: "8Ti"
 - name: MEMORY_BUILD_REQUEST
-  value: "512Gi"
+  value: "4Ti"
 - name: COUNT_PVC
   value: "360"
 - name: REQUEST_STORAGE
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index 16b38934..b0545b1d 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -6,17 +6,23 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-409719430-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-409719430-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-409719430-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-409719430-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
+- tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-409719430-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-409719430-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 9f6cff17..adc0e17a 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudioxlarge-clusterresources-409719430-593233715
+    templateRef: appstudioxlarge-clusterresources-1655178728-593233715
   namespaces:
-  - templateRef: appstudioxlarge-tenant-409719430-4121561789
+  - templateRef: appstudioxlarge-tenant-1655178728-4121561789
   spaceRoles:
     admin:
-      templateRef: appstudioxlarge-admin-409719430-849337768
+      templateRef: appstudioxlarge-admin-1655178728-849337768
     contributor:
-      templateRef: appstudioxlarge-contributor-409719430-829105171
+      templateRef: appstudioxlarge-contributor-1655178728-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-409719430-474752551
+      templateRef: appstudioxlarge-maintainer-1655178728-474752551
     viewer:
-      templateRef: appstudioxlarge-viewer-409719430-4256863455
+      templateRef: appstudioxlarge-viewer-1655178728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
new file mode 100644
index 00000000..271e4653
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-1655178728-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
new file mode 100644
index 00000000..52538276
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-1655178728-593233715
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-593233715
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "3000"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
new file mode 100644
index 00000000..6e1372ee
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-1655178728-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
new file mode 100644
index 00000000..ab33bc1a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-1655178728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
new file mode 100644
index 00000000..24fc581a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-1655178728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: 4k
+    - name: CPU_BUILD_REQUEST
+      value: 2k
+    - name: MEMORY_BUILD_LIMIT
+      value: 8Ti
+    - name: MEMORY_BUILD_REQUEST
+      value: 4Ti
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
new file mode 100644
index 00000000..5948413a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-1655178728-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 14ca6b37 to 9676b39c on Fri Oct 18 15:14:23 2024 </h3>  
 
<details> 
<summary>Git Diff (2608 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
index 16b38934..b0545b1d 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -6,17 +6,23 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-409719430-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-409719430-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-409719430-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-409719430-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
+- tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-409719430-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-409719430-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 9f6cff17..adc0e17a 100644
--- a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudioxlarge-clusterresources-409719430-593233715
+    templateRef: appstudioxlarge-clusterresources-1655178728-593233715
   namespaces:
-  - templateRef: appstudioxlarge-tenant-409719430-4121561789
+  - templateRef: appstudioxlarge-tenant-1655178728-4121561789
   spaceRoles:
     admin:
-      templateRef: appstudioxlarge-admin-409719430-849337768
+      templateRef: appstudioxlarge-admin-1655178728-849337768
     contributor:
-      templateRef: appstudioxlarge-contributor-409719430-829105171
+      templateRef: appstudioxlarge-contributor-1655178728-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-409719430-474752551
+      templateRef: appstudioxlarge-maintainer-1655178728-474752551
     viewer:
-      templateRef: appstudioxlarge-viewer-409719430-4256863455
+      templateRef: appstudioxlarge-viewer-1655178728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
new file mode 100644
index 00000000..271e4653
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-1655178728-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
new file mode 100644
index 00000000..52538276
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-1655178728-593233715
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-593233715
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "3000"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
new file mode 100644
index 00000000..6e1372ee
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-1655178728-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
new file mode 100644
index 00000000..ab33bc1a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-1655178728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
new file mode 100644
index 00000000..24fc581a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-1655178728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: 4k
+    - name: CPU_BUILD_REQUEST
+      value: 2k
+    - name: MEMORY_BUILD_LIMIT
+      value: 8Ti
+    - name: MEMORY_BUILD_REQUEST
+      value: 4Ti
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
new file mode 100644
index 00000000..5948413a
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-1655178728-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
index b9f4fb9a..041e38f6 100644
--- a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
+++ b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
@@ -5,13 +5,13 @@ parameters:
 - name: SECRET_QUOTA
   value: "3000"
 - name: CPU_BUILD_LIMIT
-  value: "960"
+  value: "4k"
 - name: CPU_BUILD_REQUEST
-  value: "480"
+  value: "2k"
 - name: MEMORY_BUILD_LIMIT
-  value: "1024Gi"
+  value: "8Ti"
 - name: MEMORY_BUILD_REQUEST
-  value: "512Gi"
+  value: "4Ti"
 - name: COUNT_PVC
   value: "360"
 - name: REQUEST_STORAGE
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
index 16b38934..b0545b1d 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -6,17 +6,23 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-409719430-849337768.yaml
 - tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-409719430-593233715.yaml
 - tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-409719430-829105171.yaml
 - tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-409719430-474752551.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
 - tiertemplate-appstudioxlarge-maintainer-884010306-474752551.yaml
+- tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-409719430-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-4121561789.yaml
 - tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-409719430-4256863455.yaml
 - tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
index 9f6cff17..adc0e17a 100644
--- a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudioxlarge-clusterresources-409719430-593233715
+    templateRef: appstudioxlarge-clusterresources-1655178728-593233715
   namespaces:
-  - templateRef: appstudioxlarge-tenant-409719430-4121561789
+  - templateRef: appstudioxlarge-tenant-1655178728-4121561789
   spaceRoles:
     admin:
-      templateRef: appstudioxlarge-admin-409719430-849337768
+      templateRef: appstudioxlarge-admin-1655178728-849337768
     contributor:
-      templateRef: appstudioxlarge-contributor-409719430-829105171
+      templateRef: appstudioxlarge-contributor-1655178728-829105171
     maintainer:
-      templateRef: appstudioxlarge-maintainer-409719430-474752551
+      templateRef: appstudioxlarge-maintainer-1655178728-474752551
     viewer:
-      templateRef: appstudioxlarge-viewer-409719430-4256863455
+      templateRef: appstudioxlarge-viewer-1655178728-4256863455
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
new file mode 100644
index 00000000..271e4653
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-1655178728-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-1655178728-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
new file mode 100644
index 00000000..52538276
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-1655178728-593233715.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-1655178728-593233715
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-593233715
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "3000"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
new file mode 100644
index 00000000..6e1372ee
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-1655178728-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-1655178728-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
new file mode 100644
index 00000000..ab33bc1a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-1655178728-474752551.yaml
@@ -0,0 +1,202 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-1655178728-474752551
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-474752551
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
new file mode 100644
index 00000000..24fc581a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-1655178728-4121561789.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-1655178728-4121561789
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4121561789
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "4096"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "1024"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: 4k
+    - name: CPU_BUILD_REQUEST
+      value: 2k
+    - name: MEMORY_BUILD_LIMIT
+      value: 8Ti
+    - name: MEMORY_BUILD_REQUEST
+      value: 4Ti
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
new file mode 100644
index 00000000..5948413a
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-1655178728-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-1655178728-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 1655178728-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer 
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
<h3>3: Production changes from a092a875 to 14ca6b37 on Fri Oct 18 13:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index a71008f5..0455b3cd 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -10,6 +10,9 @@ resources:
 - host-config.yaml
 - external-secrets.yaml
 
+patchesStrategicMerge:
+  - replicas_patch.yaml
+
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/replicas_patch.yaml b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
new file mode 100644
index 00000000..c36a1b04
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
@@ -0,0 +1,21 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  replicas: 5
+  template:
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - multi-platform-controller
+                topologyKey: kubernetes.io/hostname
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from a092a875 to 14ca6b37 on Fri Oct 18 13:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index a71008f5..0455b3cd 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -10,6 +10,9 @@ resources:
 - host-config.yaml
 - external-secrets.yaml
 
+patchesStrategicMerge:
+  - replicas_patch.yaml
+
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/replicas_patch.yaml b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
new file mode 100644
index 00000000..c36a1b04
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
@@ -0,0 +1,21 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  replicas: 5
+  template:
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - multi-platform-controller
+                topologyKey: kubernetes.io/hostname
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from a092a875 to 14ca6b37 on Fri Oct 18 13:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index a71008f5..0455b3cd 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -10,6 +10,9 @@ resources:
 - host-config.yaml
 - external-secrets.yaml
 
+patchesStrategicMerge:
+  - replicas_patch.yaml
+
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
diff --git a/components/multi-platform-controller/production-downstream/replicas_patch.yaml b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
new file mode 100644
index 00000000..c36a1b04
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/replicas_patch.yaml
@@ -0,0 +1,21 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: multi-platform-controller
+  namespace: multi-platform-controller
+spec:
+  replicas: 5
+  template:
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - multi-platform-controller
+                topologyKey: kubernetes.io/hostname
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from bb4d7db2 to a092a875 on Fri Oct 18 12:46:21 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5247904b..04183c57 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-bb4d7db2/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:7049676a22c0984d691fd84624ccfcbffae73890
---
>         image: quay.io/konflux-ci/build-service:bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
./commit-bb4d7db2/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
552c552
<         image: quay.io/konflux-ci/build-service:7049676a22c0984d691fd84624ccfcbffae73890
---
>         image: quay.io/konflux-ci/build-service:bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from bb4d7db2 to a092a875 on Fri Oct 18 12:46:21 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5247904b..04183c57 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from bb4d7db2 to a092a875 on Fri Oct 18 12:46:21 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5247904b..04183c57 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+- https://github.com/konflux-ci/build-service/config/default?ref=7049676a22c0984d691fd84624ccfcbffae73890
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: bb5d4803c20fa0e6c6841a84f3ee01b33ecf588d
+  newTag: 7049676a22c0984d691fd84624ccfcbffae73890
 
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
```
 
</details> 
<br> 


</div>
