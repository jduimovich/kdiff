# kustomize changes tracked by commits 
### This file generated at Tue Jan 16 16:03:47 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5bb3f28a to 07dfa001 on Tue Jan 16 15:44:30 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
new file mode 100644
index 00000000..22bd6308
--- /dev/null
+++ b/components/integration/base/delete-snapshots.yaml
@@ -0,0 +1,25 @@
+kind: ClusterRole
+apiVersion: authorization.openshift.io/v1
+metadata:
+  name: delete-snapshots
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "snapshots"
+    verbs:
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: delete-snapshots
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Integration Team
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: delete-snapshots
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index 6b588710..dc4db592 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
+- delete-snapshots.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-5bb3f28a/production/components/integration/production/kustomize.out.yaml
541,554d540
< apiVersion: authorization.openshift.io/v1
< kind: ClusterRole
< metadata:
<   name: delete-snapshots
<   namespace: integration-service
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots
<   verbs:
<   - delete
<   - deletecollection
< ---
958,970d943
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: delete-snapshots
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: delete-snapshots
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Integration Team 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 5bb3f28a to 07dfa001 on Tue Jan 16 15:44:30 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
new file mode 100644
index 00000000..22bd6308
--- /dev/null
+++ b/components/integration/base/delete-snapshots.yaml
@@ -0,0 +1,25 @@
+kind: ClusterRole
+apiVersion: authorization.openshift.io/v1
+metadata:
+  name: delete-snapshots
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "snapshots"
+    verbs:
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: delete-snapshots
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Integration Team
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: delete-snapshots
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index 6b588710..dc4db592 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
+- delete-snapshots.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-5bb3f28a/staging/components/integration/staging/kustomize.out.yaml
541,554d540
< apiVersion: authorization.openshift.io/v1
< kind: ClusterRole
< metadata:
<   name: delete-snapshots
<   namespace: integration-service
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots
<   verbs:
<   - delete
<   - deletecollection
< ---
958,970d943
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: delete-snapshots
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: delete-snapshots
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Integration Team 
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
<h3>1: Development changes from 5bb3f28a to 07dfa001 on Tue Jan 16 15:44:30 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
new file mode 100644
index 00000000..22bd6308
--- /dev/null
+++ b/components/integration/base/delete-snapshots.yaml
@@ -0,0 +1,25 @@
+kind: ClusterRole
+apiVersion: authorization.openshift.io/v1
+metadata:
+  name: delete-snapshots
+rules:
+  - apiGroups:
+    - "appstudio.redhat.com"
+    resources:
+      - "snapshots"
+    verbs:
+      - "delete"
+      - "deletecollection"
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: delete-snapshots
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Integration Team
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: delete-snapshots
diff --git a/components/integration/base/kustomization.yaml b/components/integration/base/kustomization.yaml
index 6b588710..dc4db592 100644
--- a/components/integration/base/kustomization.yaml
+++ b/components/integration/base/kustomization.yaml
@@ -1,6 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
+- delete-snapshots.yaml
 - integration.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-5bb3f28a/development/components/integration/development/kustomize.out.yaml
541,554d540
< apiVersion: authorization.openshift.io/v1
< kind: ClusterRole
< metadata:
<   name: delete-snapshots
<   namespace: integration-service
< rules:
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
<   - snapshots
<   verbs:
<   - delete
<   - deletecollection
< ---
958,970d943
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: delete-snapshots
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: delete-snapshots
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Integration Team 
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
<h3>2: Production changes from dd330aec to 5bb3f28a on Tue Jan 16 13:43:30 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index aa15bb37..c6958273 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6675662ec9151517e39dde6932279770609d5fd6
+    newTag: 9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 7119d92c..b92ea84f 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6675662ec9151517e39dde6932279770609d5fd6
+    newTag: 9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 patches:
   - target: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from dd330aec to 5bb3f28a on Tue Jan 16 13:43:30 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index aa15bb37..c6958273 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6675662ec9151517e39dde6932279770609d5fd6
+    newTag: 9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 7119d92c..b92ea84f 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6675662ec9151517e39dde6932279770609d5fd6
+    newTag: 9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 patches:
   - target: 
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
<h3>2: Development changes from dd330aec to 5bb3f28a on Tue Jan 16 13:43:30 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index aa15bb37..c6958273 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6675662ec9151517e39dde6932279770609d5fd6
+    newTag: 9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 7119d92c..b92ea84f 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=9f413da1d4703640b50fb03094f4b39e579c4bdb
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6675662ec9151517e39dde6932279770609d5fd6
+    newTag: 9f413da1d4703640b50fb03094f4b39e579c4bdb
 
 patches:
   - target: 
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
<h3>3: Production changes from 43bc84cc to dd330aec on Tue Jan 16 11:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
index b8f18fb6..86519156 100644
--- a/components/smee/staging/route.yaml
+++ b/components/smee/staging/route.yaml
@@ -6,7 +6,16 @@ metadata:
   annotations:
     haproxy.router.openshift.io/timeout: 86410s
     router.openshift.io/haproxy.health.check.interval: 86400s
