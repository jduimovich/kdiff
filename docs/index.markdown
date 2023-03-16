# kustomize changes tracked by commits 
### This file generated at Thu Mar 16 02:22:41 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: staging, development
## Showing last 20 commits


<div>
<h3>1: Staging changes from 88ed7eb to ccb4876 on Wed Mar 15 19:59:26 2023 </h3>  
 
<details> 
<summary>Git Diff (99 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f45a283..86d2a25 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -40,19 +40,3 @@ spec:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
       policy:
         - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
----
-# Allow any authenticated user to access to get/list/watch the EnterpriseContractPolicy resources
-# in the enterprise-contract-service namespace.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: public-ecp
-  namespace: enterprise-contract-service
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: enterprisecontractpolicy-viewer-role
-subjects:
-  - apiGroup: rbac.authorization.k8s.io
-    kind: Group
-    name: system:authenticated
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 727ae14..8c9b61c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -9,6 +9,8 @@ resources:
   - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_viewer_role.yaml
   - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_editor_role.yaml
   - ecp.yaml
+  - role.yaml
+  - rolebinding.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator:
diff --git a/components/enterprise-contract/role.yaml b/components/enterprise-contract/role.yaml
new file mode 100644
index 0000000..55d8384
--- /dev/null
+++ b/components/enterprise-contract/role.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: enterprisecontract-configmap-viewer-role
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - ec-defaults
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch
\ No newline at end of file
diff --git a/components/enterprise-contract/rolebinding.yaml b/components/enterprise-contract/rolebinding.yaml
new file mode 100644
index 0000000..90bdf09
--- /dev/null
+++ b/components/enterprise-contract/rolebinding.yaml
@@ -0,0 +1,30 @@
+---
+# Allow any authenticated user to access to get/list/watch the EnterpriseContractPolicy resources
+# in the enterprise-contract-service namespace.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: public-ecp
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: enterprisecontractpolicy-viewer-role
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: public-ec-cm
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: enterprisecontract-configmap-viewer-role
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (45 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/enterprise-contract/kustomize.out
149,166d148
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: enterprisecontract-configmap-viewer-role
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - ec-defaults
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
210,223d191
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: public-ec-cm
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: enterprisecontract-configmap-viewer-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 20:04:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:05:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 20:04:12 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 88ed7eb to ccb4876 on Wed Mar 15 19:59:26 2023 </h3>  
 
<details> 
<summary>Git Diff (99 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f45a283..86d2a25 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -40,19 +40,3 @@ spec:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
       policy:
         - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
----
-# Allow any authenticated user to access to get/list/watch the EnterpriseContractPolicy resources
-# in the enterprise-contract-service namespace.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: public-ecp
-  namespace: enterprise-contract-service
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: enterprisecontractpolicy-viewer-role
-subjects:
-  - apiGroup: rbac.authorization.k8s.io
-    kind: Group
-    name: system:authenticated
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 727ae14..8c9b61c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -9,6 +9,8 @@ resources:
   - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_viewer_role.yaml
   - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_editor_role.yaml
   - ecp.yaml
+  - role.yaml
+  - rolebinding.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator:
diff --git a/components/enterprise-contract/role.yaml b/components/enterprise-contract/role.yaml
new file mode 100644
index 0000000..55d8384
--- /dev/null
+++ b/components/enterprise-contract/role.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: enterprisecontract-configmap-viewer-role
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - ec-defaults
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch
\ No newline at end of file
diff --git a/components/enterprise-contract/rolebinding.yaml b/components/enterprise-contract/rolebinding.yaml
new file mode 100644
index 0000000..90bdf09
--- /dev/null
+++ b/components/enterprise-contract/rolebinding.yaml
@@ -0,0 +1,30 @@
+---
+# Allow any authenticated user to access to get/list/watch the EnterpriseContractPolicy resources
+# in the enterprise-contract-service namespace.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: public-ecp
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: enterprisecontractpolicy-viewer-role
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: public-ec-cm
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: enterprisecontract-configmap-viewer-role
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (42 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/development/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/development/components/enterprise-contract/kustomize.out
149,166d148
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: enterprisecontract-configmap-viewer-role
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - ec-defaults
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
210,223d191
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: public-ec-cm
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: enterprisecontract-configmap-viewer-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 20:04:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 20:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:05:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 20:05:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 6710c97 to 88ed7eb on Wed Mar 15 18:22:17 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 007fdfe..8a61a3e 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=8392784544c69656cdd23c65271ef83a3f947cdf
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 92ef751..68c9506 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=8392784544c69656cdd23c65271ef83a3f947cdf
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 43c1e5a..c02d244 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=8392784544c69656cdd23c65271ef83a3f947cdf
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
+    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
+    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 20:05:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 18:04:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 20:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 18:04:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 6710c97 to 88ed7eb on Wed Mar 15 18:22:17 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 007fdfe..8a61a3e 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=8392784544c69656cdd23c65271ef83a3f947cdf
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 92ef751..68c9506 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=8392784544c69656cdd23c65271ef83a3f947cdf
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 43c1e5a..c02d244 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=8392784544c69656cdd23c65271ef83a3f947cdf
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
+    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
+    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 20:05:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 20:05:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 18:05:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 18:05:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 3f39a2e to 6710c97 on Wed Mar 15 16:56:44 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index b25b9a0..007fdfe 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 4f08b70..92ef751 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 14c71d9..43c1e5a 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
+    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
+    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 18:04:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:04:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 18:04:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:04:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 3f39a2e to 6710c97 on Wed Mar 15 16:56:44 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index b25b9a0..007fdfe 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 4f08b70..92ef751 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 14c71d9..43c1e5a 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
+    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
+    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 18:05:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 18:05:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 16:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 2c591c8 to 3f39a2e on Wed Mar 15 14:43:07 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 7c9d124..52c580f 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+- https://github.com/redhat-appstudio/build-service/config/default?ref=2f611a7957b38825c9ae92d508f3f827e5d41905
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+  newTag: 2f611a7957b38825c9ae92d508f3f827e5d41905
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index c38918a..f11c177 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=2f611a7957b38825c9ae92d508f3f827e5d41905 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/build-service/staging/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:2f611a7957b38825c9ae92d508f3f827e5d41905
---
>         image: quay.io/redhat-appstudio/build-service:acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 16:04:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:05:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 16:04:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:05:32 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 2c591c8 to 3f39a2e on Wed Mar 15 14:43:07 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 7c9d124..52c580f 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+- https://github.com/redhat-appstudio/build-service/config/default?ref=2f611a7957b38825c9ae92d508f3f827e5d41905
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+  newTag: 2f611a7957b38825c9ae92d508f3f827e5d41905
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index c38918a..f11c177 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=2f611a7957b38825c9ae92d508f3f827e5d41905 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/development/components/build-service/development/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:2f611a7957b38825c9ae92d508f3f827e5d41905
---
>         image: quay.io/redhat-appstudio/build-service:acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 16:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 16:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:06:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 16:06:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Staging changes from 5d6914e to 2c591c8 on Wed Mar 15 14:41:15 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 1082ac3..f687484 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: cc70d4e85a5ec33256921f836e1fde8359eb04d4
+  newTag: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index bf60d49..0d1b1e0 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
\ No newline at end of file
+    value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index c0a7d24..079cd61 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
---
>           value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cc70d4e85a5ec33256921f836e1fde8359eb04d4
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 16:05:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:04:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 16:05:32 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:04:22 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Development changes from 5d6914e to 2c591c8 on Wed Mar 15 14:41:15 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 1082ac3..f687484 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: cc70d4e85a5ec33256921f836e1fde8359eb04d4
+  newTag: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index bf60d49..0d1b1e0 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
\ No newline at end of file
+    value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index c0a7d24..079cd61 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/development/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
---
>           value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cc70d4e85a5ec33256921f836e1fde8359eb04d4
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 16:06:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 16:06:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:04:45 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 14:04:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Staging changes from fbc5f3b to 5d6914e on Wed Mar 15 13:07:01 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release-service/kustomization.yaml b/components/monitoring/grafana/base/release-service/kustomization.yaml
index 842ff17..ac0959a 100644
--- a/components/monitoring/grafana/base/release-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/release-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=913a02c3595a2457680bb6221ae17753e04a08cd
+- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=21edb2dadc4e6031568689ab46ff78ad3a55de8c
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index 77fb71a..696345a 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=913a02c3595a2457680bb6221ae17753e04a08cd
+- https://github.com/redhat-appstudio/release-service/config/default?ref=21edb2dadc4e6031568689ab46ff78ad3a55de8c
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 913a02c3595a2457680bb6221ae17753e04a08cd
+  newTag: 21edb2dadc4e6031568689ab46ff78ad3a55de8c
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 14:04:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:05:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 14:04:22 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:05:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Development changes from fbc5f3b to 5d6914e on Wed Mar 15 13:07:01 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release-service/kustomization.yaml b/components/monitoring/grafana/base/release-service/kustomization.yaml
index 842ff17..ac0959a 100644
--- a/components/monitoring/grafana/base/release-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/release-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=913a02c3595a2457680bb6221ae17753e04a08cd
+- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=21edb2dadc4e6031568689ab46ff78ad3a55de8c
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index 77fb71a..696345a 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=913a02c3595a2457680bb6221ae17753e04a08cd
+- https://github.com/redhat-appstudio/release-service/config/default?ref=21edb2dadc4e6031568689ab46ff78ad3a55de8c
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 913a02c3595a2457680bb6221ae17753e04a08cd
+  newTag: 21edb2dadc4e6031568689ab46ff78ad3a55de8c
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 14:04:45 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 14:04:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:05:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 14:05:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Staging changes from bb5ea7d to fbc5f3b on Wed Mar 15 12:43:09 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index 5741356..1246ef8 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=41fbdb124775323f58fd5ce93c70bb7d79c20650
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=69724c0fd57b44fc4cc2f19d150a4cf1ea8a159b
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 41fbdb124775323f58fd5ce93c70bb7d79c20650
+  newTag: 69724c0fd57b44fc4cc2f19d150a4cf1ea8a159b
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bb5ea7d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 14:05:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:06:04 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bb5ea7d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 14:05:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:06:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Development changes from bb5ea7d to fbc5f3b on Wed Mar 15 12:43:09 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/integration/kustomization.yaml b/components/integration/kustomization.yaml
index 5741356..1246ef8 100644
--- a/components/integration/kustomization.yaml
+++ b/components/integration/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=41fbdb124775323f58fd5ce93c70bb7d79c20650
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=69724c0fd57b44fc4cc2f19d150a4cf1ea8a159b
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 41fbdb124775323f58fd5ce93c70bb7d79c20650
+  newTag: 69724c0fd57b44fc4cc2f19d150a4cf1ea8a159b
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bb5ea7d/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 14:05:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 14:05:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:06:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 14:06:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Staging changes from ae36801 to bb5ea7d on Wed Mar 15 12:24:44 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index b5d4b0d..c1de13a 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:539531f37755bb287b23f979532660ad442025fb
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:539531f37755bb287b23f979532660ad442025fb
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:539531f37755bb287b23f979532660ad442025fb
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:539531f37755bb287b23f979532660ad442025fb
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bb5ea7d/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ae36801/staging/components/build-service/staging/kustomize.out
649c649
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:539531f37755bb287b23f979532660ad442025fb
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
655c655
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:539531f37755bb287b23f979532660ad442025fb
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
661c661
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:539531f37755bb287b23f979532660ad442025fb
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
667c667
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:539531f37755bb287b23f979532660ad442025fb
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bb5ea7d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ae36801/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 14:06:04 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 12:05:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bb5ea7d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ae36801/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 14:06:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 12:05:43 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Development changes from ae36801 to bb5ea7d on Wed Mar 15 12:24:44 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index b5d4b0d..c1de13a 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:539531f37755bb287b23f979532660ad442025fb
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:539531f37755bb287b23f979532660ad442025fb
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:539531f37755bb287b23f979532660ad442025fb
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:539531f37755bb287b23f979532660ad442025fb
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bb5ea7d/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ae36801/development/components/build-service/development/kustomize.out
649c649
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:539531f37755bb287b23f979532660ad442025fb
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
655c655
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:539531f37755bb287b23f979532660ad442025fb
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
661c661
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:539531f37755bb287b23f979532660ad442025fb
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
667c667
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:539531f37755bb287b23f979532660ad442025fb
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:3649b8ca452e7f97e016310fccdfb815e4c0aa7e
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bb5ea7d/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ae36801/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 14:06:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 14:06:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 12:06:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 12:06:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Staging changes from f70f9d1 to ae36801 on Wed Mar 15 11:15:05 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 8f38edd..4575aa4 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-service/config/default?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc
+- https://github.com/redhat-appstudio/application-service/config/default?ref=80c3a89f639f152d6a07211e55f38a1af303984b
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/application-service
   newName: quay.io/redhat-appstudio/application-service
-  newTag: d4d3f6e353a7f300de0e91a5bf9333a222d412bc
+  newTag: 80c3a89f639f152d6a07211e55f38a1af303984b
 
 configMapGenerator:
 - literals:
diff --git a/components/monitoring/grafana/base/has/kustomization.yaml b/components/monitoring/grafana/base/has/kustomization.yaml
index 7493156..c0f0d0d 100644
--- a/components/monitoring/grafana/base/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/has/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=80c3a89f639f152d6a07211e55f38a1af303984b 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ae36801/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f70f9d1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 12:05:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 12:06:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ae36801/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f70f9d1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 12:05:43 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 12:06:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Development changes from f70f9d1 to ae36801 on Wed Mar 15 11:15:05 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 8f38edd..4575aa4 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-service/config/default?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc
+- https://github.com/redhat-appstudio/application-service/config/default?ref=80c3a89f639f152d6a07211e55f38a1af303984b
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/application-service
   newName: quay.io/redhat-appstudio/application-service
-  newTag: d4d3f6e353a7f300de0e91a5bf9333a222d412bc
+  newTag: 80c3a89f639f152d6a07211e55f38a1af303984b
 
 configMapGenerator:
 - literals:
diff --git a/components/monitoring/grafana/base/has/kustomization.yaml b/components/monitoring/grafana/base/has/kustomization.yaml
index 7493156..c0f0d0d 100644
--- a/components/monitoring/grafana/base/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/has/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=d4d3f6e353a7f300de0e91a5bf9333a222d412bc
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=80c3a89f639f152d6a07211e55f38a1af303984b 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ae36801/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f70f9d1/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 12:06:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 12:06:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 12:06:43 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 12:06:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Staging changes from 80485db to f70f9d1 on Wed Mar 15 11:14:51 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 103fd4c..b25b9a0 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=22804290ba761746e8381f6cd443cc69fd0618d5
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 7a789df..4f08b70 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=22804290ba761746e8381f6cd443cc69fd0618d5
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index e64055e..14c71d9 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=22804290ba761746e8381f6cd443cc69fd0618d5
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
+    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
+    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f70f9d1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 12:06:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:04:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f70f9d1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 12:06:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Development changes from 80485db to f70f9d1 on Wed Mar 15 11:14:51 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 103fd4c..b25b9a0 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=22804290ba761746e8381f6cd443cc69fd0618d5
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 7a789df..4f08b70 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=22804290ba761746e8381f6cd443cc69fd0618d5
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index e64055e..14c71d9 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=22804290ba761746e8381f6cd443cc69fd0618d5
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
+    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
+    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f70f9d1/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 12:06:43 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 12:06:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:04:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 10:04:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Staging changes from aa4d748 to 80485db on Wed Mar 15 09:56:49 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index fa32a0f..7c9d124 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
+- https://github.com/redhat-appstudio/build-service/config/default?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6c869530b327601ba39a8f94b60d09f7f431f83e
+  newTag: acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index 959a581..c38918a 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/build-service/staging/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
---
>         image: quay.io/redhat-appstudio/build-service:6c869530b327601ba39a8f94b60d09f7f431f83e
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 10:04:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:05:16 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 10:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:05:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Development changes from aa4d748 to 80485db on Wed Mar 15 09:56:49 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index fa32a0f..7c9d124 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
+- https://github.com/redhat-appstudio/build-service/config/default?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6c869530b327601ba39a8f94b60d09f7f431f83e
+  newTag: acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index 959a581..c38918a 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6c869530b327601ba39a8f94b60d09f7f431f83e
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/development/components/build-service/development/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
---
>         image: quay.io/redhat-appstudio/build-service:6c869530b327601ba39a8f94b60d09f7f431f83e
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-80485db/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 10:04:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 10:04:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 10:05:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 10:05:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Staging changes from 575c8b1 to aa4d748 on Wed Mar 15 08:12:40 2023 </h3>  
 
<details> 
<summary>Git Diff (1605 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index c649254..8482994 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -7,126 +7,616 @@ spec:
     matchLabels:
       appstudio.redhat.com/keycloak: dev
   realm:
+    id: hac-sso
+    realm: redhat-external
+    displayName: Redhat External for HAC
     accessTokenLifespan: 7200
+    accessTokenLifespanForImplicitFlow: 900
+    enabled: true
+    sslRequired: external
+    registrationAllowed: false
+    registrationEmailAsUsername: false
+    rememberMe: false
+    verifyEmail: false
+    loginWithEmailAllowed: true
+    duplicateEmailsAllowed: false
+    resetPasswordAllowed: false
+    editUsernameAllowed: false
+    bruteForceProtected: false
+    permanentLockout: false
+    maxFailureWaitSeconds: 900
+    minimumQuickLoginWaitSeconds: 60
+    waitIncrementSeconds: 60
+    quickLoginCheckMilliSeconds: 1000
+    maxDeltaTimeSeconds: 43200
+    failureFactor: 30
+    roles:
+      realm:
+        - id: a8d38f0f-7d83-41b7-8236-55998c531760
+          name: default-roles-redhat-external
+          description: ${role_default-roles}
+          composite: true
+          composites:
+            realm:
+              - offline_access
+              - uma_authorization
+            client:
+              account:
+                - manage-account
+                - view-profile
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+        - id: 4c73ed54-7750-4045-9c3b-8f43b05b0cb4
+          name: uma_authorization
+          description: ${role_uma_authorization}
+          composite: false
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+        - id: 18e6ca8a-034d-428a-a0f6-3e5824c74d67
+          name: offline_access
+          description: ${role_offline-access}
+          composite: false
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+      client:
+        cloud-services: []
+        realm-management:
+          - id: 47a7732c-f371-4cc1-935d-1c517614eb74
+            name: manage-identity-providers
+            description: ${role_manage-identity-providers}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 92dac8f6-33df-4375-8d47-302065b0c47c
+            name: view-events
+            description: ${role_view-events}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: c5cd8e35-13cf-4d17-9002-33bc7049ed49
+            name: view-users
+            description: ${role_view-users}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - query-groups
+                  - query-users
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: d7d79f8e-a86a-4437-9ef6-c27b086ff005
+            name: manage-authorization
+            description: ${role_manage-authorization}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3b31e4a3-a4b9-404e-a416-e559f59a18d5
+            name: view-clients
+            description: ${role_view-clients}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - query-clients
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 8a5e47b0-f5cc-4f42-a4c0-7cf61107cfca
+            name: impersonation
+            description: ${role_impersonation}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 5f7b54ef-f854-42f3-95bd-a9ea962fb629
+            name: create-client
+            description: ${role_create-client}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3b687d3d-8229-4fd5-8cdd-0aee6d4bf8ca
+            name: query-clients
+            description: ${role_query-clients}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 6c5fce09-33e2-40b6-823e-dcf644fa6053
+            name: manage-realm
+            description: ${role_manage-realm}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: afaf3f99-7750-4c6a-bca6-b35b26d2f8ff
+            name: query-users
+            description: ${role_query-users}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 59cf3bbe-6c5a-4401-a996-9116d71d35f4
+            name: manage-clients
+            description: ${role_manage-clients}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 03361fc0-ff06-4d09-ab1f-ab900fe4d57b
+            name: manage-users
+            description: ${role_manage-users}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: b1b19c8d-fd64-4960-a409-dafc455d504e
+            name: query-groups
+            description: ${role_query-groups}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3ea88ffd-28a4-423c-8fb4-f832f610b2dc
+            name: realm-admin
+            description: ${role_realm-admin}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - manage-identity-providers
+                  - view-events
+                  - view-users
+                  - view-clients
+                  - manage-authorization
+                  - impersonation
+                  - create-client
+                  - query-clients
+                  - manage-realm
+                  - query-users
+                  - manage-clients
+                  - manage-users
+                  - query-groups
+                  - view-realm
+                  - query-realms
+                  - view-identity-providers
+                  - view-authorization
+                  - manage-events
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 71a4d66d-50bc-4ef3-8da8-36f31c7b6b3e
+            name: view-realm
+            description: ${role_view-realm}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: ce2a40fc-5fd5-4735-b0dd-b5d707dd5ee2
+            name: query-realms
+            description: ${role_query-realms}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: e1403844-fc62-4522-8181-64a0395a9608
+            name: view-identity-providers
+            description: ${role_view-identity-providers}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 76acc1f2-7d2b-40f2-af4d-a3dff5403470
+            name: manage-events
+            description: ${role_manage-events}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 1bab32ce-418a-4779-875a-aa550bc5720e
+            name: view-authorization
+            description: ${role_view-authorization}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+        security-admin-console: []
+        admin-cli: []
+        account-console: []
+        broker:
+          - id: 9b3c893f-3860-46d7-82c6-4e6066380871
+            name: read-token
+            description: ${role_read-token}
+            composite: false
+            clientRole: true
+            containerId: 6dec4db5-3920-4e47-b671-e7cfeb915e96
+            attributes: {}
+        account:
+          - id: 62cc2451-60f3-4420-ab11-106280ea5127
+            name: manage-account
+            description: ${role_manage-account}
+            composite: true
+            composites:
+              client:
+                account:
+                  - manage-account-links
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 8a7a5a05-e697-445e-8dee-122227311297
+            name: delete-account
+            description: ${role_delete-account}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: aae2d09f-6aed-476e-93fa-68e0604bb6ac
+            name: view-consent
+            description: ${role_view-consent}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 79c590ab-dada-4ef0-bfa1-8c85d35e7d84
+            name: view-applications
+            description: ${role_view-applications}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 7da35324-12d5-44e5-9c6a-9f1c1a2dccd0
+            name: manage-consent
+            description: ${role_manage-consent}
+            composite: true
+            composites:
+              client:
+                account:
+                  - view-consent
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 09d2dc7b-e18e-49a5-ae06-0f01cfa876b8
+            name: manage-account-links
+            description: ${role_manage-account-links}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 3b5813d3-3ecb-489b-8bc8-38288b2c898a
+            name: view-profile
+            description: ${role_view-profile}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+    defaultRole:
+      id: a8d38f0f-7d83-41b7-8236-55998c531760
+      name: default-roles-redhat-external
+      description: ${role_default-roles}
+      composite: true
+      clientRole: false
+      containerId: hac-sso
+    otpPolicyType: totp
+    otpPolicyAlgorithm: HmacSHA1
+    otpPolicyInitialCounter: 0
+    otpPolicyDigits: 6
+    otpPolicyLookAheadWindow: 1
+    otpPolicyPeriod: 30
+    otpSupportedApplications:
+      - FreeOTP
+      - Google Authenticator
+    scopeMappings:
+      - clientScope: offline_access
+        roles:
+          - offline_access
+    clientScopeMappings:
+      account:
+        - client: account-console
+          roles:
+            - manage-account
     clients:
-      - enabled: true
+      - id: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+        clientId: account
+        name: ${client_account}
+        rootUrl: ${authBaseUrl}
+        baseUrl: /realms/redhat-external/account/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
         redirectUris:
-          - '*'
-        clientId: cloud-services
-        name: cloud-services
+          - /realms/redhat-external/account/*
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
         implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
         publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 664b265b-5730-4e51-aee1-fa1aa9427323
+        clientId: account-console
+        name: ${client_account-console}
+        rootUrl: ${authBaseUrl}
+        baseUrl: /realms/redhat-external/account/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - /realms/redhat-external/account/*
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
         standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes:
+          pkce.code.challenge.method: S256
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        protocolMappers:
+          - id: fab196f4-8200-41eb-8d63-173256763e71
+            name: audience resolve
+            protocol: openid-connect
+            protocolMapper: oidc-audience-resolve-mapper
+            consentRequired: false
+            config: {}
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 617194f2-e0ff-4ee1-9fb1-15bed4fa4a77
+        clientId: admin-cli
+        name: ${client_admin-cli}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: false
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: true
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
         protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 6dec4db5-3920-4e47-b671-e7cfeb915e96
+        clientId: broker
+        name: ${client_broker}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: true
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: false
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 9a5018a7-5f92-40c9-b8f1-63f53bc32a68
+        clientId: cloud-services
+        name: cloud-services
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - '*'
         webOrigins:
           - '*'
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
         directAccessGrantsEnabled: true
-        defaultClientScopes: 
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes:
+          saml.force.post.binding: "false"
+          saml.multivalued.roles: "false"
+          frontchannel.logout.session.required: "false"
+          oauth2.device.authorization.grant.enabled: "false"
+          backchannel.logout.revoke.offline.tokens: "false"
+          saml.server.signature.keyinfo.ext: "false"
+          use.refresh.tokens: "true"
+          oidc.ciba.grant.enabled: "false"
+          backchannel.logout.session.required: "true"
+          client_credentials.use_refresh_token: "false"
+          require.pushed.authorization.requests: "false"
+          saml.client.signature: "false"
+          saml.allow.ecp.flow: "false"
+          id.token.as.detached.signature: "false"
+          saml.assertion.signature: "false"
+          saml.encrypt: "false"
+          saml.server.signature: "false"
+          exclude.session.state.from.auth.response: "false"
+          saml.artifact.binding: "false"
+          saml_force_name_id_format: "false"
+          acr.loa.map: '{}'
+          tls.client.certificate.bound.access.tokens: "false"
+          saml.authnstatement: "false"
+          display.on.consent.screen: "false"
+          token.response.type.bearer.lower-case: "false"
+          saml.onetimeuse.condition: "false"
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: true
+        nodeReRegistrationTimeout: -1
+        defaultClientScopes:
+          - web-origins
+          - acr
           - nameandterms
-          - email
           - profile
           - roles
-          - web-origins
+          - email
         optionalClientScopes:
           - address
-          - microprofile-jwt
+          - phone
           - offline_access
+          - microprofile-jwt
+      - id: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+        clientId: realm-management
+        name: ${client_realm-management}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: true
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: false
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
           - phone
-    clientScopes:
-      - name: role_list
-        description: SAML role list
-        protocol: saml
-        attributes:
-          consent.screen.text: ${samlRoleListScopeConsentText}
-          display.on.consent.screen: "true"
-        protocolMappers:
-          - name: role list
-            protocol: saml
-            protocolMapper: saml-role-list-mapper
-            consentRequired: false
-            config:
-              single: "false"
-              attribute.nameformat: Basic
-              attribute.name: Role
-      - name: phone
-        description: 'OpenID Connect built-in scope: phone'
+          - offline_access
+          - microprofile-jwt
+      - id: 50b949b2-3b56-4cc1-a8b6-90951a6ad9c6
+        clientId: security-admin-console
+        name: ${client_security-admin-console}
+        rootUrl: ${authAdminUrl}
+        baseUrl: /admin/redhat-external/console/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - /admin/redhat-external/console/*
+        webOrigins:
+          - +
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
         protocol: openid-connect
         attributes:
-          include.in.token.scope: "true"
-          display.on.consent.screen: "true"
-          consent.screen.text: ${phoneScopeConsentText}
+          pkce.code.challenge.method: S256
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
         protocolMappers:
-          - name: phone number verified
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
-            consentRequired: false
-            config:
-              userinfo.token.claim: "true"
-              user.attribute: phoneNumberVerified
-              id.token.claim: "true"
-              access.token.claim: "true"
-              claim.name: phone_number_verified
-              jsonType.label: boolean
-          - name: phone number
+          - id: f0d04249-2f8f-4069-8566-4f3aa35e7690
+            name: locale
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: phoneNumber
+              user.attribute: locale
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: phone_number
-              jsonType.label: String
-      - name: roles
-        description: OpenID Connect scope for add user roles to the access token
-        protocol: openid-connect
-        attributes:
-          include.in.token.scope: "false"
-          display.on.consent.screen: "true"
-          consent.screen.text: ${rolesScopeConsentText}
-        protocolMappers:
-          - name: realm roles
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-realm-role-mapper
-            consentRequired: false
-            config:
-              user.attribute: foo
-              access.token.claim: "true"
-              claim.name: realm_access.roles
-              jsonType.label: String
-              multivalued: "true"
-          - name: client roles
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-client-role-mapper
-            consentRequired: false
-            config:
-              user.attribute: foo
-              access.token.claim: "true"
-              claim.name: resource_access.${client_id}.roles
+              claim.name: locale
               jsonType.label: String
-              multivalued: "true"
-          - name: audience resolve
-            protocol: openid-connect
-            protocolMapper: oidc-audience-resolve-mapper
-            consentRequired: false
-            config: {}
-      - name: acr
-        description: OpenID Connect scope for add acr (authentication context class reference) to the token
-        protocol: openid-connect
-        attributes:
-          include.in.token.scope: "false"
-          display.on.consent.screen: "false"
-        protocolMappers:
-          - id: 88d57217-59f6-4ec7-ae36-9d2a003dc512
-            name: acr loa level
-            protocol: openid-connect
-            protocolMapper: oidc-acr-mapper
-            consentRequired: false
-            config:
-              id.token.claim: "true"
-              access.token.claim: "true"
-      - name: web-origins
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+    clientScopes:
+      - id: 2e00768f-fe3c-48d8-92bf-35afbbcc30c0
+        name: web-origins
         description: OpenID Connect scope for add allowed web origins to the access token
         protocol: openid-connect
         attributes:
@@ -134,71 +624,71 @@ spec:
           display.on.consent.screen: "false"
           consent.screen.text: ""
         protocolMappers:
-          - id: f57e7fed-4377-43e1-a2fa-0ef938735371
+          - id: d54340bc-16f0-45a4-9464-436ef7583a81
             name: allowed web origins
             protocol: openid-connect
             protocolMapper: oidc-allowed-origins-mapper
             consentRequired: false
             config: {}
-      - name: offline_access
-        description: 'OpenID Connect built-in scope: offline_access'
-        protocol: openid-connect
-        attributes:
-          consent.screen.text: ${offlineAccessScopeConsentText}
-          display.on.consent.screen: "true"
-      - name: microprofile-jwt
-        description: Microprofile - JWT built-in scope
+      - id: 172816fd-8450-4e82-b33a-89f9181373a4
+        name: phone
+        description: 'OpenID Connect built-in scope: phone'
         protocol: openid-connect
         attributes:
           include.in.token.scope: "true"
-          display.on.consent.screen: "false"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${phoneScopeConsentText}
         protocolMappers:
-          - name: groups
+          - id: 02c09b15-1210-4a6c-b6e4-c2452031712a
+            name: phone number
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-realm-role-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
-              multivalued: "true"
-              user.attribute: foo
+              userinfo.token.claim: "true"
+              user.attribute: phoneNumber
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: groups
+              claim.name: phone_number
               jsonType.label: String
-          - name: upn
+          - id: 6a96110b-3a23-48cd-8d90-cefa6228e5e1
+            name: phone number verified
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: username
+              user.attribute: phoneNumberVerified
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: upn
-              jsonType.label: String
-      - name: address
-        description: 'OpenID Connect built-in scope: address'
-        protocol: openid-connect
+              claim.name: phone_number_verified
+              jsonType.label: boolean
+      - id: c7d788d8-5836-4500-b4a9-083c2f6c2960
+        name: role_list
+        description: SAML role list
+        protocol: saml
         attributes:
-          include.in.token.scope: "true"
+          consent.screen.text: ${samlRoleListScopeConsentText}
           display.on.consent.screen: "true"
-          consent.screen.text: ${addressScopeConsentText}
         protocolMappers:
-          - id: 211470af-2420-4127-a5b7-e38d3f50920a
-            name: address
-            protocol: openid-connect
-            protocolMapper: oidc-address-mapper
+          - id: a70dad06-f7a0-4c3d-8c08-cf440c7918da
+            name: role list
+            protocol: saml
+            protocolMapper: saml-role-list-mapper
             consentRequired: false
             config:
-              user.attribute.formatted: formatted
-              user.attribute.country: country
-              user.attribute.postal_code: postal_code
-              userinfo.token.claim: "true"
-              user.attribute.street: street
-              id.token.claim: "true"
-              user.attribute.region: region
-              access.token.claim: "true"
-              user.attribute.locality: locality
-      - name: profile
+              single: "false"
+              attribute.nameformat: Basic
+              attribute.name: Role
+      - id: 656d7d46-bcd6-4b5a-bcfa-20ad0f13e9fe
+        name: offline_access
+        description: 'OpenID Connect built-in scope: offline_access'
+        protocol: openid-connect
+        attributes:
+          consent.screen.text: ${offlineAccessScopeConsentText}
+          display.on.consent.screen: "true"
+      - id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
+        name: profile
         description: 'OpenID Connect built-in scope: profile'
         protocol: openid-connect
         attributes:
@@ -206,158 +696,173 @@ spec:
           display.on.consent.screen: "true"
           consent.screen.text: ${profileScopeConsentText}
         protocolMappers:
-          - name: picture
+          - id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
+            name: locale
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: picture
+              user.attribute: locale
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: picture
+              claim.name: locale
               jsonType.label: String
-          - name: zoneinfo
+          - id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
+            name: full name
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-full-name-mapper
             consentRequired: false
             config:
-              userinfo.token.claim: "true"
-              user.attribute: zoneinfo
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: zoneinfo
-              jsonType.label: String
-          - name: birthdate
+              userinfo.token.claim: "true"
+          - id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
+            name: family name
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: birthdate
+              user.attribute: lastName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: birthdate
+              claim.name: family_name
               jsonType.label: String
-          - name: given name
+          - id: 71c6caff-3f17-47db-8dc1-42f9af01832e
+            name: updated at
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: firstName
+              user.attribute: updatedAt
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: given_name
-              jsonType.label: String
-          - name: website
+              claim.name: updated_at
+              jsonType.label: long
+          - id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
+            name: picture
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: website
+              user.attribute: picture
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: website
+              claim.name: picture
               jsonType.label: String
-          - name: username
+          - id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
+            name: nickname
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: username
+              user.attribute: nickname
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: preferred_username
+              claim.name: nickname
               jsonType.label: String
-          - name: full name
+          - id: f8167604-073d-47ea-9fd1-6ec754ce5c49
+            name: website
             protocol: openid-connect
-            protocolMapper: oidc-full-name-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
+              userinfo.token.claim: "true"
+              user.attribute: website
               id.token.claim: "true"
               access.token.claim: "true"
-              userinfo.token.claim: "true"
-          - name: middle name
+              claim.name: website
+              jsonType.label: String
+          - id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
+            name: profile
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: middleName
+              user.attribute: profile
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: middle_name
+              claim.name: profile
               jsonType.label: String
-          - name: gender
+          - id: 463f80df-1554-4f0b-889f-1e6f2308ba17
+            name: username
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: gender
+              user.attribute: username
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: gender
+              claim.name: preferred_username
               jsonType.label: String
-          - name: family name
+          - id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
+            name: given name
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: lastName
+              user.attribute: firstName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: family_name
+              claim.name: given_name
               jsonType.label: String
-          - name: updated at
+          - id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
+            name: zoneinfo
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: updatedAt
+              user.attribute: zoneinfo
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: updated_at
-              jsonType.label: long
-          - name: profile
+              claim.name: zoneinfo
+              jsonType.label: String
+          - id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
+            name: gender
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: profile
+              user.attribute: gender
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: profile
+              claim.name: gender
               jsonType.label: String
-          - name: locale
+          - id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
+            name: birthdate
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: locale
+              user.attribute: birthdate
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: locale
+              claim.name: birthdate
               jsonType.label: String
-          - name: nickname
+          - id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
+            name: middle name
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: nickname
+              user.attribute: middleName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: nickname
+              claim.name: middle_name
               jsonType.label: String
-      - name: email
+      - id: 45e1900d-2199-45fc-9028-a39497a6cdd5
+        name: email
         description: 'OpenID Connect built-in scope: email'
         protocol: openid-connect
         attributes:
@@ -365,7 +870,8 @@ spec:
           display.on.consent.screen: "true"
           consent.screen.text: ${emailScopeConsentText}
         protocolMappers:
-          - name: email
+          - id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
+            name: email
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
@@ -376,7 +882,8 @@ spec:
               access.token.claim: "true"
               claim.name: email
               jsonType.label: String
-          - name: email verified
+          - id: 26f0791c-93cf-4241-9c92-5528e67b9817
+            name: email verified
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
@@ -387,13 +894,529 @@ spec:
               access.token.claim: "true"
               claim.name: email_verified
               jsonType.label: boolean
-      - name: nameandterms
+      - id: ed5b578d-d48f-4023-bc23-892a76d018df
+        name: roles
+        description: OpenID Connect scope for add user roles to the access token
         protocol: openid-connect
-    displayName: Redhat External for HAC
-    enabled: true
-    id: hac-sso
+        attributes:
+          include.in.token.scope: "false"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${rolesScopeConsentText}
+        protocolMappers:
+          - id: 569264db-b779-49c9-a9b0-cfa0f8c249db
+            name: audience resolve
+            protocol: openid-connect
+            protocolMapper: oidc-audience-resolve-mapper
+            consentRequired: false
+            config: {}
+          - id: 6d2e188f-4022-474e-84ad-19a84e054fc5
+            name: realm roles
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-realm-role-mapper
+            consentRequired: false
+            config:
+              user.attribute: foo
+              access.token.claim: "true"
+              claim.name: realm_access.roles
+              jsonType.label: String
+              multivalued: "true"
+          - id: f7b77092-577d-4492-b803-a3cdf2a436fe
+            name: client roles
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-client-role-mapper
+            consentRequired: false
+            config:
+              user.attribute: foo
+              access.token.claim: "true"
+              claim.name: resource_access.${client_id}.roles
+              jsonType.label: String
+              multivalued: "true"
+      - id: b2240814-1831-48d1-9682-7eb5231bbc76
+        name: acr
+        description: OpenID Connect scope for add acr (authentication context class reference) to the token
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "false"
+          display.on.consent.screen: "false"
+        protocolMappers:
+          - id: bc946f16-8378-4edc-9137-f5d5db96da88
+            name: acr loa level
+            protocol: openid-connect
+            protocolMapper: oidc-acr-mapper
+            consentRequired: false
+            config:
+              id.token.claim: "true"
+              access.token.claim: "true"
+      - id: 47f93745-58c6-4f19-9ef4-768cd6df7ab7
+        name: microprofile-jwt
+        description: Microprofile - JWT built-in scope
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "false"
+        protocolMappers:
+          - id: ca164b36-12dc-47fc-b0e6-e40949a5042e
+            name: upn
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: username
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: upn
+              jsonType.label: String
+          - id: 4314b495-934a-4948-b9ae-fc9c17354cf0
+            name: groups
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-realm-role-mapper
+            consentRequired: false
+            config:
+              multivalued: "true"
+              user.attribute: foo
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: groups
+              jsonType.label: String
+      - id: 710757d5-c717-44de-ad25-2133cf75b0a6
+        name: nameandterms
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+      - id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
+        name: address
+        description: 'OpenID Connect built-in scope: address'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${addressScopeConsentText}
+        protocolMappers:
+          - id: 8bf14f81-76b3-4970-9993-a270b52ae28a
+            name: address
+            protocol: openid-connect
+            protocolMapper: oidc-address-mapper
+            consentRequired: false
+            config:
+              user.attribute.formatted: formatted
+              user.attribute.country: country
+              user.attribute.postal_code: postal_code
+              userinfo.token.claim: "true"
+              user.attribute.street: street
+              id.token.claim: "true"
+              user.attribute.region: region
+              access.token.claim: "true"
+              user.attribute.locality: locality
+    defaultDefaultClientScopes:
+      - role_list
+      - profile
+      - email
+      - roles
+      - web-origins
+      - acr
+    smtpServer: {}
     loginTheme: rh-sso
-    realm: redhat-external
+    eventsEnabled: false
+    eventsListeners:
+      - jboss-logging
+    enabledEventTypes: []
+    adminEventsEnabled: false
+    adminEventsDetailsEnabled: false
+    identityProviders: []
+    identityProviderMappers: []
+    internationalizationEnabled: false
+    supportedLocales: []
+    authenticationFlows:
+      - id: e7eb3ebc-fb97-4223-ad80-592fc5fce191
+        alias: Account verification options
+        description: Method with which to verity the existing account
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-email-verification
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 20
+            flowAlias: Verify Existing Account by Re-authentication
+            userSetupAllowed: false
+      - id: 1198e723-0fc8-4378-adcb-5111b25ac8e0
+        alias: Authentication Options
+        description: Authentication options.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: basic-auth
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: basic-auth-otp
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: auth-spnego
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 30
+            userSetupAllowed: false
+      - id: 17b80820-8c58-48b4-abd7-3d5a75a501ca
+        alias: Browser - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-otp-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 87917dac-6623-4091-a031-f669c00727a0
+        alias: Direct Grant - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: direct-grant-validate-otp
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: c3e67dde-8f8c-4ad7-a901-48dc2f136e62
+        alias: First broker login - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-otp-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 1c4a841c-8127-42c8-92b1-70ce02485b23
+        alias: Handle Existing Account
+        description: Handle what to do if there is existing account with same email/username like authenticated identity provider
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-confirm-link
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: Account verification options
+            userSetupAllowed: false
+      - id: 55164d9f-4366-464c-88d2-90bfd2261711
+        alias: Reset - Conditional OTP
+        description: Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: reset-otp
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 7a328721-4ecf-4195-b3eb-d43710806436
+        alias: User creation or linking
+        description: Flow for the existing/non-existing user alternatives
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticatorConfig: create unique user config
+            authenticator: idp-create-user-if-unique
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 20
+            flowAlias: Handle Existing Account
+            userSetupAllowed: false
+      - id: aa99db6e-a68c-41a6-a1b0-ceeb05835033
+        alias: Verify Existing Account by Re-authentication
+        description: Reauthentication of existing account
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-username-password-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 20
+            flowAlias: First broker login - Conditional OTP
+            userSetupAllowed: false
+      - id: fb06241d-d1fd-4cd0-8e25-a2e7c526d5ed
+        alias: browser
+        description: browser based authentication
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: auth-cookie
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-spnego
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: identity-provider-redirector
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 25
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 30
+            flowAlias: forms
+            userSetupAllowed: false
+      - id: e845c181-be95-4661-bf17-ad8930302e2d
+        alias: clients
+        description: Base authentication for clients
+        providerId: client-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: client-secret
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: client-jwt
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: client-secret-jwt
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 30
+            userSetupAllowed: false
+          - authenticator: client-x509
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 40
+            userSetupAllowed: false
+      - id: 4be61b3e-bed6-4641-b0b3-2745f67e2d3f
+        alias: direct grant
+        description: OpenID Connect Resource Owner Grant
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: direct-grant-validate-username
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: direct-grant-validate-password
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 30
+            flowAlias: Direct Grant - Conditional OTP
+            userSetupAllowed: false
+      - id: f5aa97fe-9f57-4358-bcff-99259d556744
+        alias: docker auth
+        description: Used by Docker clients to authenticate against the IDP
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: docker-http-basic-authenticator
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+      - id: 4cac59c3-abc3-461f-9c98-0af10402304f
+        alias: first broker login
+        description: Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticatorConfig: review profile config
+            authenticator: idp-review-profile
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: User creation or linking
+            userSetupAllowed: false
+      - id: 3dee6aae-172e-44ee-8d20-13f1f757ab0a
+        alias: forms
+        description: Username, password, otp and other auth forms.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: auth-username-password-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 20
+            flowAlias: Browser - Conditional OTP
+            userSetupAllowed: false
+      - id: 4e344966-4bca-47ac-a450-3251f9cf16db
+        alias: http challenge
+        description: An authentication flow based on challenge-response HTTP Authentication Schemes
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: no-cookie-redirect
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: Authentication Options
+            userSetupAllowed: false
+      - id: dc323cc9-6e1c-4653-8509-9ae6f62bb54e
+        alias: registration
+        description: registration flow
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: registration-page-form
+            authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 10
+            flowAlias: registration form
+            userSetupAllowed: false
+      - id: 73bdf37c-12fa-4c48-89bf-aa28139e7bb1
+        alias: registration form
+        description: registration form
+        providerId: form-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: registration-user-creation
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: registration-profile-action
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 40
+            userSetupAllowed: false
+          - authenticator: registration-password-action
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 50
+            userSetupAllowed: false
+          - authenticator: registration-recaptcha-action
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 60
+            userSetupAllowed: false
+      - id: 6ac53ea6-30f4-4b40-b2a8-85a91514a24f
+        alias: reset credentials
+        description: Reset credentials for a user if they forgot their password or something
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: reset-credentials-choose-user
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: reset-credential-email
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: reset-password
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 30
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 40
+            flowAlias: Reset - Conditional OTP
+            userSetupAllowed: false
+      - id: 1eae4e92-51ce-49c9-85d7-aaf4d1f437ee
+        alias: saml ecp
+        description: SAML ECP Profile Authentication Flow
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: http-basic-authenticator
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+    authenticatorConfig:
+      - id: 651040d9-3852-4081-8cb3-665474382f87
+        alias: create unique user config
+        config:
+          require.password.update.after.registration: "false"
+      - id: a03358ad-6f70-4eb9-a1fa-bea18fb856f3
+        alias: review profile config
+        config:
+          update.profile.on.first.login: missing
+    userManagedAccessAllowed: false
     users:
       - credentials:
           - type: password 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1575 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/dev-sso/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/dev-sso/kustomize.out
26,426d25
<     accessTokenLifespanForImplicitFlow: 900
<     adminEventsDetailsEnabled: false
<     adminEventsEnabled: false
<     authenticationFlows:
<     - alias: Account verification options
<       authenticationExecutions:
<       - authenticator: idp-email-verification
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Verify Existing Account by Re-authentication
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Method with which to verity the existing account
<       id: e7eb3ebc-fb97-4223-ad80-592fc5fce191
<       providerId: basic-flow
<       topLevel: false
<     - alias: Authentication Options
<       authenticationExecutions:
<       - authenticator: basic-auth
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: basic-auth-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: DISABLED
<         userSetupAllowed: false
<       - authenticator: auth-spnego
<         authenticatorFlow: false
<         priority: 30
<         requirement: DISABLED
<         userSetupAllowed: false
<       builtIn: true
<       description: Authentication options.
<       id: 1198e723-0fc8-4378-adcb-5111b25ac8e0
<       providerId: basic-flow
<       topLevel: false
<     - alias: Browser - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: auth-otp-form
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: 17b80820-8c58-48b4-abd7-3d5a75a501ca
<       providerId: basic-flow
<       topLevel: false
<     - alias: Direct Grant - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: direct-grant-validate-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: 87917dac-6623-4091-a031-f669c00727a0
<       providerId: basic-flow
<       topLevel: false
<     - alias: First broker login - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: auth-otp-form
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: c3e67dde-8f8c-4ad7-a901-48dc2f136e62
<       providerId: basic-flow
<       topLevel: false
<     - alias: Handle Existing Account
<       authenticationExecutions:
<       - authenticator: idp-confirm-link
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Account verification options
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Handle what to do if there is existing account with same email/username
<         like authenticated identity provider
<       id: 1c4a841c-8127-42c8-92b1-70ce02485b23
<       providerId: basic-flow
<       topLevel: false
<     - alias: Reset - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP should be reset or not. Set to REQUIRED
<         to force.
<       id: 55164d9f-4366-464c-88d2-90bfd2261711
<       providerId: basic-flow
<       topLevel: false
<     - alias: User creation or linking
<       authenticationExecutions:
<       - authenticator: idp-create-user-if-unique
<         authenticatorConfig: create unique user config
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Handle Existing Account
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow for the existing/non-existing user alternatives
<       id: 7a328721-4ecf-4195-b3eb-d43710806436
<       providerId: basic-flow
<       topLevel: false
<     - alias: Verify Existing Account by Re-authentication
<       authenticationExecutions:
<       - authenticator: idp-username-password-form
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: First broker login - Conditional OTP
<         priority: 20
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Reauthentication of existing account
<       id: aa99db6e-a68c-41a6-a1b0-ceeb05835033
<       providerId: basic-flow
<       topLevel: false
<     - alias: browser
<       authenticationExecutions:
<       - authenticator: auth-cookie
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: auth-spnego
<         authenticatorFlow: false
<         priority: 20
<         requirement: DISABLED
<         userSetupAllowed: false
<       - authenticator: identity-provider-redirector
<         authenticatorFlow: false
<         priority: 25
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: forms
<         priority: 30
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: browser based authentication
<       id: fb06241d-d1fd-4cd0-8e25-a2e7c526d5ed
<       providerId: basic-flow
<       topLevel: true
<     - alias: clients
<       authenticationExecutions:
<       - authenticator: client-secret
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-jwt
<         authenticatorFlow: false
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-secret-jwt
<         authenticatorFlow: false
<         priority: 30
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-x509
<         authenticatorFlow: false
<         priority: 40
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Base authentication for clients
<       id: e845c181-be95-4661-bf17-ad8930302e2d
<       providerId: client-flow
<       topLevel: true
<     - alias: direct grant
<       authenticationExecutions:
<       - authenticator: direct-grant-validate-username
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: direct-grant-validate-password
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Direct Grant - Conditional OTP
<         priority: 30
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: OpenID Connect Resource Owner Grant
<       id: 4be61b3e-bed6-4641-b0b3-2745f67e2d3f
<       providerId: basic-flow
<       topLevel: true
<     - alias: docker auth
<       authenticationExecutions:
<       - authenticator: docker-http-basic-authenticator
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Used by Docker clients to authenticate against the IDP
<       id: f5aa97fe-9f57-4358-bcff-99259d556744
<       providerId: basic-flow
<       topLevel: true
<     - alias: first broker login
<       authenticationExecutions:
<       - authenticator: idp-review-profile
<         authenticatorConfig: review profile config
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: User creation or linking
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Actions taken after first broker login with identity provider account,
<         which is not yet linked to any Keycloak account
<       id: 4cac59c3-abc3-461f-9c98-0af10402304f
<       providerId: basic-flow
<       topLevel: true
<     - alias: forms
<       authenticationExecutions:
<       - authenticator: auth-username-password-form
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Browser - Conditional OTP
<         priority: 20
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Username, password, otp and other auth forms.
<       id: 3dee6aae-172e-44ee-8d20-13f1f757ab0a
<       providerId: basic-flow
<       topLevel: false
<     - alias: http challenge
<       authenticationExecutions:
<       - authenticator: no-cookie-redirect
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Authentication Options
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: An authentication flow based on challenge-response HTTP Authentication
<         Schemes
<       id: 4e344966-4bca-47ac-a450-3251f9cf16db
<       providerId: basic-flow
<       topLevel: true
<     - alias: registration
<       authenticationExecutions:
<       - authenticator: registration-page-form
<         authenticatorFlow: true
<         flowAlias: registration form
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: registration flow
<       id: dc323cc9-6e1c-4653-8509-9ae6f62bb54e
<       providerId: basic-flow
<       topLevel: true
<     - alias: registration form
<       authenticationExecutions:
<       - authenticator: registration-user-creation
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-profile-action
<         authenticatorFlow: false
<         priority: 40
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-password-action
<         authenticatorFlow: false
<         priority: 50
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-recaptcha-action
<         authenticatorFlow: false
<         priority: 60
<         requirement: DISABLED
<         userSetupAllowed: false
<       builtIn: true
<       description: registration form
<       id: 73bdf37c-12fa-4c48-89bf-aa28139e7bb1
<       providerId: form-flow
<       topLevel: false
<     - alias: reset credentials
<       authenticationExecutions:
<       - authenticator: reset-credentials-choose-user
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-credential-email
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-password
<         authenticatorFlow: false
<         priority: 30
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Reset - Conditional OTP
<         priority: 40
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Reset credentials for a user if they forgot their password or something
<       id: 6ac53ea6-30f4-4b40-b2a8-85a91514a24f
<       providerId: basic-flow
<       topLevel: true
<     - alias: saml ecp
<       authenticationExecutions:
<       - authenticator: http-basic-authenticator
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: SAML ECP Profile Authentication Flow
<       id: 1eae4e92-51ce-49c9-85d7-aaf4d1f437ee
<       providerId: basic-flow
<       topLevel: true
<     authenticatorConfig:
<     - alias: create unique user config
<       config:
<         require.password.update.after.registration: "false"
<       id: 651040d9-3852-4081-8cb3-665474382f87
<     - alias: review profile config
<       config:
<         update.profile.on.first.login: missing
<       id: a03358ad-6f70-4eb9-a1fa-bea18fb856f3
<     bruteForceProtected: false
<     clientScopeMappings:
<       account:
<       - client: account-console
<         roles:
<         - manage-account
429,436c28,32
<         consent.screen.text: ""
<         display.on.consent.screen: "false"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add allowed web origins to the access
<         token
<       id: 2e00768f-fe3c-48d8-92bf-35afbbcc30c0
<       name: web-origins
<       protocol: openid-connect
---
>         consent.screen.text: ${samlRoleListScopeConsentText}
>         display.on.consent.screen: "true"
>       description: SAML role list
>       name: role_list
>       protocol: saml
438c34,37
<       - config: {}
---
>       - config:
>           attribute.name: Role
>           attribute.nameformat: Basic
>           single: "false"
440,443c39,41
<         id: d54340bc-16f0-45a4-9464-436ef7583a81
<         name: allowed web origins
<         protocol: openid-connect
<         protocolMapper: oidc-allowed-origins-mapper
---
>         name: role list
>         protocol: saml
>         protocolMapper: saml-role-list-mapper
449d46
<       id: 172816fd-8450-4e82-b33a-89f9181373a4
455c52
<           claim.name: phone_number
---
>           claim.name: phone_number_verified
457,458c54,55
<           jsonType.label: String
<           user.attribute: phoneNumber
---
>           jsonType.label: boolean
>           user.attribute: phoneNumberVerified
461,462c58
<         id: 02c09b15-1210-4a6c-b6e4-c2452031712a
<         name: phone number
---
>         name: phone number verified
467c63
<           claim.name: phone_number_verified
---
>           claim.name: phone_number
469,470c65,66
<           jsonType.label: boolean
<           user.attribute: phoneNumberVerified
---
>           jsonType.label: String
>           user.attribute: phoneNumber
473,474c69
<         id: 6a96110b-3a23-48cd-8d90-cefa6228e5e1
<         name: phone number verified
---
>         name: phone number
478c73
<         consent.screen.text: ${samlRoleListScopeConsentText}
---
>         consent.screen.text: ${rolesScopeConsentText}
480,483c75,78
<       description: SAML role list
<       id: c7d788d8-5836-4500-b4a9-083c2f6c2960
<       name: role_list
<       protocol: saml
---
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add user roles to the access token
>       name: roles
>       protocol: openid-connect
486,488c81,85
<           attribute.name: Role
<           attribute.nameformat: Basic
<           single: "false"
---
>           access.token.claim: "true"
>           claim.name: realm_access.roles
>           jsonType.label: String
>           multivalued: "true"
>           user.attribute: foo
490,493c87,135
<         id: a70dad06-f7a0-4c3d-8c08-cf440c7918da
<         name: role list
<         protocol: saml
<         protocolMapper: saml-role-list-mapper
---
>         name: realm roles
>         protocol: openid-connect
>         protocolMapper: oidc-usermodel-realm-role-mapper
>       - config:
>           access.token.claim: "true"
>           claim.name: resource_access.${client_id}.roles
>           jsonType.label: String
>           multivalued: "true"
>           user.attribute: foo
>         consentRequired: false
>         name: client roles
>         protocol: openid-connect
>         protocolMapper: oidc-usermodel-client-role-mapper
>       - config: {}
>         consentRequired: false
>         name: audience resolve
>         protocol: openid-connect
>         protocolMapper: oidc-audience-resolve-mapper
>     - attributes:
>         display.on.consent.screen: "false"
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add acr (authentication context class
>         reference) to the token
>       name: acr
>       protocol: openid-connect
>       protocolMappers:
>       - config:
>           access.token.claim: "true"
>           id.token.claim: "true"
>         consentRequired: false
>         id: 88d57217-59f6-4ec7-ae36-9d2a003dc512
>         name: acr loa level
>         protocol: openid-connect
>         protocolMapper: oidc-acr-mapper
>     - attributes:
>         consent.screen.text: ""
>         display.on.consent.screen: "false"
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add allowed web origins to the access
>         token
>       name: web-origins
>       protocol: openid-connect
>       protocolMappers:
>       - config: {}
>         consentRequired: false
>         id: f57e7fed-4377-43e1-a2fa-0ef938735371
>         name: allowed web origins
>         protocol: openid-connect
>         protocolMapper: oidc-allowed-origins-mapper
498d139
<       id: 656d7d46-bcd6-4b5a-bcfa-20ad0f13e9fe
502,503c143
<         consent.screen.text: ${profileScopeConsentText}
<         display.on.consent.screen: "true"
---
>         display.on.consent.screen: "false"
505,507c145,146
<       description: 'OpenID Connect built-in scope: profile'
<       id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
<       name: profile
---
>       description: Microprofile - JWT built-in scope
>       name: microprofile-jwt
512c151
<           claim.name: locale
---
>           claim.name: groups
515,516c154,155
<           user.attribute: locale
<           userinfo.token.claim: "true"
---
>           multivalued: "true"
>           user.attribute: foo
518,519c157
<         id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
<         name: locale
---
>         name: groups
521c159
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-realm-role-mapper
523a162
>           claim.name: upn
524a164,165
>           jsonType.label: String
>           user.attribute: username
527,528c168
<         id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
<         name: full name
---
>         name: upn
530c170,178
<         protocolMapper: oidc-full-name-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
>     - attributes:
>         consent.screen.text: ${addressScopeConsentText}
>         display.on.consent.screen: "true"
>         include.in.token.scope: "true"
>       description: 'OpenID Connect built-in scope: address'
>       name: address
>       protocol: openid-connect
>       protocolMappers:
533d180
<           claim.name: family_name
535,536c182,187
<           jsonType.label: String
<           user.attribute: lastName
---
>           user.attribute.country: country
>           user.attribute.formatted: formatted
>           user.attribute.locality: locality
>           user.attribute.postal_code: postal_code
>           user.attribute.region: region
>           user.attribute.street: street
539,540c190,191
<         id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
<         name: family name
---
>         id: 211470af-2420-4127-a5b7-e38d3f50920a
>         name: address
542c193,201
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-address-mapper
>     - attributes:
>         consent.screen.text: ${profileScopeConsentText}
>         display.on.consent.screen: "true"
>         include.in.token.scope: "true"
>       description: 'OpenID Connect built-in scope: profile'
>       name: profile
>       protocol: openid-connect
>       protocolMappers:
545c204
<           claim.name: updated_at
---
>           claim.name: picture
547,548c206,207
<           jsonType.label: long
<           user.attribute: updatedAt
---
>           jsonType.label: String
>           user.attribute: picture
551,552c210
<         id: 71c6caff-3f17-47db-8dc1-42f9af01832e
<         name: updated at
---
>         name: picture
557c215
<           claim.name: picture
---
>           claim.name: zoneinfo
560c218
<           user.attribute: picture
---
>           user.attribute: zoneinfo
563,564c221
<         id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
<         name: picture
---
>         name: zoneinfo
569c226
<           claim.name: nickname
---
>           claim.name: birthdate
572c229
<           user.attribute: nickname
---
>           user.attribute: birthdate
575,576c232
<         id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
<         name: nickname
---
>         name: birthdate
581c237
<           claim.name: website
---
>           claim.name: given_name
584c240
<           user.attribute: website
---
>           user.attribute: firstName
587,588c243
<         id: f8167604-073d-47ea-9fd1-6ec754ce5c49
<         name: website
---
>         name: given name
590c245
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
593c248
<           claim.name: profile
---
>           claim.name: website
596c251
<           user.attribute: profile
---
>           user.attribute: website
599,600c254
<         id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
<         name: profile
---
>         name: website
611d264
<         id: 463f80df-1554-4f0b-889f-1e6f2308ba17
617d269
<           claim.name: given_name
619,620d270
<           jsonType.label: String
<           user.attribute: firstName
623,624c273
<         id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
<         name: given name
---
>         name: full name
626c275
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-full-name-mapper
629c278
<           claim.name: zoneinfo
---
>           claim.name: middle_name
632c281
<           user.attribute: zoneinfo
---
>           user.attribute: middleName
635,636c284
<         id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
<         name: zoneinfo
---
>         name: middle name
647d294
<         id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
653c300
<           claim.name: birthdate
---
>           claim.name: family_name
656c303
<           user.attribute: birthdate
---
>           user.attribute: lastName
659,660c306
<         id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
<         name: birthdate
---
>         name: family name
662c308
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
665c311
<           claim.name: middle_name
---
>           claim.name: updated_at
667,668c313,314
<           jsonType.label: String
<           user.attribute: middleName
---
>           jsonType.label: long
>           user.attribute: updatedAt
671,672c317
<         id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
<         name: middle name
---
>         name: updated at
675,683d319
<     - attributes:
<         consent.screen.text: ${emailScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: email'
<       id: 45e1900d-2199-45fc-9028-a39497a6cdd5
<       name: email
<       protocol: openid-connect
<       protocolMappers:
686c322
<           claim.name: email
---
>           claim.name: profile
689c325
<           user.attribute: email
---
>           user.attribute: profile
692,693c328
<         id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
<         name: email
---
>         name: profile
695c330
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-usermodel-attribute-mapper
698c333
<           claim.name: email_verified
---
>           claim.name: locale
700,725d334
<           jsonType.label: boolean
<           user.attribute: emailVerified
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 26f0791c-93cf-4241-9c92-5528e67b9817
<         name: email verified
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<     - attributes:
<         consent.screen.text: ${rolesScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add user roles to the access token
<       id: ed5b578d-d48f-4023-bc23-892a76d018df
<       name: roles
<       protocol: openid-connect
<       protocolMappers:
<       - config: {}
<         consentRequired: false
<         id: 569264db-b779-49c9-a9b0-cfa0f8c249db
<         name: audience resolve
<         protocol: openid-connect
<         protocolMapper: oidc-audience-resolve-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: realm_access.roles
727,739c336,337
<           multivalued: "true"
<           user.attribute: foo
<         consentRequired: false
<         id: 6d2e188f-4022-474e-84ad-19a84e054fc5
<         name: realm roles
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-realm-role-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: resource_access.${client_id}.roles
<           jsonType.label: String
<           multivalued: "true"
<           user.attribute: foo
---
>           user.attribute: locale
>           userinfo.token.claim: "true"
741,742c339
<         id: f7b77092-577d-4492-b803-a3cdf2a436fe
<         name: client roles
---
>         name: locale
744,753c341
<         protocolMapper: oidc-usermodel-client-role-mapper
<     - attributes:
<         display.on.consent.screen: "false"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add acr (authentication context class
<         reference) to the token
<       id: b2240814-1831-48d1-9682-7eb5231bbc76
<       name: acr
<       protocol: openid-connect
<       protocolMappers:
---
>         protocolMapper: oidc-usermodel-attribute-mapper
755a344
>           claim.name: nickname
756a346,348
>           jsonType.label: String
>           user.attribute: nickname
>           userinfo.token.claim: "true"
758,759c350
<         id: bc946f16-8378-4edc-9137-f5d5db96da88
<         name: acr loa level
---
>         name: nickname
761c352
<         protocolMapper: oidc-acr-mapper
---
>         protocolMapper: oidc-usermodel-attribute-mapper
763c354,355
<         display.on.consent.screen: "false"
---
>         consent.screen.text: ${emailScopeConsentText}
>         display.on.consent.screen: "true"
765,767c357,358
<       description: Microprofile - JWT built-in scope
<       id: 47f93745-58c6-4f19-9ef4-768cd6df7ab7
<       name: microprofile-jwt
---
>       description: 'OpenID Connect built-in scope: email'
>       name: email
772c363
<           claim.name: upn
---
>           claim.name: email
775c366
<           user.attribute: username
---
>           user.attribute: email
778,779c369
<         id: ca164b36-12dc-47fc-b0e6-e40949a5042e
<         name: upn
---
>         name: email
784,810c374
<           claim.name: groups
<           id.token.claim: "true"
<           jsonType.label: String
<           multivalued: "true"
<           user.attribute: foo
<         consentRequired: false
<         id: 4314b495-934a-4948-b9ae-fc9c17354cf0
<         name: groups
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-realm-role-mapper
<     - attributes:
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 710757d5-c717-44de-ad25-2133cf75b0a6
<       name: nameandterms
<       protocol: openid-connect
<     - attributes:
<         consent.screen.text: ${addressScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: address'
<       id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
<       name: address
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
---
>           claim.name: email_verified
812,817c376,377
<           user.attribute.country: country
<           user.attribute.formatted: formatted
<           user.attribute.locality: locality
<           user.attribute.postal_code: postal_code
<           user.attribute.region: region
<           user.attribute.street: street
---
>           jsonType.label: boolean
>           user.attribute: emailVerified
820,821c380
<         id: 8bf14f81-76b3-4970-9993-a270b52ae28a
<         name: address
---
>         name: email verified
823c382,384
<         protocolMapper: oidc-address-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
>     - name: nameandterms
>       protocol: openid-connect
825,831c386
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /realms/redhat-external/account/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: account
<       consentRequired: false
---
>     - clientId: cloud-services
833,836c388
<       - web-origins
<       - acr
<       - profile
<       - roles
---
>       - nameandterms
838,871d389
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<       implicitFlowEnabled: false
<       name: ${client_account}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: true
<       redirectUris:
<       - /realms/redhat-external/account/*
<       rootUrl: ${authBaseUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         pkce.code.challenge.method: S256
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /realms/redhat-external/account/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: account-console
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
874,911d391
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 664b265b-5730-4e51-aee1-fa1aa9427323
<       implicitFlowEnabled: false
<       name: ${client_account-console}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       protocolMappers:
<       - config: {}
<         consentRequired: false
<         id: fab196f4-8200-41eb-8d63-173256763e71
<         name: audience resolve
<         protocol: openid-connect
<         protocolMapper: oidc-audience-resolve-mapper
<       publicClient: true
<       redirectUris:
<       - /realms/redhat-external/account/*
<       rootUrl: ${authBaseUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: admin-cli
<       consentRequired: false
<       defaultClientScopes:
913,916d392
<       - acr
<       - profile
<       - roles
<       - email
919,921d394
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 617194f2-e0ff-4ee1-9fb1-15bed4fa4a77
923,925c396
<       name: ${client_admin-cli}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
---
>       name: cloud-services
928,929d398
<       - phone
<       - offline_access
931,961d399
<       protocol: openid-connect
<       publicClient: true
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: false
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: true
<       clientAuthenticatorType: client-secret
<       clientId: broker
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 6dec4db5-3920-4e47-b671-e7cfeb915e96
<       implicitFlowEnabled: false
<       name: ${client_broker}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
963,1020d400
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: false
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         acr.loa.map: '{}'
<         backchannel.logout.revoke.offline.tokens: "false"
<         backchannel.logout.session.required: "true"
<         client_credentials.use_refresh_token: "false"
<         display.on.consent.screen: "false"
<         exclude.session.state.from.auth.response: "false"
<         frontchannel.logout.session.required: "false"
<         id.token.as.detached.signature: "false"
<         oauth2.device.authorization.grant.enabled: "false"
<         oidc.ciba.grant.enabled: "false"
<         require.pushed.authorization.requests: "false"
<         saml.allow.ecp.flow: "false"
<         saml.artifact.binding: "false"
<         saml.assertion.signature: "false"
<         saml.authnstatement: "false"
<         saml.client.signature: "false"
<         saml.encrypt: "false"
<         saml.force.post.binding: "false"
<         saml.multivalued.roles: "false"
<         saml.onetimeuse.condition: "false"
<         saml.server.signature: "false"
<         saml.server.signature.keyinfo.ext: "false"
<         saml_force_name_id_format: "false"
<         tls.client.certificate.bound.access.tokens: "false"
<         token.response.type.bearer.lower-case: "false"
<         use.refresh.tokens: "true"
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: cloud-services
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - nameandterms
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: true
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: true
<       id: 9a5018a7-5f92-40c9-b8f1-63f53bc32a68
<       implicitFlowEnabled: false
<       name: cloud-services
<       nodeReRegistrationTimeout: -1
<       notBefore: 0
<       optionalClientScopes:
<       - address
1022,1023d401
<       - offline_access
<       - microprofile-jwt
1028d405
<       serviceAccountsEnabled: false
1030d406
<       surrogateAuthRequired: false
1033,1130d408
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: true
<       clientAuthenticatorType: client-secret
<       clientId: realm-management
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<       implicitFlowEnabled: false
<       name: ${client_realm-management}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: false
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         pkce.code.challenge.method: S256
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /admin/redhat-external/console/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: security-admin-console
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 50b949b2-3b56-4cc1-a8b6-90951a6ad9c6
<       implicitFlowEnabled: false
<       name: ${client_security-admin-console}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: locale
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: locale
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: f0d04249-2f8f-4069-8566-4f3aa35e7690
<         name: locale
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       publicClient: true
<       redirectUris:
<       - /admin/redhat-external/console/*
<       rootUrl: ${authAdminUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins:
<       - +
<     defaultDefaultClientScopes:
<     - role_list
<     - profile
<     - email
<     - roles
<     - web-origins
<     - acr
<     defaultRole:
<       clientRole: false
<       composite: true
<       containerId: hac-sso
<       description: ${role_default-roles}
<       id: a8d38f0f-7d83-41b7-8236-55998c531760
<       name: default-roles-redhat-external
1132,1133d409
<     duplicateEmailsAllowed: false
<     editUsernameAllowed: false
1135,1139d410
<     enabledEventTypes: []
<     eventsEnabled: false
<     eventsListeners:
<     - jboss-logging
<     failureFactor: 30
1141,1143d411
<     identityProviderMappers: []
<     identityProviders: []
<     internationalizationEnabled: false
1145,1159d412
<     loginWithEmailAllowed: true
<     maxDeltaTimeSeconds: 43200
<     maxFailureWaitSeconds: 900
<     minimumQuickLoginWaitSeconds: 60
<     otpPolicyAlgorithm: HmacSHA1
<     otpPolicyDigits: 6
<     otpPolicyInitialCounter: 0
<     otpPolicyLookAheadWindow: 1
<     otpPolicyPeriod: 30
<     otpPolicyType: totp
<     otpSupportedApplications:
<     - FreeOTP
<     - Google Authenticator
<     permanentLockout: false
<     quickLoginCheckMilliSeconds: 1000
1161,1438d413
<     registrationAllowed: false
<     registrationEmailAsUsername: false
<     rememberMe: false
<     resetPasswordAllowed: false
<     roles:
<       client:
<         account:
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               account:
<               - manage-account-links
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-account}
<           id: 62cc2451-60f3-4420-ab11-106280ea5127
<           name: manage-account
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_delete-account}
<           id: 8a7a5a05-e697-445e-8dee-122227311297
<           name: delete-account
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-consent}
<           id: aae2d09f-6aed-476e-93fa-68e0604bb6ac
<           name: view-consent
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-applications}
<           id: 79c590ab-dada-4ef0-bfa1-8c85d35e7d84
<           name: view-applications
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               account:
<               - view-consent
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-consent}
<           id: 7da35324-12d5-44e5-9c6a-9f1c1a2dccd0
<           name: manage-consent
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-account-links}
<           id: 09d2dc7b-e18e-49a5-ae06-0f01cfa876b8
<           name: manage-account-links
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-profile}
<           id: 3b5813d3-3ecb-489b-8bc8-38288b2c898a
<           name: view-profile
<         account-console: []
<         admin-cli: []
<         broker:
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 6dec4db5-3920-4e47-b671-e7cfeb915e96
<           description: ${role_read-token}
<           id: 9b3c893f-3860-46d7-82c6-4e6066380871
<           name: read-token
<         cloud-services: []
<         realm-management:
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-identity-providers}
<           id: 47a7732c-f371-4cc1-935d-1c517614eb74
<           name: manage-identity-providers
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-events}
<           id: 92dac8f6-33df-4375-8d47-302065b0c47c
<           name: view-events
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - query-groups
<               - query-users
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-users}
<           id: c5cd8e35-13cf-4d17-9002-33bc7049ed49
<           name: view-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-authorization}
<           id: d7d79f8e-a86a-4437-9ef6-c27b086ff005
<           name: manage-authorization
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - query-clients
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-clients}
<           id: 3b31e4a3-a4b9-404e-a416-e559f59a18d5
<           name: view-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_impersonation}
<           id: 8a5e47b0-f5cc-4f42-a4c0-7cf61107cfca
<           name: impersonation
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_create-client}
<           id: 5f7b54ef-f854-42f3-95bd-a9ea962fb629
<           name: create-client
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-clients}
<           id: 3b687d3d-8229-4fd5-8cdd-0aee6d4bf8ca
<           name: query-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-realm}
<           id: 6c5fce09-33e2-40b6-823e-dcf644fa6053
<           name: manage-realm
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-users}
<           id: afaf3f99-7750-4c6a-bca6-b35b26d2f8ff
<           name: query-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-clients}
<           id: 59cf3bbe-6c5a-4401-a996-9116d71d35f4
<           name: manage-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-users}
<           id: 03361fc0-ff06-4d09-ab1f-ab900fe4d57b
<           name: manage-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-groups}
<           id: b1b19c8d-fd64-4960-a409-dafc455d504e
<           name: query-groups
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - manage-identity-providers
<               - view-events
<               - view-users
<               - view-clients
<               - manage-authorization
<               - impersonation
<               - create-client
<               - query-clients
<               - manage-realm
<               - query-users
<               - manage-clients
<               - manage-users
<               - query-groups
<               - view-realm
<               - query-realms
<               - view-identity-providers
<               - view-authorization
<               - manage-events
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_realm-admin}
<           id: 3ea88ffd-28a4-423c-8fb4-f832f610b2dc
<           name: realm-admin
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-realm}
<           id: 71a4d66d-50bc-4ef3-8da8-36f31c7b6b3e
<           name: view-realm
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-realms}
<           id: ce2a40fc-5fd5-4735-b0dd-b5d707dd5ee2
<           name: query-realms
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-identity-providers}
<           id: e1403844-fc62-4522-8181-64a0395a9608
<           name: view-identity-providers
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-events}
<           id: 76acc1f2-7d2b-40f2-af4d-a3dff5403470
<           name: manage-events
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-authorization}
<           id: 1bab32ce-418a-4779-875a-aa550bc5720e
<           name: view-authorization
<         security-admin-console: []
<       realm:
<       - attributes: {}
<         clientRole: false
<         composite: true
<         composites:
<           client:
<             account:
<             - manage-account
<             - view-profile
<           realm:
<           - offline_access
<           - uma_authorization
<         containerId: hac-sso
<         description: ${role_default-roles}
<         id: a8d38f0f-7d83-41b7-8236-55998c531760
<         name: default-roles-redhat-external
<       - attributes: {}
<         clientRole: false
<         composite: false
<         containerId: hac-sso
<         description: ${role_uma_authorization}
<         id: 4c73ed54-7750-4045-9c3b-8f43b05b0cb4
<         name: uma_authorization
<       - attributes: {}
<         clientRole: false
<         composite: false
<         containerId: hac-sso
<         description: ${role_offline-access}
<         id: 18e6ca8a-034d-428a-a0f6-3e5824c74d67
<         name: offline_access
<     scopeMappings:
<     - clientScope: offline_access
<       roles:
<       - offline_access
<     smtpServer: {}
<     sslRequired: external
<     supportedLocales: []
<     userManagedAccessAllowed: false
1452,1453d426
<     verifyEmail: false
<     waitIncrementSeconds: 60
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 10:05:16 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:04:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 10:05:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:04:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Development changes from 575c8b1 to aa4d748 on Wed Mar 15 08:12:40 2023 </h3>  
 
<details> 
<summary>Git Diff (1605 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index c649254..8482994 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -7,126 +7,616 @@ spec:
     matchLabels:
       appstudio.redhat.com/keycloak: dev
   realm:
+    id: hac-sso
+    realm: redhat-external
+    displayName: Redhat External for HAC
     accessTokenLifespan: 7200
+    accessTokenLifespanForImplicitFlow: 900
+    enabled: true
+    sslRequired: external
+    registrationAllowed: false
+    registrationEmailAsUsername: false
+    rememberMe: false
+    verifyEmail: false
+    loginWithEmailAllowed: true
+    duplicateEmailsAllowed: false
+    resetPasswordAllowed: false
+    editUsernameAllowed: false
+    bruteForceProtected: false
+    permanentLockout: false
+    maxFailureWaitSeconds: 900
+    minimumQuickLoginWaitSeconds: 60
+    waitIncrementSeconds: 60
+    quickLoginCheckMilliSeconds: 1000
+    maxDeltaTimeSeconds: 43200
+    failureFactor: 30
+    roles:
+      realm:
+        - id: a8d38f0f-7d83-41b7-8236-55998c531760
+          name: default-roles-redhat-external
+          description: ${role_default-roles}
+          composite: true
+          composites:
+            realm:
+              - offline_access
+              - uma_authorization
+            client:
+              account:
+                - manage-account
+                - view-profile
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+        - id: 4c73ed54-7750-4045-9c3b-8f43b05b0cb4
+          name: uma_authorization
+          description: ${role_uma_authorization}
+          composite: false
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+        - id: 18e6ca8a-034d-428a-a0f6-3e5824c74d67
+          name: offline_access
+          description: ${role_offline-access}
+          composite: false
+          clientRole: false
+          containerId: hac-sso
+          attributes: {}
+      client:
+        cloud-services: []
+        realm-management:
+          - id: 47a7732c-f371-4cc1-935d-1c517614eb74
+            name: manage-identity-providers
+            description: ${role_manage-identity-providers}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 92dac8f6-33df-4375-8d47-302065b0c47c
+            name: view-events
+            description: ${role_view-events}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: c5cd8e35-13cf-4d17-9002-33bc7049ed49
+            name: view-users
+            description: ${role_view-users}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - query-groups
+                  - query-users
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: d7d79f8e-a86a-4437-9ef6-c27b086ff005
+            name: manage-authorization
+            description: ${role_manage-authorization}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3b31e4a3-a4b9-404e-a416-e559f59a18d5
+            name: view-clients
+            description: ${role_view-clients}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - query-clients
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 8a5e47b0-f5cc-4f42-a4c0-7cf61107cfca
+            name: impersonation
+            description: ${role_impersonation}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 5f7b54ef-f854-42f3-95bd-a9ea962fb629
+            name: create-client
+            description: ${role_create-client}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3b687d3d-8229-4fd5-8cdd-0aee6d4bf8ca
+            name: query-clients
+            description: ${role_query-clients}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 6c5fce09-33e2-40b6-823e-dcf644fa6053
+            name: manage-realm
+            description: ${role_manage-realm}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: afaf3f99-7750-4c6a-bca6-b35b26d2f8ff
+            name: query-users
+            description: ${role_query-users}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 59cf3bbe-6c5a-4401-a996-9116d71d35f4
+            name: manage-clients
+            description: ${role_manage-clients}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 03361fc0-ff06-4d09-ab1f-ab900fe4d57b
+            name: manage-users
+            description: ${role_manage-users}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: b1b19c8d-fd64-4960-a409-dafc455d504e
+            name: query-groups
+            description: ${role_query-groups}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 3ea88ffd-28a4-423c-8fb4-f832f610b2dc
+            name: realm-admin
+            description: ${role_realm-admin}
+            composite: true
+            composites:
+              client:
+                realm-management:
+                  - manage-identity-providers
+                  - view-events
+                  - view-users
+                  - view-clients
+                  - manage-authorization
+                  - impersonation
+                  - create-client
+                  - query-clients
+                  - manage-realm
+                  - query-users
+                  - manage-clients
+                  - manage-users
+                  - query-groups
+                  - view-realm
+                  - query-realms
+                  - view-identity-providers
+                  - view-authorization
+                  - manage-events
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 71a4d66d-50bc-4ef3-8da8-36f31c7b6b3e
+            name: view-realm
+            description: ${role_view-realm}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: ce2a40fc-5fd5-4735-b0dd-b5d707dd5ee2
+            name: query-realms
+            description: ${role_query-realms}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: e1403844-fc62-4522-8181-64a0395a9608
+            name: view-identity-providers
+            description: ${role_view-identity-providers}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 76acc1f2-7d2b-40f2-af4d-a3dff5403470
+            name: manage-events
+            description: ${role_manage-events}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+          - id: 1bab32ce-418a-4779-875a-aa550bc5720e
+            name: view-authorization
+            description: ${role_view-authorization}
+            composite: false
+            clientRole: true
+            containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+            attributes: {}
+        security-admin-console: []
+        admin-cli: []
+        account-console: []
+        broker:
+          - id: 9b3c893f-3860-46d7-82c6-4e6066380871
+            name: read-token
+            description: ${role_read-token}
+            composite: false
+            clientRole: true
+            containerId: 6dec4db5-3920-4e47-b671-e7cfeb915e96
+            attributes: {}
+        account:
+          - id: 62cc2451-60f3-4420-ab11-106280ea5127
+            name: manage-account
+            description: ${role_manage-account}
+            composite: true
+            composites:
+              client:
+                account:
+                  - manage-account-links
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 8a7a5a05-e697-445e-8dee-122227311297
+            name: delete-account
+            description: ${role_delete-account}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: aae2d09f-6aed-476e-93fa-68e0604bb6ac
+            name: view-consent
+            description: ${role_view-consent}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 79c590ab-dada-4ef0-bfa1-8c85d35e7d84
+            name: view-applications
+            description: ${role_view-applications}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 7da35324-12d5-44e5-9c6a-9f1c1a2dccd0
+            name: manage-consent
+            description: ${role_manage-consent}
+            composite: true
+            composites:
+              client:
+                account:
+                  - view-consent
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 09d2dc7b-e18e-49a5-ae06-0f01cfa876b8
+            name: manage-account-links
+            description: ${role_manage-account-links}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+          - id: 3b5813d3-3ecb-489b-8bc8-38288b2c898a
+            name: view-profile
+            description: ${role_view-profile}
+            composite: false
+            clientRole: true
+            containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+            attributes: {}
+    defaultRole:
+      id: a8d38f0f-7d83-41b7-8236-55998c531760
+      name: default-roles-redhat-external
+      description: ${role_default-roles}
+      composite: true
+      clientRole: false
+      containerId: hac-sso
+    otpPolicyType: totp
+    otpPolicyAlgorithm: HmacSHA1
+    otpPolicyInitialCounter: 0
+    otpPolicyDigits: 6
+    otpPolicyLookAheadWindow: 1
+    otpPolicyPeriod: 30
+    otpSupportedApplications:
+      - FreeOTP
+      - Google Authenticator
+    scopeMappings:
+      - clientScope: offline_access
+        roles:
+          - offline_access
+    clientScopeMappings:
+      account:
+        - client: account-console
+          roles:
+            - manage-account
     clients:
-      - enabled: true
+      - id: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
+        clientId: account
+        name: ${client_account}
+        rootUrl: ${authBaseUrl}
+        baseUrl: /realms/redhat-external/account/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
         redirectUris:
-          - '*'
-        clientId: cloud-services
-        name: cloud-services
+          - /realms/redhat-external/account/*
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
         implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
         publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 664b265b-5730-4e51-aee1-fa1aa9427323
+        clientId: account-console
+        name: ${client_account-console}
+        rootUrl: ${authBaseUrl}
+        baseUrl: /realms/redhat-external/account/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - /realms/redhat-external/account/*
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
         standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes:
+          pkce.code.challenge.method: S256
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        protocolMappers:
+          - id: fab196f4-8200-41eb-8d63-173256763e71
+            name: audience resolve
+            protocol: openid-connect
+            protocolMapper: oidc-audience-resolve-mapper
+            consentRequired: false
+            config: {}
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 617194f2-e0ff-4ee1-9fb1-15bed4fa4a77
+        clientId: admin-cli
+        name: ${client_admin-cli}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: false
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: true
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
         protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 6dec4db5-3920-4e47-b671-e7cfeb915e96
+        clientId: broker
+        name: ${client_broker}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: true
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: false
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+      - id: 9a5018a7-5f92-40c9-b8f1-63f53bc32a68
+        clientId: cloud-services
+        name: cloud-services
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - '*'
         webOrigins:
           - '*'
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
         directAccessGrantsEnabled: true
-        defaultClientScopes: 
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes:
+          saml.force.post.binding: "false"
+          saml.multivalued.roles: "false"
+          frontchannel.logout.session.required: "false"
+          oauth2.device.authorization.grant.enabled: "false"
+          backchannel.logout.revoke.offline.tokens: "false"
+          saml.server.signature.keyinfo.ext: "false"
+          use.refresh.tokens: "true"
+          oidc.ciba.grant.enabled: "false"
+          backchannel.logout.session.required: "true"
+          client_credentials.use_refresh_token: "false"
+          require.pushed.authorization.requests: "false"
+          saml.client.signature: "false"
+          saml.allow.ecp.flow: "false"
+          id.token.as.detached.signature: "false"
+          saml.assertion.signature: "false"
+          saml.encrypt: "false"
+          saml.server.signature: "false"
+          exclude.session.state.from.auth.response: "false"
+          saml.artifact.binding: "false"
+          saml_force_name_id_format: "false"
+          acr.loa.map: '{}'
+          tls.client.certificate.bound.access.tokens: "false"
+          saml.authnstatement: "false"
+          display.on.consent.screen: "false"
+          token.response.type.bearer.lower-case: "false"
+          saml.onetimeuse.condition: "false"
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: true
+        nodeReRegistrationTimeout: -1
+        defaultClientScopes:
+          - web-origins
+          - acr
           - nameandterms
-          - email
           - profile
           - roles
-          - web-origins
+          - email
         optionalClientScopes:
           - address
-          - microprofile-jwt
+          - phone
           - offline_access
+          - microprofile-jwt
+      - id: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
+        clientId: realm-management
+        name: ${client_realm-management}
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris: []
+        webOrigins: []
+        notBefore: 0
+        bearerOnly: true
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: false
+        frontchannelLogout: false
+        protocol: openid-connect
+        attributes: {}
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
           - phone
-    clientScopes:
-      - name: role_list
-        description: SAML role list
-        protocol: saml
-        attributes:
-          consent.screen.text: ${samlRoleListScopeConsentText}
-          display.on.consent.screen: "true"
-        protocolMappers:
-          - name: role list
-            protocol: saml
-            protocolMapper: saml-role-list-mapper
-            consentRequired: false
-            config:
-              single: "false"
-              attribute.nameformat: Basic
-              attribute.name: Role
-      - name: phone
-        description: 'OpenID Connect built-in scope: phone'
+          - offline_access
+          - microprofile-jwt
+      - id: 50b949b2-3b56-4cc1-a8b6-90951a6ad9c6
+        clientId: security-admin-console
+        name: ${client_security-admin-console}
+        rootUrl: ${authAdminUrl}
+        baseUrl: /admin/redhat-external/console/
+        surrogateAuthRequired: false
+        enabled: true
+        clientAuthenticatorType: client-secret
+        redirectUris:
+          - /admin/redhat-external/console/*
+        webOrigins:
+          - +
+        notBefore: 0
+        bearerOnly: false
+        consentRequired: false
+        standardFlowEnabled: true
+        implicitFlowEnabled: false
+        directAccessGrantsEnabled: false
+        serviceAccountsEnabled: false
+        publicClient: true
+        frontchannelLogout: false
         protocol: openid-connect
         attributes:
-          include.in.token.scope: "true"
-          display.on.consent.screen: "true"
-          consent.screen.text: ${phoneScopeConsentText}
+          pkce.code.challenge.method: S256
+        authenticationFlowBindingOverrides: {}
+        fullScopeAllowed: false
+        nodeReRegistrationTimeout: 0
         protocolMappers:
-          - name: phone number verified
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
-            consentRequired: false
-            config:
-              userinfo.token.claim: "true"
-              user.attribute: phoneNumberVerified
-              id.token.claim: "true"
-              access.token.claim: "true"
-              claim.name: phone_number_verified
-              jsonType.label: boolean
-          - name: phone number
+          - id: f0d04249-2f8f-4069-8566-4f3aa35e7690
+            name: locale
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: phoneNumber
+              user.attribute: locale
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: phone_number
-              jsonType.label: String
-      - name: roles
-        description: OpenID Connect scope for add user roles to the access token
-        protocol: openid-connect
-        attributes:
-          include.in.token.scope: "false"
-          display.on.consent.screen: "true"
-          consent.screen.text: ${rolesScopeConsentText}
-        protocolMappers:
-          - name: realm roles
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-realm-role-mapper
-            consentRequired: false
-            config:
-              user.attribute: foo
-              access.token.claim: "true"
-              claim.name: realm_access.roles
-              jsonType.label: String
-              multivalued: "true"
-          - name: client roles
-            protocol: openid-connect
-            protocolMapper: oidc-usermodel-client-role-mapper
-            consentRequired: false
-            config:
-              user.attribute: foo
-              access.token.claim: "true"
-              claim.name: resource_access.${client_id}.roles
+              claim.name: locale
               jsonType.label: String
-              multivalued: "true"
-          - name: audience resolve
-            protocol: openid-connect
-            protocolMapper: oidc-audience-resolve-mapper
-            consentRequired: false
-            config: {}
-      - name: acr
-        description: OpenID Connect scope for add acr (authentication context class reference) to the token
-        protocol: openid-connect
-        attributes:
-          include.in.token.scope: "false"
-          display.on.consent.screen: "false"
-        protocolMappers:
-          - id: 88d57217-59f6-4ec7-ae36-9d2a003dc512
-            name: acr loa level
-            protocol: openid-connect
-            protocolMapper: oidc-acr-mapper
-            consentRequired: false
-            config:
-              id.token.claim: "true"
-              access.token.claim: "true"
-      - name: web-origins
+        defaultClientScopes:
+          - web-origins
+          - acr
+          - profile
+          - roles
+          - email
+        optionalClientScopes:
+          - address
+          - phone
+          - offline_access
+          - microprofile-jwt
+    clientScopes:
+      - id: 2e00768f-fe3c-48d8-92bf-35afbbcc30c0
+        name: web-origins
         description: OpenID Connect scope for add allowed web origins to the access token
         protocol: openid-connect
         attributes:
@@ -134,71 +624,71 @@ spec:
           display.on.consent.screen: "false"
           consent.screen.text: ""
         protocolMappers:
-          - id: f57e7fed-4377-43e1-a2fa-0ef938735371
+          - id: d54340bc-16f0-45a4-9464-436ef7583a81
             name: allowed web origins
             protocol: openid-connect
             protocolMapper: oidc-allowed-origins-mapper
             consentRequired: false
             config: {}
-      - name: offline_access
-        description: 'OpenID Connect built-in scope: offline_access'
-        protocol: openid-connect
-        attributes:
-          consent.screen.text: ${offlineAccessScopeConsentText}
-          display.on.consent.screen: "true"
-      - name: microprofile-jwt
-        description: Microprofile - JWT built-in scope
+      - id: 172816fd-8450-4e82-b33a-89f9181373a4
+        name: phone
+        description: 'OpenID Connect built-in scope: phone'
         protocol: openid-connect
         attributes:
           include.in.token.scope: "true"
-          display.on.consent.screen: "false"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${phoneScopeConsentText}
         protocolMappers:
-          - name: groups
+          - id: 02c09b15-1210-4a6c-b6e4-c2452031712a
+            name: phone number
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-realm-role-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
-              multivalued: "true"
-              user.attribute: foo
+              userinfo.token.claim: "true"
+              user.attribute: phoneNumber
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: groups
+              claim.name: phone_number
               jsonType.label: String
-          - name: upn
+          - id: 6a96110b-3a23-48cd-8d90-cefa6228e5e1
+            name: phone number verified
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: username
+              user.attribute: phoneNumberVerified
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: upn
-              jsonType.label: String
-      - name: address
-        description: 'OpenID Connect built-in scope: address'
-        protocol: openid-connect
+              claim.name: phone_number_verified
+              jsonType.label: boolean
+      - id: c7d788d8-5836-4500-b4a9-083c2f6c2960
+        name: role_list
+        description: SAML role list
+        protocol: saml
         attributes:
-          include.in.token.scope: "true"
+          consent.screen.text: ${samlRoleListScopeConsentText}
           display.on.consent.screen: "true"
-          consent.screen.text: ${addressScopeConsentText}
         protocolMappers:
-          - id: 211470af-2420-4127-a5b7-e38d3f50920a
-            name: address
-            protocol: openid-connect
-            protocolMapper: oidc-address-mapper
+          - id: a70dad06-f7a0-4c3d-8c08-cf440c7918da
+            name: role list
+            protocol: saml
+            protocolMapper: saml-role-list-mapper
             consentRequired: false
             config:
-              user.attribute.formatted: formatted
-              user.attribute.country: country
-              user.attribute.postal_code: postal_code
-              userinfo.token.claim: "true"
-              user.attribute.street: street
-              id.token.claim: "true"
-              user.attribute.region: region
-              access.token.claim: "true"
-              user.attribute.locality: locality
-      - name: profile
+              single: "false"
+              attribute.nameformat: Basic
+              attribute.name: Role
+      - id: 656d7d46-bcd6-4b5a-bcfa-20ad0f13e9fe
+        name: offline_access
+        description: 'OpenID Connect built-in scope: offline_access'
+        protocol: openid-connect
+        attributes:
+          consent.screen.text: ${offlineAccessScopeConsentText}
+          display.on.consent.screen: "true"
+      - id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
+        name: profile
         description: 'OpenID Connect built-in scope: profile'
         protocol: openid-connect
         attributes:
@@ -206,158 +696,173 @@ spec:
           display.on.consent.screen: "true"
           consent.screen.text: ${profileScopeConsentText}
         protocolMappers:
-          - name: picture
+          - id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
+            name: locale
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: picture
+              user.attribute: locale
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: picture
+              claim.name: locale
               jsonType.label: String
-          - name: zoneinfo
+          - id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
+            name: full name
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-full-name-mapper
             consentRequired: false
             config:
-              userinfo.token.claim: "true"
-              user.attribute: zoneinfo
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: zoneinfo
-              jsonType.label: String
-          - name: birthdate
+              userinfo.token.claim: "true"
+          - id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
+            name: family name
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: birthdate
+              user.attribute: lastName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: birthdate
+              claim.name: family_name
               jsonType.label: String
-          - name: given name
+          - id: 71c6caff-3f17-47db-8dc1-42f9af01832e
+            name: updated at
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: firstName
+              user.attribute: updatedAt
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: given_name
-              jsonType.label: String
-          - name: website
+              claim.name: updated_at
+              jsonType.label: long
+          - id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
+            name: picture
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: website
+              user.attribute: picture
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: website
+              claim.name: picture
               jsonType.label: String
-          - name: username
+          - id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
+            name: nickname
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-property-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: username
+              user.attribute: nickname
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: preferred_username
+              claim.name: nickname
               jsonType.label: String
-          - name: full name
+          - id: f8167604-073d-47ea-9fd1-6ec754ce5c49
+            name: website
             protocol: openid-connect
-            protocolMapper: oidc-full-name-mapper
+            protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
+              userinfo.token.claim: "true"
+              user.attribute: website
               id.token.claim: "true"
               access.token.claim: "true"
-              userinfo.token.claim: "true"
-          - name: middle name
+              claim.name: website
+              jsonType.label: String
+          - id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
+            name: profile
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: middleName
+              user.attribute: profile
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: middle_name
+              claim.name: profile
               jsonType.label: String
-          - name: gender
+          - id: 463f80df-1554-4f0b-889f-1e6f2308ba17
+            name: username
             protocol: openid-connect
-            protocolMapper: oidc-usermodel-attribute-mapper
+            protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: gender
+              user.attribute: username
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: gender
+              claim.name: preferred_username
               jsonType.label: String
-          - name: family name
+          - id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
+            name: given name
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: lastName
+              user.attribute: firstName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: family_name
+              claim.name: given_name
               jsonType.label: String
-          - name: updated at
+          - id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
+            name: zoneinfo
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: updatedAt
+              user.attribute: zoneinfo
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: updated_at
-              jsonType.label: long
-          - name: profile
+              claim.name: zoneinfo
+              jsonType.label: String
+          - id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
+            name: gender
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: profile
+              user.attribute: gender
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: profile
+              claim.name: gender
               jsonType.label: String
-          - name: locale
+          - id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
+            name: birthdate
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: locale
+              user.attribute: birthdate
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: locale
+              claim.name: birthdate
               jsonType.label: String
-          - name: nickname
+          - id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
+            name: middle name
             protocol: openid-connect
             protocolMapper: oidc-usermodel-attribute-mapper
             consentRequired: false
             config:
               userinfo.token.claim: "true"
-              user.attribute: nickname
+              user.attribute: middleName
               id.token.claim: "true"
               access.token.claim: "true"
-              claim.name: nickname
+              claim.name: middle_name
               jsonType.label: String
-      - name: email
+      - id: 45e1900d-2199-45fc-9028-a39497a6cdd5
+        name: email
         description: 'OpenID Connect built-in scope: email'
         protocol: openid-connect
         attributes:
@@ -365,7 +870,8 @@ spec:
           display.on.consent.screen: "true"
           consent.screen.text: ${emailScopeConsentText}
         protocolMappers:
-          - name: email
+          - id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
+            name: email
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
@@ -376,7 +882,8 @@ spec:
               access.token.claim: "true"
               claim.name: email
               jsonType.label: String
-          - name: email verified
+          - id: 26f0791c-93cf-4241-9c92-5528e67b9817
+            name: email verified
             protocol: openid-connect
             protocolMapper: oidc-usermodel-property-mapper
             consentRequired: false
@@ -387,13 +894,529 @@ spec:
               access.token.claim: "true"
               claim.name: email_verified
               jsonType.label: boolean
-      - name: nameandterms
+      - id: ed5b578d-d48f-4023-bc23-892a76d018df
+        name: roles
+        description: OpenID Connect scope for add user roles to the access token
         protocol: openid-connect
-    displayName: Redhat External for HAC
-    enabled: true
-    id: hac-sso
+        attributes:
+          include.in.token.scope: "false"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${rolesScopeConsentText}
+        protocolMappers:
+          - id: 569264db-b779-49c9-a9b0-cfa0f8c249db
+            name: audience resolve
+            protocol: openid-connect
+            protocolMapper: oidc-audience-resolve-mapper
+            consentRequired: false
+            config: {}
+          - id: 6d2e188f-4022-474e-84ad-19a84e054fc5
+            name: realm roles
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-realm-role-mapper
+            consentRequired: false
+            config:
+              user.attribute: foo
+              access.token.claim: "true"
+              claim.name: realm_access.roles
+              jsonType.label: String
+              multivalued: "true"
+          - id: f7b77092-577d-4492-b803-a3cdf2a436fe
+            name: client roles
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-client-role-mapper
+            consentRequired: false
+            config:
+              user.attribute: foo
+              access.token.claim: "true"
+              claim.name: resource_access.${client_id}.roles
+              jsonType.label: String
+              multivalued: "true"
+      - id: b2240814-1831-48d1-9682-7eb5231bbc76
+        name: acr
+        description: OpenID Connect scope for add acr (authentication context class reference) to the token
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "false"
+          display.on.consent.screen: "false"
+        protocolMappers:
+          - id: bc946f16-8378-4edc-9137-f5d5db96da88
+            name: acr loa level
+            protocol: openid-connect
+            protocolMapper: oidc-acr-mapper
+            consentRequired: false
+            config:
+              id.token.claim: "true"
+              access.token.claim: "true"
+      - id: 47f93745-58c6-4f19-9ef4-768cd6df7ab7
+        name: microprofile-jwt
+        description: Microprofile - JWT built-in scope
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "false"
+        protocolMappers:
+          - id: ca164b36-12dc-47fc-b0e6-e40949a5042e
+            name: upn
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            consentRequired: false
+            config:
+              userinfo.token.claim: "true"
+              user.attribute: username
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: upn
+              jsonType.label: String
+          - id: 4314b495-934a-4948-b9ae-fc9c17354cf0
+            name: groups
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-realm-role-mapper
+            consentRequired: false
+            config:
+              multivalued: "true"
+              user.attribute: foo
+              id.token.claim: "true"
+              access.token.claim: "true"
+              claim.name: groups
+              jsonType.label: String
+      - id: 710757d5-c717-44de-ad25-2133cf75b0a6
+        name: nameandterms
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+      - id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
+        name: address
+        description: 'OpenID Connect built-in scope: address'
+        protocol: openid-connect
+        attributes:
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
+          consent.screen.text: ${addressScopeConsentText}
+        protocolMappers:
+          - id: 8bf14f81-76b3-4970-9993-a270b52ae28a
+            name: address
+            protocol: openid-connect
+            protocolMapper: oidc-address-mapper
+            consentRequired: false
+            config:
+              user.attribute.formatted: formatted
+              user.attribute.country: country
+              user.attribute.postal_code: postal_code
+              userinfo.token.claim: "true"
+              user.attribute.street: street
+              id.token.claim: "true"
+              user.attribute.region: region
+              access.token.claim: "true"
+              user.attribute.locality: locality
+    defaultDefaultClientScopes:
+      - role_list
+      - profile
+      - email
+      - roles
+      - web-origins
+      - acr
+    smtpServer: {}
     loginTheme: rh-sso
-    realm: redhat-external
+    eventsEnabled: false
+    eventsListeners:
+      - jboss-logging
+    enabledEventTypes: []
+    adminEventsEnabled: false
+    adminEventsDetailsEnabled: false
+    identityProviders: []
+    identityProviderMappers: []
+    internationalizationEnabled: false
+    supportedLocales: []
+    authenticationFlows:
+      - id: e7eb3ebc-fb97-4223-ad80-592fc5fce191
+        alias: Account verification options
+        description: Method with which to verity the existing account
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-email-verification
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 20
+            flowAlias: Verify Existing Account by Re-authentication
+            userSetupAllowed: false
+      - id: 1198e723-0fc8-4378-adcb-5111b25ac8e0
+        alias: Authentication Options
+        description: Authentication options.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: basic-auth
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: basic-auth-otp
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: auth-spnego
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 30
+            userSetupAllowed: false
+      - id: 17b80820-8c58-48b4-abd7-3d5a75a501ca
+        alias: Browser - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-otp-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 87917dac-6623-4091-a031-f669c00727a0
+        alias: Direct Grant - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: direct-grant-validate-otp
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: c3e67dde-8f8c-4ad7-a901-48dc2f136e62
+        alias: First broker login - Conditional OTP
+        description: Flow to determine if the OTP is required for the authentication
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-otp-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 1c4a841c-8127-42c8-92b1-70ce02485b23
+        alias: Handle Existing Account
+        description: Handle what to do if there is existing account with same email/username like authenticated identity provider
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-confirm-link
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: Account verification options
+            userSetupAllowed: false
+      - id: 55164d9f-4366-464c-88d2-90bfd2261711
+        alias: Reset - Conditional OTP
+        description: Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: conditional-user-configured
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: reset-otp
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+      - id: 7a328721-4ecf-4195-b3eb-d43710806436
+        alias: User creation or linking
+        description: Flow for the existing/non-existing user alternatives
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticatorConfig: create unique user config
+            authenticator: idp-create-user-if-unique
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 20
+            flowAlias: Handle Existing Account
+            userSetupAllowed: false
+      - id: aa99db6e-a68c-41a6-a1b0-ceeb05835033
+        alias: Verify Existing Account by Re-authentication
+        description: Reauthentication of existing account
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: idp-username-password-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 20
+            flowAlias: First broker login - Conditional OTP
+            userSetupAllowed: false
+      - id: fb06241d-d1fd-4cd0-8e25-a2e7c526d5ed
+        alias: browser
+        description: browser based authentication
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: auth-cookie
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: auth-spnego
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: identity-provider-redirector
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 25
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: ALTERNATIVE
+            priority: 30
+            flowAlias: forms
+            userSetupAllowed: false
+      - id: e845c181-be95-4661-bf17-ad8930302e2d
+        alias: clients
+        description: Base authentication for clients
+        providerId: client-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: client-secret
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: client-jwt
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: client-secret-jwt
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 30
+            userSetupAllowed: false
+          - authenticator: client-x509
+            authenticatorFlow: false
+            requirement: ALTERNATIVE
+            priority: 40
+            userSetupAllowed: false
+      - id: 4be61b3e-bed6-4641-b0b3-2745f67e2d3f
+        alias: direct grant
+        description: OpenID Connect Resource Owner Grant
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: direct-grant-validate-username
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: direct-grant-validate-password
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 30
+            flowAlias: Direct Grant - Conditional OTP
+            userSetupAllowed: false
+      - id: f5aa97fe-9f57-4358-bcff-99259d556744
+        alias: docker auth
+        description: Used by Docker clients to authenticate against the IDP
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: docker-http-basic-authenticator
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+      - id: 4cac59c3-abc3-461f-9c98-0af10402304f
+        alias: first broker login
+        description: Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticatorConfig: review profile config
+            authenticator: idp-review-profile
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: User creation or linking
+            userSetupAllowed: false
+      - id: 3dee6aae-172e-44ee-8d20-13f1f757ab0a
+        alias: forms
+        description: Username, password, otp and other auth forms.
+        providerId: basic-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: auth-username-password-form
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 20
+            flowAlias: Browser - Conditional OTP
+            userSetupAllowed: false
+      - id: 4e344966-4bca-47ac-a450-3251f9cf16db
+        alias: http challenge
+        description: An authentication flow based on challenge-response HTTP Authentication Schemes
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: no-cookie-redirect
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 20
+            flowAlias: Authentication Options
+            userSetupAllowed: false
+      - id: dc323cc9-6e1c-4653-8509-9ae6f62bb54e
+        alias: registration
+        description: registration flow
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: registration-page-form
+            authenticatorFlow: true
+            requirement: REQUIRED
+            priority: 10
+            flowAlias: registration form
+            userSetupAllowed: false
+      - id: 73bdf37c-12fa-4c48-89bf-aa28139e7bb1
+        alias: registration form
+        description: registration form
+        providerId: form-flow
+        topLevel: false
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: registration-user-creation
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: registration-profile-action
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 40
+            userSetupAllowed: false
+          - authenticator: registration-password-action
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 50
+            userSetupAllowed: false
+          - authenticator: registration-recaptcha-action
+            authenticatorFlow: false
+            requirement: DISABLED
+            priority: 60
+            userSetupAllowed: false
+      - id: 6ac53ea6-30f4-4b40-b2a8-85a91514a24f
+        alias: reset credentials
+        description: Reset credentials for a user if they forgot their password or something
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: reset-credentials-choose-user
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+          - authenticator: reset-credential-email
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 20
+            userSetupAllowed: false
+          - authenticator: reset-password
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 30
+            userSetupAllowed: false
+          - authenticatorFlow: true
+            requirement: CONDITIONAL
+            priority: 40
+            flowAlias: Reset - Conditional OTP
+            userSetupAllowed: false
+      - id: 1eae4e92-51ce-49c9-85d7-aaf4d1f437ee
+        alias: saml ecp
+        description: SAML ECP Profile Authentication Flow
+        providerId: basic-flow
+        topLevel: true
+        builtIn: true
+        authenticationExecutions:
+          - authenticator: http-basic-authenticator
+            authenticatorFlow: false
+            requirement: REQUIRED
+            priority: 10
+            userSetupAllowed: false
+    authenticatorConfig:
+      - id: 651040d9-3852-4081-8cb3-665474382f87
+        alias: create unique user config
+        config:
+          require.password.update.after.registration: "false"
+      - id: a03358ad-6f70-4eb9-a1fa-bea18fb856f3
+        alias: review profile config
+        config:
+          update.profile.on.first.login: missing
+    userManagedAccessAllowed: false
     users:
       - credentials:
           - type: password 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1572 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/development/components/dev-sso/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/development/components/dev-sso/kustomize.out
26,426d25
<     accessTokenLifespanForImplicitFlow: 900
<     adminEventsDetailsEnabled: false
<     adminEventsEnabled: false
<     authenticationFlows:
<     - alias: Account verification options
<       authenticationExecutions:
<       - authenticator: idp-email-verification
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Verify Existing Account by Re-authentication
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Method with which to verity the existing account
<       id: e7eb3ebc-fb97-4223-ad80-592fc5fce191
<       providerId: basic-flow
<       topLevel: false
<     - alias: Authentication Options
<       authenticationExecutions:
<       - authenticator: basic-auth
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: basic-auth-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: DISABLED
<         userSetupAllowed: false
<       - authenticator: auth-spnego
<         authenticatorFlow: false
<         priority: 30
<         requirement: DISABLED
<         userSetupAllowed: false
<       builtIn: true
<       description: Authentication options.
<       id: 1198e723-0fc8-4378-adcb-5111b25ac8e0
<       providerId: basic-flow
<       topLevel: false
<     - alias: Browser - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: auth-otp-form
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: 17b80820-8c58-48b4-abd7-3d5a75a501ca
<       providerId: basic-flow
<       topLevel: false
<     - alias: Direct Grant - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: direct-grant-validate-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: 87917dac-6623-4091-a031-f669c00727a0
<       providerId: basic-flow
<       topLevel: false
<     - alias: First broker login - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: auth-otp-form
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP is required for the authentication
<       id: c3e67dde-8f8c-4ad7-a901-48dc2f136e62
<       providerId: basic-flow
<       topLevel: false
<     - alias: Handle Existing Account
<       authenticationExecutions:
<       - authenticator: idp-confirm-link
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Account verification options
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Handle what to do if there is existing account with same email/username
<         like authenticated identity provider
<       id: 1c4a841c-8127-42c8-92b1-70ce02485b23
<       providerId: basic-flow
<       topLevel: false
<     - alias: Reset - Conditional OTP
<       authenticationExecutions:
<       - authenticator: conditional-user-configured
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-otp
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow to determine if the OTP should be reset or not. Set to REQUIRED
<         to force.
<       id: 55164d9f-4366-464c-88d2-90bfd2261711
<       providerId: basic-flow
<       topLevel: false
<     - alias: User creation or linking
<       authenticationExecutions:
<       - authenticator: idp-create-user-if-unique
<         authenticatorConfig: create unique user config
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Handle Existing Account
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Flow for the existing/non-existing user alternatives
<       id: 7a328721-4ecf-4195-b3eb-d43710806436
<       providerId: basic-flow
<       topLevel: false
<     - alias: Verify Existing Account by Re-authentication
<       authenticationExecutions:
<       - authenticator: idp-username-password-form
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: First broker login - Conditional OTP
<         priority: 20
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Reauthentication of existing account
<       id: aa99db6e-a68c-41a6-a1b0-ceeb05835033
<       providerId: basic-flow
<       topLevel: false
<     - alias: browser
<       authenticationExecutions:
<       - authenticator: auth-cookie
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: auth-spnego
<         authenticatorFlow: false
<         priority: 20
<         requirement: DISABLED
<         userSetupAllowed: false
<       - authenticator: identity-provider-redirector
<         authenticatorFlow: false
<         priority: 25
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: forms
<         priority: 30
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: browser based authentication
<       id: fb06241d-d1fd-4cd0-8e25-a2e7c526d5ed
<       providerId: basic-flow
<       topLevel: true
<     - alias: clients
<       authenticationExecutions:
<       - authenticator: client-secret
<         authenticatorFlow: false
<         priority: 10
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-jwt
<         authenticatorFlow: false
<         priority: 20
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-secret-jwt
<         authenticatorFlow: false
<         priority: 30
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       - authenticator: client-x509
<         authenticatorFlow: false
<         priority: 40
<         requirement: ALTERNATIVE
<         userSetupAllowed: false
<       builtIn: true
<       description: Base authentication for clients
<       id: e845c181-be95-4661-bf17-ad8930302e2d
<       providerId: client-flow
<       topLevel: true
<     - alias: direct grant
<       authenticationExecutions:
<       - authenticator: direct-grant-validate-username
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: direct-grant-validate-password
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Direct Grant - Conditional OTP
<         priority: 30
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: OpenID Connect Resource Owner Grant
<       id: 4be61b3e-bed6-4641-b0b3-2745f67e2d3f
<       providerId: basic-flow
<       topLevel: true
<     - alias: docker auth
<       authenticationExecutions:
<       - authenticator: docker-http-basic-authenticator
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Used by Docker clients to authenticate against the IDP
<       id: f5aa97fe-9f57-4358-bcff-99259d556744
<       providerId: basic-flow
<       topLevel: true
<     - alias: first broker login
<       authenticationExecutions:
<       - authenticator: idp-review-profile
<         authenticatorConfig: review profile config
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: User creation or linking
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: Actions taken after first broker login with identity provider account,
<         which is not yet linked to any Keycloak account
<       id: 4cac59c3-abc3-461f-9c98-0af10402304f
<       providerId: basic-flow
<       topLevel: true
<     - alias: forms
<       authenticationExecutions:
<       - authenticator: auth-username-password-form
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Browser - Conditional OTP
<         priority: 20
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Username, password, otp and other auth forms.
<       id: 3dee6aae-172e-44ee-8d20-13f1f757ab0a
<       providerId: basic-flow
<       topLevel: false
<     - alias: http challenge
<       authenticationExecutions:
<       - authenticator: no-cookie-redirect
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Authentication Options
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: An authentication flow based on challenge-response HTTP Authentication
<         Schemes
<       id: 4e344966-4bca-47ac-a450-3251f9cf16db
<       providerId: basic-flow
<       topLevel: true
<     - alias: registration
<       authenticationExecutions:
<       - authenticator: registration-page-form
<         authenticatorFlow: true
<         flowAlias: registration form
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: registration flow
<       id: dc323cc9-6e1c-4653-8509-9ae6f62bb54e
<       providerId: basic-flow
<       topLevel: true
<     - alias: registration form
<       authenticationExecutions:
<       - authenticator: registration-user-creation
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-profile-action
<         authenticatorFlow: false
<         priority: 40
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-password-action
<         authenticatorFlow: false
<         priority: 50
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: registration-recaptcha-action
<         authenticatorFlow: false
<         priority: 60
<         requirement: DISABLED
<         userSetupAllowed: false
<       builtIn: true
<       description: registration form
<       id: 73bdf37c-12fa-4c48-89bf-aa28139e7bb1
<       providerId: form-flow
<       topLevel: false
<     - alias: reset credentials
<       authenticationExecutions:
<       - authenticator: reset-credentials-choose-user
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-credential-email
<         authenticatorFlow: false
<         priority: 20
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticator: reset-password
<         authenticatorFlow: false
<         priority: 30
<         requirement: REQUIRED
<         userSetupAllowed: false
<       - authenticatorFlow: true
<         flowAlias: Reset - Conditional OTP
<         priority: 40
<         requirement: CONDITIONAL
<         userSetupAllowed: false
<       builtIn: true
<       description: Reset credentials for a user if they forgot their password or something
<       id: 6ac53ea6-30f4-4b40-b2a8-85a91514a24f
<       providerId: basic-flow
<       topLevel: true
<     - alias: saml ecp
<       authenticationExecutions:
<       - authenticator: http-basic-authenticator
<         authenticatorFlow: false
<         priority: 10
<         requirement: REQUIRED
<         userSetupAllowed: false
<       builtIn: true
<       description: SAML ECP Profile Authentication Flow
<       id: 1eae4e92-51ce-49c9-85d7-aaf4d1f437ee
<       providerId: basic-flow
<       topLevel: true
<     authenticatorConfig:
<     - alias: create unique user config
<       config:
<         require.password.update.after.registration: "false"
<       id: 651040d9-3852-4081-8cb3-665474382f87
<     - alias: review profile config
<       config:
<         update.profile.on.first.login: missing
<       id: a03358ad-6f70-4eb9-a1fa-bea18fb856f3
<     bruteForceProtected: false
<     clientScopeMappings:
<       account:
<       - client: account-console
<         roles:
<         - manage-account
429,436c28,32
<         consent.screen.text: ""
<         display.on.consent.screen: "false"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add allowed web origins to the access
<         token
<       id: 2e00768f-fe3c-48d8-92bf-35afbbcc30c0
<       name: web-origins
<       protocol: openid-connect
---
>         consent.screen.text: ${samlRoleListScopeConsentText}
>         display.on.consent.screen: "true"
>       description: SAML role list
>       name: role_list
>       protocol: saml
438c34,37
<       - config: {}
---
>       - config:
>           attribute.name: Role
>           attribute.nameformat: Basic
>           single: "false"
440,443c39,41
<         id: d54340bc-16f0-45a4-9464-436ef7583a81
<         name: allowed web origins
<         protocol: openid-connect
<         protocolMapper: oidc-allowed-origins-mapper
---
>         name: role list
>         protocol: saml
>         protocolMapper: saml-role-list-mapper
449d46
<       id: 172816fd-8450-4e82-b33a-89f9181373a4
455c52
<           claim.name: phone_number
---
>           claim.name: phone_number_verified
457,458c54,55
<           jsonType.label: String
<           user.attribute: phoneNumber
---
>           jsonType.label: boolean
>           user.attribute: phoneNumberVerified
461,462c58
<         id: 02c09b15-1210-4a6c-b6e4-c2452031712a
<         name: phone number
---
>         name: phone number verified
467c63
<           claim.name: phone_number_verified
---
>           claim.name: phone_number
469,470c65,66
<           jsonType.label: boolean
<           user.attribute: phoneNumberVerified
---
>           jsonType.label: String
>           user.attribute: phoneNumber
473,474c69
<         id: 6a96110b-3a23-48cd-8d90-cefa6228e5e1
<         name: phone number verified
---
>         name: phone number
478c73
<         consent.screen.text: ${samlRoleListScopeConsentText}
---
>         consent.screen.text: ${rolesScopeConsentText}
480,483c75,78
<       description: SAML role list
<       id: c7d788d8-5836-4500-b4a9-083c2f6c2960
<       name: role_list
<       protocol: saml
---
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add user roles to the access token
>       name: roles
>       protocol: openid-connect
486,488c81,85
<           attribute.name: Role
<           attribute.nameformat: Basic
<           single: "false"
---
>           access.token.claim: "true"
>           claim.name: realm_access.roles
>           jsonType.label: String
>           multivalued: "true"
>           user.attribute: foo
490,493c87,135
<         id: a70dad06-f7a0-4c3d-8c08-cf440c7918da
<         name: role list
<         protocol: saml
<         protocolMapper: saml-role-list-mapper
---
>         name: realm roles
>         protocol: openid-connect
>         protocolMapper: oidc-usermodel-realm-role-mapper
>       - config:
>           access.token.claim: "true"
>           claim.name: resource_access.${client_id}.roles
>           jsonType.label: String
>           multivalued: "true"
>           user.attribute: foo
>         consentRequired: false
>         name: client roles
>         protocol: openid-connect
>         protocolMapper: oidc-usermodel-client-role-mapper
>       - config: {}
>         consentRequired: false
>         name: audience resolve
>         protocol: openid-connect
>         protocolMapper: oidc-audience-resolve-mapper
>     - attributes:
>         display.on.consent.screen: "false"
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add acr (authentication context class
>         reference) to the token
>       name: acr
>       protocol: openid-connect
>       protocolMappers:
>       - config:
>           access.token.claim: "true"
>           id.token.claim: "true"
>         consentRequired: false
>         id: 88d57217-59f6-4ec7-ae36-9d2a003dc512
>         name: acr loa level
>         protocol: openid-connect
>         protocolMapper: oidc-acr-mapper
>     - attributes:
>         consent.screen.text: ""
>         display.on.consent.screen: "false"
>         include.in.token.scope: "false"
>       description: OpenID Connect scope for add allowed web origins to the access
>         token
>       name: web-origins
>       protocol: openid-connect
>       protocolMappers:
>       - config: {}
>         consentRequired: false
>         id: f57e7fed-4377-43e1-a2fa-0ef938735371
>         name: allowed web origins
>         protocol: openid-connect
>         protocolMapper: oidc-allowed-origins-mapper
498d139
<       id: 656d7d46-bcd6-4b5a-bcfa-20ad0f13e9fe
502,503c143
<         consent.screen.text: ${profileScopeConsentText}
<         display.on.consent.screen: "true"
---
>         display.on.consent.screen: "false"
505,507c145,146
<       description: 'OpenID Connect built-in scope: profile'
<       id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
<       name: profile
---
>       description: Microprofile - JWT built-in scope
>       name: microprofile-jwt
512c151
<           claim.name: locale
---
>           claim.name: groups
515,516c154,155
<           user.attribute: locale
<           userinfo.token.claim: "true"
---
>           multivalued: "true"
>           user.attribute: foo
518,519c157
<         id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
<         name: locale
---
>         name: groups
521c159
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-realm-role-mapper
523a162
>           claim.name: upn
524a164,165
>           jsonType.label: String
>           user.attribute: username
527,528c168
<         id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
<         name: full name
---
>         name: upn
530c170,178
<         protocolMapper: oidc-full-name-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
>     - attributes:
>         consent.screen.text: ${addressScopeConsentText}
>         display.on.consent.screen: "true"
>         include.in.token.scope: "true"
>       description: 'OpenID Connect built-in scope: address'
>       name: address
>       protocol: openid-connect
>       protocolMappers:
533d180
<           claim.name: family_name
535,536c182,187
<           jsonType.label: String
<           user.attribute: lastName
---
>           user.attribute.country: country
>           user.attribute.formatted: formatted
>           user.attribute.locality: locality
>           user.attribute.postal_code: postal_code
>           user.attribute.region: region
>           user.attribute.street: street
539,540c190,191
<         id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
<         name: family name
---
>         id: 211470af-2420-4127-a5b7-e38d3f50920a
>         name: address
542c193,201
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-address-mapper
>     - attributes:
>         consent.screen.text: ${profileScopeConsentText}
>         display.on.consent.screen: "true"
>         include.in.token.scope: "true"
>       description: 'OpenID Connect built-in scope: profile'
>       name: profile
>       protocol: openid-connect
>       protocolMappers:
545c204
<           claim.name: updated_at
---
>           claim.name: picture
547,548c206,207
<           jsonType.label: long
<           user.attribute: updatedAt
---
>           jsonType.label: String
>           user.attribute: picture
551,552c210
<         id: 71c6caff-3f17-47db-8dc1-42f9af01832e
<         name: updated at
---
>         name: picture
557c215
<           claim.name: picture
---
>           claim.name: zoneinfo
560c218
<           user.attribute: picture
---
>           user.attribute: zoneinfo
563,564c221
<         id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
<         name: picture
---
>         name: zoneinfo
569c226
<           claim.name: nickname
---
>           claim.name: birthdate
572c229
<           user.attribute: nickname
---
>           user.attribute: birthdate
575,576c232
<         id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
<         name: nickname
---
>         name: birthdate
581c237
<           claim.name: website
---
>           claim.name: given_name
584c240
<           user.attribute: website
---
>           user.attribute: firstName
587,588c243
<         id: f8167604-073d-47ea-9fd1-6ec754ce5c49
<         name: website
---
>         name: given name
590c245
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
593c248
<           claim.name: profile
---
>           claim.name: website
596c251
<           user.attribute: profile
---
>           user.attribute: website
599,600c254
<         id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
<         name: profile
---
>         name: website
611d264
<         id: 463f80df-1554-4f0b-889f-1e6f2308ba17
617d269
<           claim.name: given_name
619,620d270
<           jsonType.label: String
<           user.attribute: firstName
623,624c273
<         id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
<         name: given name
---
>         name: full name
626c275
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-full-name-mapper
629c278
<           claim.name: zoneinfo
---
>           claim.name: middle_name
632c281
<           user.attribute: zoneinfo
---
>           user.attribute: middleName
635,636c284
<         id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
<         name: zoneinfo
---
>         name: middle name
647d294
<         id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
653c300
<           claim.name: birthdate
---
>           claim.name: family_name
656c303
<           user.attribute: birthdate
---
>           user.attribute: lastName
659,660c306
<         id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
<         name: birthdate
---
>         name: family name
662c308
<         protocolMapper: oidc-usermodel-attribute-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
665c311
<           claim.name: middle_name
---
>           claim.name: updated_at
667,668c313,314
<           jsonType.label: String
<           user.attribute: middleName
---
>           jsonType.label: long
>           user.attribute: updatedAt
671,672c317
<         id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
<         name: middle name
---
>         name: updated at
675,683d319
<     - attributes:
<         consent.screen.text: ${emailScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: email'
<       id: 45e1900d-2199-45fc-9028-a39497a6cdd5
<       name: email
<       protocol: openid-connect
<       protocolMappers:
686c322
<           claim.name: email
---
>           claim.name: profile
689c325
<           user.attribute: email
---
>           user.attribute: profile
692,693c328
<         id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
<         name: email
---
>         name: profile
695c330
<         protocolMapper: oidc-usermodel-property-mapper
---
>         protocolMapper: oidc-usermodel-attribute-mapper
698c333
<           claim.name: email_verified
---
>           claim.name: locale
700,725d334
<           jsonType.label: boolean
<           user.attribute: emailVerified
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 26f0791c-93cf-4241-9c92-5528e67b9817
<         name: email verified
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<     - attributes:
<         consent.screen.text: ${rolesScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add user roles to the access token
<       id: ed5b578d-d48f-4023-bc23-892a76d018df
<       name: roles
<       protocol: openid-connect
<       protocolMappers:
<       - config: {}
<         consentRequired: false
<         id: 569264db-b779-49c9-a9b0-cfa0f8c249db
<         name: audience resolve
<         protocol: openid-connect
<         protocolMapper: oidc-audience-resolve-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: realm_access.roles
727,739c336,337
<           multivalued: "true"
<           user.attribute: foo
<         consentRequired: false
<         id: 6d2e188f-4022-474e-84ad-19a84e054fc5
<         name: realm roles
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-realm-role-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: resource_access.${client_id}.roles
<           jsonType.label: String
<           multivalued: "true"
<           user.attribute: foo
---
>           user.attribute: locale
>           userinfo.token.claim: "true"
741,742c339
<         id: f7b77092-577d-4492-b803-a3cdf2a436fe
<         name: client roles
---
>         name: locale
744,753c341
<         protocolMapper: oidc-usermodel-client-role-mapper
<     - attributes:
<         display.on.consent.screen: "false"
<         include.in.token.scope: "false"
<       description: OpenID Connect scope for add acr (authentication context class
<         reference) to the token
<       id: b2240814-1831-48d1-9682-7eb5231bbc76
<       name: acr
<       protocol: openid-connect
<       protocolMappers:
---
>         protocolMapper: oidc-usermodel-attribute-mapper
755a344
>           claim.name: nickname
756a346,348
>           jsonType.label: String
>           user.attribute: nickname
>           userinfo.token.claim: "true"
758,759c350
<         id: bc946f16-8378-4edc-9137-f5d5db96da88
<         name: acr loa level
---
>         name: nickname
761c352
<         protocolMapper: oidc-acr-mapper
---
>         protocolMapper: oidc-usermodel-attribute-mapper
763c354,355
<         display.on.consent.screen: "false"
---
>         consent.screen.text: ${emailScopeConsentText}
>         display.on.consent.screen: "true"
765,767c357,358
<       description: Microprofile - JWT built-in scope
<       id: 47f93745-58c6-4f19-9ef4-768cd6df7ab7
<       name: microprofile-jwt
---
>       description: 'OpenID Connect built-in scope: email'
>       name: email
772c363
<           claim.name: upn
---
>           claim.name: email
775c366
<           user.attribute: username
---
>           user.attribute: email
778,779c369
<         id: ca164b36-12dc-47fc-b0e6-e40949a5042e
<         name: upn
---
>         name: email
784,810c374
<           claim.name: groups
<           id.token.claim: "true"
<           jsonType.label: String
<           multivalued: "true"
<           user.attribute: foo
<         consentRequired: false
<         id: 4314b495-934a-4948-b9ae-fc9c17354cf0
<         name: groups
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-realm-role-mapper
<     - attributes:
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 710757d5-c717-44de-ad25-2133cf75b0a6
<       name: nameandterms
<       protocol: openid-connect
<     - attributes:
<         consent.screen.text: ${addressScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: address'
<       id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
<       name: address
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
---
>           claim.name: email_verified
812,817c376,377
<           user.attribute.country: country
<           user.attribute.formatted: formatted
<           user.attribute.locality: locality
<           user.attribute.postal_code: postal_code
<           user.attribute.region: region
<           user.attribute.street: street
---
>           jsonType.label: boolean
>           user.attribute: emailVerified
820,821c380
<         id: 8bf14f81-76b3-4970-9993-a270b52ae28a
<         name: address
---
>         name: email verified
823c382,384
<         protocolMapper: oidc-address-mapper
---
>         protocolMapper: oidc-usermodel-property-mapper
>     - name: nameandterms
>       protocol: openid-connect
825,831c386
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /realms/redhat-external/account/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: account
<       consentRequired: false
---
>     - clientId: cloud-services
833,836c388
<       - web-origins
<       - acr
<       - profile
<       - roles
---
>       - nameandterms
838,871d389
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<       implicitFlowEnabled: false
<       name: ${client_account}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: true
<       redirectUris:
<       - /realms/redhat-external/account/*
<       rootUrl: ${authBaseUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         pkce.code.challenge.method: S256
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /realms/redhat-external/account/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: account-console
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
874,911d391
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 664b265b-5730-4e51-aee1-fa1aa9427323
<       implicitFlowEnabled: false
<       name: ${client_account-console}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       protocolMappers:
<       - config: {}
<         consentRequired: false
<         id: fab196f4-8200-41eb-8d63-173256763e71
<         name: audience resolve
<         protocol: openid-connect
<         protocolMapper: oidc-audience-resolve-mapper
<       publicClient: true
<       redirectUris:
<       - /realms/redhat-external/account/*
<       rootUrl: ${authBaseUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: admin-cli
<       consentRequired: false
<       defaultClientScopes:
913,916d392
<       - acr
<       - profile
<       - roles
<       - email
919,921d394
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 617194f2-e0ff-4ee1-9fb1-15bed4fa4a77
923,925c396
<       name: ${client_admin-cli}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
---
>       name: cloud-services
928,929d398
<       - phone
<       - offline_access
931,961d399
<       protocol: openid-connect
<       publicClient: true
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: false
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: true
<       clientAuthenticatorType: client-secret
<       clientId: broker
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 6dec4db5-3920-4e47-b671-e7cfeb915e96
<       implicitFlowEnabled: false
<       name: ${client_broker}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
963,1020d400
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: false
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         acr.loa.map: '{}'
<         backchannel.logout.revoke.offline.tokens: "false"
<         backchannel.logout.session.required: "true"
<         client_credentials.use_refresh_token: "false"
<         display.on.consent.screen: "false"
<         exclude.session.state.from.auth.response: "false"
<         frontchannel.logout.session.required: "false"
<         id.token.as.detached.signature: "false"
<         oauth2.device.authorization.grant.enabled: "false"
<         oidc.ciba.grant.enabled: "false"
<         require.pushed.authorization.requests: "false"
<         saml.allow.ecp.flow: "false"
<         saml.artifact.binding: "false"
<         saml.assertion.signature: "false"
<         saml.authnstatement: "false"
<         saml.client.signature: "false"
<         saml.encrypt: "false"
<         saml.force.post.binding: "false"
<         saml.multivalued.roles: "false"
<         saml.onetimeuse.condition: "false"
<         saml.server.signature: "false"
<         saml.server.signature.keyinfo.ext: "false"
<         saml_force_name_id_format: "false"
<         tls.client.certificate.bound.access.tokens: "false"
<         token.response.type.bearer.lower-case: "false"
<         use.refresh.tokens: "true"
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: cloud-services
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - nameandterms
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: true
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: true
<       id: 9a5018a7-5f92-40c9-b8f1-63f53bc32a68
<       implicitFlowEnabled: false
<       name: cloud-services
<       nodeReRegistrationTimeout: -1
<       notBefore: 0
<       optionalClientScopes:
<       - address
1022,1023d401
<       - offline_access
<       - microprofile-jwt
1028d405
<       serviceAccountsEnabled: false
1030d406
<       surrogateAuthRequired: false
1033,1130d408
<     - attributes: {}
<       authenticationFlowBindingOverrides: {}
<       bearerOnly: true
<       clientAuthenticatorType: client-secret
<       clientId: realm-management
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<       implicitFlowEnabled: false
<       name: ${client_realm-management}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       publicClient: false
<       redirectUris: []
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins: []
<     - attributes:
<         pkce.code.challenge.method: S256
<       authenticationFlowBindingOverrides: {}
<       baseUrl: /admin/redhat-external/console/
<       bearerOnly: false
<       clientAuthenticatorType: client-secret
<       clientId: security-admin-console
<       consentRequired: false
<       defaultClientScopes:
<       - web-origins
<       - acr
<       - profile
<       - roles
<       - email
<       directAccessGrantsEnabled: false
<       enabled: true
<       frontchannelLogout: false
<       fullScopeAllowed: false
<       id: 50b949b2-3b56-4cc1-a8b6-90951a6ad9c6
<       implicitFlowEnabled: false
<       name: ${client_security-admin-console}
<       nodeReRegistrationTimeout: 0
<       notBefore: 0
<       optionalClientScopes:
<       - address
<       - phone
<       - offline_access
<       - microprofile-jwt
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: locale
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: locale
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: f0d04249-2f8f-4069-8566-4f3aa35e7690
<         name: locale
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       publicClient: true
<       redirectUris:
<       - /admin/redhat-external/console/*
<       rootUrl: ${authAdminUrl}
<       serviceAccountsEnabled: false
<       standardFlowEnabled: true
<       surrogateAuthRequired: false
<       webOrigins:
<       - +
<     defaultDefaultClientScopes:
<     - role_list
<     - profile
<     - email
<     - roles
<     - web-origins
<     - acr
<     defaultRole:
<       clientRole: false
<       composite: true
<       containerId: hac-sso
<       description: ${role_default-roles}
<       id: a8d38f0f-7d83-41b7-8236-55998c531760
<       name: default-roles-redhat-external
1132,1133d409
<     duplicateEmailsAllowed: false
<     editUsernameAllowed: false
1135,1139d410
<     enabledEventTypes: []
<     eventsEnabled: false
<     eventsListeners:
<     - jboss-logging
<     failureFactor: 30
1141,1143d411
<     identityProviderMappers: []
<     identityProviders: []
<     internationalizationEnabled: false
1145,1159d412
<     loginWithEmailAllowed: true
<     maxDeltaTimeSeconds: 43200
<     maxFailureWaitSeconds: 900
<     minimumQuickLoginWaitSeconds: 60
<     otpPolicyAlgorithm: HmacSHA1
<     otpPolicyDigits: 6
<     otpPolicyInitialCounter: 0
<     otpPolicyLookAheadWindow: 1
<     otpPolicyPeriod: 30
<     otpPolicyType: totp
<     otpSupportedApplications:
<     - FreeOTP
<     - Google Authenticator
<     permanentLockout: false
<     quickLoginCheckMilliSeconds: 1000
1161,1438d413
<     registrationAllowed: false
<     registrationEmailAsUsername: false
<     rememberMe: false
<     resetPasswordAllowed: false
<     roles:
<       client:
<         account:
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               account:
<               - manage-account-links
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-account}
<           id: 62cc2451-60f3-4420-ab11-106280ea5127
<           name: manage-account
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_delete-account}
<           id: 8a7a5a05-e697-445e-8dee-122227311297
<           name: delete-account
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-consent}
<           id: aae2d09f-6aed-476e-93fa-68e0604bb6ac
<           name: view-consent
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-applications}
<           id: 79c590ab-dada-4ef0-bfa1-8c85d35e7d84
<           name: view-applications
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               account:
<               - view-consent
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-consent}
<           id: 7da35324-12d5-44e5-9c6a-9f1c1a2dccd0
<           name: manage-consent
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_manage-account-links}
<           id: 09d2dc7b-e18e-49a5-ae06-0f01cfa876b8
<           name: manage-account-links
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 5ed7caf5-67b3-4fc9-9da4-aaee30a9b591
<           description: ${role_view-profile}
<           id: 3b5813d3-3ecb-489b-8bc8-38288b2c898a
<           name: view-profile
<         account-console: []
<         admin-cli: []
<         broker:
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 6dec4db5-3920-4e47-b671-e7cfeb915e96
<           description: ${role_read-token}
<           id: 9b3c893f-3860-46d7-82c6-4e6066380871
<           name: read-token
<         cloud-services: []
<         realm-management:
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-identity-providers}
<           id: 47a7732c-f371-4cc1-935d-1c517614eb74
<           name: manage-identity-providers
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-events}
<           id: 92dac8f6-33df-4375-8d47-302065b0c47c
<           name: view-events
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - query-groups
<               - query-users
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-users}
<           id: c5cd8e35-13cf-4d17-9002-33bc7049ed49
<           name: view-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-authorization}
<           id: d7d79f8e-a86a-4437-9ef6-c27b086ff005
<           name: manage-authorization
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - query-clients
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-clients}
<           id: 3b31e4a3-a4b9-404e-a416-e559f59a18d5
<           name: view-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_impersonation}
<           id: 8a5e47b0-f5cc-4f42-a4c0-7cf61107cfca
<           name: impersonation
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_create-client}
<           id: 5f7b54ef-f854-42f3-95bd-a9ea962fb629
<           name: create-client
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-clients}
<           id: 3b687d3d-8229-4fd5-8cdd-0aee6d4bf8ca
<           name: query-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-realm}
<           id: 6c5fce09-33e2-40b6-823e-dcf644fa6053
<           name: manage-realm
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-users}
<           id: afaf3f99-7750-4c6a-bca6-b35b26d2f8ff
<           name: query-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-clients}
<           id: 59cf3bbe-6c5a-4401-a996-9116d71d35f4
<           name: manage-clients
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-users}
<           id: 03361fc0-ff06-4d09-ab1f-ab900fe4d57b
<           name: manage-users
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-groups}
<           id: b1b19c8d-fd64-4960-a409-dafc455d504e
<           name: query-groups
<         - attributes: {}
<           clientRole: true
<           composite: true
<           composites:
<             client:
<               realm-management:
<               - manage-identity-providers
<               - view-events
<               - view-users
<               - view-clients
<               - manage-authorization
<               - impersonation
<               - create-client
<               - query-clients
<               - manage-realm
<               - query-users
<               - manage-clients
<               - manage-users
<               - query-groups
<               - view-realm
<               - query-realms
<               - view-identity-providers
<               - view-authorization
<               - manage-events
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_realm-admin}
<           id: 3ea88ffd-28a4-423c-8fb4-f832f610b2dc
<           name: realm-admin
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-realm}
<           id: 71a4d66d-50bc-4ef3-8da8-36f31c7b6b3e
<           name: view-realm
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_query-realms}
<           id: ce2a40fc-5fd5-4735-b0dd-b5d707dd5ee2
<           name: query-realms
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-identity-providers}
<           id: e1403844-fc62-4522-8181-64a0395a9608
<           name: view-identity-providers
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_manage-events}
<           id: 76acc1f2-7d2b-40f2-af4d-a3dff5403470
<           name: manage-events
<         - attributes: {}
<           clientRole: true
<           composite: false
<           containerId: 1a447574-fcac-48e6-a70a-ca4fd5de7f91
<           description: ${role_view-authorization}
<           id: 1bab32ce-418a-4779-875a-aa550bc5720e
<           name: view-authorization
<         security-admin-console: []
<       realm:
<       - attributes: {}
<         clientRole: false
<         composite: true
<         composites:
<           client:
<             account:
<             - manage-account
<             - view-profile
<           realm:
<           - offline_access
<           - uma_authorization
<         containerId: hac-sso
<         description: ${role_default-roles}
<         id: a8d38f0f-7d83-41b7-8236-55998c531760
<         name: default-roles-redhat-external
<       - attributes: {}
<         clientRole: false
<         composite: false
<         containerId: hac-sso
<         description: ${role_uma_authorization}
<         id: 4c73ed54-7750-4045-9c3b-8f43b05b0cb4
<         name: uma_authorization
<       - attributes: {}
<         clientRole: false
<         composite: false
<         containerId: hac-sso
<         description: ${role_offline-access}
<         id: 18e6ca8a-034d-428a-a0f6-3e5824c74d67
<         name: offline_access
<     scopeMappings:
<     - clientScope: offline_access
<       roles:
<       - offline_access
<     smtpServer: {}
<     sslRequired: external
<     supportedLocales: []
<     userManagedAccessAllowed: false
1452,1453d426
<     verifyEmail: false
<     waitIncrementSeconds: 60
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-aa4d748/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 10:05:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 10:05:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/14 16:05:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Staging changes from 900c1b8 to 575c8b1 on Tue Mar 14 16:01:23 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index acdfcf2..9c346ae 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 0883dc6..7c2a340 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/14 16:04:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:05:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/14 16:04:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:05:33 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/staging/components/quality-dashboard/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/quality-dashboard/staging/kustomize.out
160c160
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:749fea11ac0919339b93b7cacf301446e365d2bd
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:62d693e2f57a4c3394a842966f51e646691b28df
244c244
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:749fea11ac0919339b93b7cacf301446e365d2bd
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:62d693e2f57a4c3394a842966f51e646691b28df 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Development changes from 900c1b8 to 575c8b1 on Tue Mar 14 16:01:23 2023 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index acdfcf2..9c346ae 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 0883dc6..7c2a340 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=62d693e2f57a4c3394a842966f51e646691b28df
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 62d693e2f57a4c3394a842966f51e646691b28df
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/14 16:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/14 16:05:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/14 16:05:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/14 16:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-575c8b1/development/components/quality-dashboard/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/development/components/quality-dashboard/development/kustomize.out
121c121
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:749fea11ac0919339b93b7cacf301446e365d2bd
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:62d693e2f57a4c3394a842966f51e646691b28df
205c205
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:749fea11ac0919339b93b7cacf301446e365d2bd
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:62d693e2f57a4c3394a842966f51e646691b28df 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Staging changes from c6e20f0 to 900c1b8 on Tue Mar 14 14:22:38 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/authentication/base/pipeline-service-sre.yaml b/components/authentication/base/pipeline-service-sre.yaml
index 36e36ac..75189ef 100644
--- a/components/authentication/base/pipeline-service-sre.yaml
+++ b/components/authentication/base/pipeline-service-sre.yaml
@@ -65,7 +65,7 @@ roleRef:
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: tekton-results-maintainers
+  name: pipeline-service-admin
   namespace: tekton-results
 subjects:
   - kind: Group
@@ -74,12 +74,40 @@ subjects:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: component-maintainer
+  name: admin
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-admin
+  namespace: tekton-chains
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-admin
+  namespace: pipelines-as-code
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: openshift-pipelines-maintainers
+  name: pipeline-service-admin
   namespace: openshift-pipelines
 subjects:
   - kind: Group
@@ -88,7 +116,7 @@ subjects:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: component-maintainer
+  name: admin
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/authentication/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/authentication/staging/kustomize.out
554c554
<   name: pipeline-service-admin
---
>   name: openshift-pipelines-maintainers
559,573c559
<   name: admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pipeline-service-admin
<   namespace: pipelines-as-code
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: admin
---
>   name: component-maintainer
696,710c682
<   name: pipeline-service-admin
<   namespace: tekton-chains
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: admin
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: Pipeline Service
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: pipeline-service-admin
---
>   name: tekton-results-maintainers
715c687
<   name: admin
---
>   name: component-maintainer
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/14 16:05:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:04:27 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/14 16:05:33 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:04:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Development changes from c6e20f0 to 900c1b8 on Tue Mar 14 14:22:38 2023 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/authentication/base/pipeline-service-sre.yaml b/components/authentication/base/pipeline-service-sre.yaml
index 36e36ac..75189ef 100644
--- a/components/authentication/base/pipeline-service-sre.yaml
+++ b/components/authentication/base/pipeline-service-sre.yaml
@@ -65,7 +65,7 @@ roleRef:
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: tekton-results-maintainers
+  name: pipeline-service-admin
   namespace: tekton-results
 subjects:
   - kind: Group
@@ -74,12 +74,40 @@ subjects:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: component-maintainer
+  name: admin
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-admin
+  namespace: tekton-chains
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: pipeline-service-admin
+  namespace: pipelines-as-code
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: Pipeline Service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: admin
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
-  name: openshift-pipelines-maintainers
+  name: pipeline-service-admin
   namespace: openshift-pipelines
 subjects:
   - kind: Group
@@ -88,7 +116,7 @@ subjects:
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: component-maintainer
+  name: admin
 ---
 kind: RoleBinding
 apiVersion: rbac.authorization.k8s.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-900c1b8/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/14 16:05:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/14 16:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 16:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Staging changes from 5e6c25e to c6e20f0 on Mon Mar 13 15:29:00 2023 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index d0308cd..9b2ec79 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -215,7 +215,8 @@ if echo $APPS | grep -q spi; then
         kubectl apply -f $SPI_APP_ROLE_FILE  -n spi-system
     fi
     echo "Vault init complete"
-
+  else
+     echo "Vault initialization skipped"
   fi
 fi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 16:04:27 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:05:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 16:04:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:05:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Development changes from 5e6c25e to c6e20f0 on Mon Mar 13 15:29:00 2023 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index d0308cd..9b2ec79 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -215,7 +215,8 @@ if echo $APPS | grep -q spi; then
         kubectl apply -f $SPI_APP_ROLE_FILE  -n spi-system
     fi
     echo "Vault init complete"
-
+  else
+     echo "Vault initialization skipped"
   fi
 fi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c6e20f0/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 16:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 16:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 16:05:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 16:05:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Staging changes from bd704bc to 5e6c25e on Mon Mar 13 14:53:31 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
index 0aa66f4..98586ba 100644
--- a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/o11y
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/app-of-apps-staging.yaml /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/app-of-apps-staging.yaml
814c814
<             clusterDir: ""
---
>             clusterDir: base
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 16:05:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 14:04:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 16:05:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 14:04:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Development changes from bd704bc to 5e6c25e on Mon Mar 13 14:53:31 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
index 0aa66f4..98586ba 100644
--- a/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/o11y/o11y.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/o11y
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5e6c25e/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 16:05:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 16:05:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 14:04:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 14:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Staging changes from a1aa328 to bd704bc on Mon Mar 13 12:18:23 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 829ae9b..862da26 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -16,7 +16,6 @@ resources:
 - internal-services.yaml
 - pipeline-service-sre.yaml
 - sandbox-sre-admins.yaml
-- sandbox-dev.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/base/sandbox-dev.yaml b/components/authentication/base/sandbox-dev.yaml
deleted file mode 100644
index 76ff6a1..0000000
--- a/components/authentication/base/sandbox-dev.yaml
+++ /dev/null
@@ -1,27 +0,0 @@
----
-kind: Role
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: edit-spacerequests
-  namespace: rh-ee-fmuntean-tenant
-rules:
-- apiGroups:
-  - "toolchain.dev.openshift.com"
-  resources:
-  - "spacerequests"
-  verbs:
-  - "*"
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: edit-spacerequests-rb
-  namespace: rh-ee-fmuntean-tenant
-subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: edit-spacerequests 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (40 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/authentication/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/authentication/staging/kustomize.out
21a22,34
>   name: edit-spacerequests
>   namespace: rh-ee-fmuntean-tenant
> rules:
> - apiGroups:
>   - toolchain.dev.openshift.com
>   resources:
>   - spacerequests
>   verbs:
>   - '*'
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
620a634,647
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   name: edit-spacerequests-rb
>   namespace: rh-ee-fmuntean-tenant
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: edit-spacerequests
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: mfrancisc
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 14:04:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 12:05:46 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 14:04:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 12:05:49 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Development changes from a1aa328 to bd704bc on Mon Mar 13 12:18:23 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index 829ae9b..862da26 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -16,7 +16,6 @@ resources:
 - internal-services.yaml
 - pipeline-service-sre.yaml
 - sandbox-sre-admins.yaml
-- sandbox-dev.yaml
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/authentication/base/sandbox-dev.yaml b/components/authentication/base/sandbox-dev.yaml
deleted file mode 100644
index 76ff6a1..0000000
--- a/components/authentication/base/sandbox-dev.yaml
+++ /dev/null
@@ -1,27 +0,0 @@
----
-kind: Role
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: edit-spacerequests
-  namespace: rh-ee-fmuntean-tenant
-rules:
-- apiGroups:
-  - "toolchain.dev.openshift.com"
-  resources:
-  - "spacerequests"
-  verbs:
-  - "*"
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: edit-spacerequests-rb
-  namespace: rh-ee-fmuntean-tenant
-subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: edit-spacerequests 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-bd704bc/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 14:04:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 14:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 12:06:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 12:06:13 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Staging changes from 04ec6a6 to a1aa328 on Mon Mar 13 10:39:48 2023 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/external-secrets/kustomization.yaml b/components/monitoring/grafana/base/external-secrets/kustomization.yaml
new file mode 100644
index 0000000..ebcfa07
--- /dev/null
+++ b/components/monitoring/grafana/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- monitoring-grafana-oauth-config.yaml
+namespace: appstudio-workload-monitoring
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml b/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml
new file mode 100644
index 0000000..1f427a7
--- /dev/null
+++ b/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: monitoring-grafana-oauth-config
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+  - extract:
+      key: "" # will be added by the overlays
+      decodingStrategy: Base64
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: grafana-oauth2-proxy
\ No newline at end of file
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
new file mode 100644
index 0000000..4d6c160
--- /dev/null
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base/external-secrets
+- ../base
+patches:
+  - path: monitoring-grafana-oauth-config-path.yaml
+    target:
+      name: monitoring-grafana-oauth-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
\ No newline at end of file
diff --git a/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml b/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml
new file mode 100644
index 0000000..7e3abe5
--- /dev/null
+++ b/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/monitoring/prd-m01/grafana/grafana-oauth2-proxy
\ No newline at end of file
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
new file mode 100644
index 0000000..4d6c160
--- /dev/null
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base/external-secrets
+- ../base
+patches:
+  - path: monitoring-grafana-oauth-config-path.yaml
+    target:
+      name: monitoring-grafana-oauth-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
\ No newline at end of file
diff --git a/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml b/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml
new file mode 100644
index 0000000..db40f35
--- /dev/null
+++ b/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/monitoring/grafana/grafana-oauth2-proxy 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 12:05:46 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 10:04:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 12:05:49 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 10:04:33 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Development changes from 04ec6a6 to a1aa328 on Mon Mar 13 10:39:48 2023 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/external-secrets/kustomization.yaml b/components/monitoring/grafana/base/external-secrets/kustomization.yaml
new file mode 100644
index 0000000..ebcfa07
--- /dev/null
+++ b/components/monitoring/grafana/base/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- monitoring-grafana-oauth-config.yaml
+namespace: appstudio-workload-monitoring
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml b/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml
new file mode 100644
index 0000000..1f427a7
--- /dev/null
+++ b/components/monitoring/grafana/base/external-secrets/monitoring-grafana-oauth-config.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: monitoring-grafana-oauth-config
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+  - extract:
+      key: "" # will be added by the overlays
+      decodingStrategy: Base64
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: grafana-oauth2-proxy
\ No newline at end of file
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
new file mode 100644
index 0000000..4d6c160
--- /dev/null
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base/external-secrets
+- ../base
+patches:
+  - path: monitoring-grafana-oauth-config-path.yaml
+    target:
+      name: monitoring-grafana-oauth-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
\ No newline at end of file
diff --git a/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml b/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml
new file mode 100644
index 0000000..7e3abe5
--- /dev/null
+++ b/components/monitoring/grafana/production/monitoring-grafana-oauth-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/monitoring/prd-m01/grafana/grafana-oauth2-proxy
\ No newline at end of file
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
new file mode 100644
index 0000000..4d6c160
--- /dev/null
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base/external-secrets
+- ../base
+patches:
+  - path: monitoring-grafana-oauth-config-path.yaml
+    target:
+      name: monitoring-grafana-oauth-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
\ No newline at end of file
diff --git a/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml b/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml
new file mode 100644
index 0000000..db40f35
--- /dev/null
+++ b/components/monitoring/grafana/staging/monitoring-grafana-oauth-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/monitoring/grafana/grafana-oauth2-proxy 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a1aa328/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 12:06:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 12:06:13 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 10:04:53 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 10:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Staging changes from b9c19d9 to 04ec6a6 on Mon Mar 13 08:59:29 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index d23d2f4..103fd4c 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 40c2334..7a789df 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index d80a0ce..e64055e 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 10:04:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 10:04:33 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Development changes from b9c19d9 to 04ec6a6 on Mon Mar 13 08:59:29 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index d23d2f4..103fd4c 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 40c2334..7a789df 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index d80a0ce..e64055e 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/openshift?ref=3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f3813849b1eb29a1dd21b33c42d681c7fc658e86
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 3005fd097b2e28f006ed7d97fe4705cb2377ec2b
+    newTag: f3813849b1eb29a1dd21b33c42d681c7fc658e86
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-04ec6a6/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 10:04:53 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 10:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:05:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 08:05:36 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Staging changes from f4d7c00 to b9c19d9 on Mon Mar 13 07:39:03 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 97c6fc9..1082ac3 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+  newTag: cc70d4e85a5ec33256921f836e1fde8359eb04d4
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 030f2a8..bf60d49 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
\ No newline at end of file
+    value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 968e264..c0a7d24 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (124 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/jvm-build-service/kustomize.out
849a850
>   - delete
856a858
>   - patch
861,872d862
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-image-secrets
<   - jvm-build-git-secrets
883,884d872
<   - list
<   - watch
886,892d873
< - apiGroups:
<   - apps
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - deployments
<   verbs:
896,903c877,878
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-tls-ca
<   resources:
<   - configmaps
<   verbs:
<   - delete
---
>   - list
>   - watch
910a886,890
>   - patch
>   - list
>   - watch
>   - delete
>   - update
917a898
>   - patch
920,927d900
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - services
<   verbs:
<   - patch
935a909
>   - patch
938,945d911
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - serviceaccounts
<   verbs:
<   - patch
961a928
>   - patch
964,971d930
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - rolebindings
<   verbs:
<   - patch
1088,1089c1047,1048
<           value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cc70d4e85a5ec33256921f836e1fde8359eb04d4
---
>           value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
1116c1075
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1120c1079
<       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1122c1081
<       tag: jdk:8,maven:3.8,gradle:8.0.2;7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
1124c1083
<       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1126c1085
<       tag: jdk:11,maven:3.8,gradle:8.0.2;7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:11,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
1128c1087
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1130c1089
<       tag: jdk:17,maven:3.8,gradle:8.0.2;7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:17,maven:3.8,gradle:7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/13 08:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:06:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/13 08:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:06:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Development changes from f4d7c00 to b9c19d9 on Mon Mar 13 07:39:03 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 97c6fc9..1082ac3 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+  newTag: cc70d4e85a5ec33256921f836e1fde8359eb04d4
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 030f2a8..bf60d49 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
\ No newline at end of file
+    value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 968e264..c0a7d24 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (121 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/jvm-build-service/kustomize.out
849a850
>   - delete
856a858
>   - patch
861,872d862
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - persistentvolumeclaims
<   verbs:
<   - patch
<   - delete
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-image-secrets
<   - jvm-build-git-secrets
883,884d872
<   - list
<   - watch
886,892d873
< - apiGroups:
<   - apps
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - deployments
<   verbs:
896,903c877,878
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-tls-ca
<   resources:
<   - configmaps
<   verbs:
<   - delete
---
>   - list
>   - watch
910a886,890
>   - patch
>   - list
>   - watch
>   - delete
>   - update
917a898
>   - patch
920,927d900
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - services
<   verbs:
<   - patch
935a909
>   - patch
938,945d911
< - apiGroups:
<   - ""
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - serviceaccounts
<   verbs:
<   - patch
961a928
>   - patch
964,971d930
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resourceNames:
<   - jvm-build-workspace-artifact-cache
<   resources:
<   - rolebindings
<   verbs:
<   - patch
1088,1089c1047,1048
<           value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cc70d4e85a5ec33256921f836e1fde8359eb04d4
---
>           value: 45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:45b1f0cb3762952135a9ec6c62d79c1132fdaa6c
1116c1075
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1120c1079
<       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk8-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1122c1081
<       tag: jdk:8,maven:3.8,gradle:8.0.2;7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
1124c1083
<       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk11-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1126c1085
<       tag: jdk:11,maven:3.8,gradle:8.0.2;7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:11,maven:3.8,gradle:7.4.2;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
1128c1087
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:72d5d218e884a11f232726007ab08aeb1ceebb0c
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:9ea078e73a7d8cae2a39439db3f2825fd18fd4a7
1130c1089
<       tag: jdk:17,maven:3.8,gradle:8.0.2;7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:17,maven:3.8,gradle:7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b9c19d9/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f4d7c00/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/13 08:05:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/13 08:05:36 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/13 08:06:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/13 08:06:36 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>