-    haproxy.router.openshift.io/ip_whitelist: >
+    # The IP whitelist below allows getting webhook traffic from GitHub [1],
+    # GitLab.com [2] and our internal cluster.
+    #
+    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+    #
+    # Note that the configuration string below is very sensitive. It has to be
+    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+    # added to it makes OpenShift ignore it.
+    haproxy.router.openshift.io/ip_whitelist: >-
       192.30.252.0/22
       185.199.108.0/22
       140.82.112.0/20 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 43bc84cc to dd330aec on Tue Jan 16 11:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
index b8f18fb6..86519156 100644
--- a/components/smee/staging/route.yaml
+++ b/components/smee/staging/route.yaml
@@ -6,7 +6,16 @@ metadata:
   annotations:
     haproxy.router.openshift.io/timeout: 86410s
     router.openshift.io/haproxy.health.check.interval: 86400s
-    haproxy.router.openshift.io/ip_whitelist: >
+    # The IP whitelist below allows getting webhook traffic from GitHub [1],
+    # GitLab.com [2] and our internal cluster.
+    #
+    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+    #
+    # Note that the configuration string below is very sensitive. It has to be
+    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+    # added to it makes OpenShift ignore it.
+    haproxy.router.openshift.io/ip_whitelist: >-
       192.30.252.0/22
       185.199.108.0/22
       140.82.112.0/20 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-43bc84cc/staging/components/smee/staging/kustomize.out.yaml
59,61c59,60
<     haproxy.router.openshift.io/ip_whitelist: 192.30.252.0/22 185.199.108.0/22 140.82.112.0/20
<       143.55.64.0/20 2a0a:a440::/29 2606:50c0::/32 34.74.90.64/28 34.74.226.0/24 34.200.130.154
<       44.221.157.128 54.162.238.133
---
>     haproxy.router.openshift.io/ip_whitelist: |
>       192.30.252.0/22 185.199.108.0/22 140.82.112.0/20 143.55.64.0/20 2a0a:a440::/29 2606:50c0::/32 34.74.90.64/28 34.74.226.0/24 34.200.130.154 44.221.157.128 54.162.238.133 
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
<h3>3: Development changes from 43bc84cc to dd330aec on Tue Jan 16 11:28:42 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/smee/staging/route.yaml b/components/smee/staging/route.yaml
index b8f18fb6..86519156 100644
--- a/components/smee/staging/route.yaml
+++ b/components/smee/staging/route.yaml
@@ -6,7 +6,16 @@ metadata:
   annotations:
     haproxy.router.openshift.io/timeout: 86410s
     router.openshift.io/haproxy.health.check.interval: 86400s
-    haproxy.router.openshift.io/ip_whitelist: >
+    # The IP whitelist below allows getting webhook traffic from GitHub [1],
+    # GitLab.com [2] and our internal cluster.
+    #
+    # [1]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-githubs-ip-addresses
+    # [2]: https://docs.gitlab.com/ee/user/gitlab_com/#ip-range
+    #
+    # Note that the configuration string below is very sensitive. It has to be
+    # a single-space-separated list of IPs and CIDR ranges. Any extra whitespace
+    # added to it makes OpenShift ignore it.
+    haproxy.router.openshift.io/ip_whitelist: >-
       192.30.252.0/22
       185.199.108.0/22
       140.82.112.0/20 
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
<h3>4: Production changes from 89cca576 to 43bc84cc on Tue Jan 16 09:14:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 83b2ea1e..7119d92c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=c146261dd5441a74b87c302e8528aba1df50f201
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=c146261dd5441a74b87c302e8528aba1df50f201
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: c146261dd5441a74b87c302e8528aba1df50f201
+    newTag: 6675662ec9151517e39dde6932279770609d5fd6
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 583ada46..f5b9b117 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 89cca576 to 43bc84cc on Tue Jan 16 09:14:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 83b2ea1e..7119d92c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=c146261dd5441a74b87c302e8528aba1df50f201
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=c146261dd5441a74b87c302e8528aba1df50f201
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: c146261dd5441a74b87c302e8528aba1df50f201
+    newTag: 6675662ec9151517e39dde6932279770609d5fd6
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 583ada46..f5b9b117 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target: 
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
<h3>4: Development changes from 89cca576 to 43bc84cc on Tue Jan 16 09:14:13 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/base/kustomization.yaml b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
index 83b2ea1e..7119d92c 100644
--- a/components/remote-secret-controller/overlays/production/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/production/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=c146261dd5441a74b87c302e8528aba1df50f201
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=c146261dd5441a74b87c302e8528aba1df50f201
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6675662ec9151517e39dde6932279770609d5fd6
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6675662ec9151517e39dde6932279770609d5fd6
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: c146261dd5441a74b87c302e8528aba1df50f201
+    newTag: 6675662ec9151517e39dde6932279770609d5fd6
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 583ada46..f5b9b117 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=69a3649cc6113a2ba210b02782bf8ed25fb2480c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 69a3649cc6113a2ba210b02782bf8ed25fb2480c
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target: 
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
