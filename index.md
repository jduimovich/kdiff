# kustomize changes tracked by commits 
### This file generated at Mon Oct 14 20:06:24 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0a4ce91e to 03ab5887 on Mon Oct 14 19:00:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index d9817b06..5a9a174d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2d08db1d..8528b071 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 namespace: release-service 
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
<h3>1: Staging changes from 0a4ce91e to 03ab5887 on Mon Oct 14 19:00:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index d9817b06..5a9a174d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2d08db1d..8528b071 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 namespace: release-service 
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
<h3>1: Development changes from 0a4ce91e to 03ab5887 on Mon Oct 14 19:00:10 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index d9817b06..5a9a174d 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 2d08db1d..8528b071 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+  - https://github.com/konflux-ci/release-service/config/default?ref=3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
+    newTag: 3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0a4ce91e/development/components/release/development/kustomize.out.yaml
1997c1997
<         image: quay.io/konflux-ci/release-service:3ba2cdd0e333d9bbbe94de4fa39ebffee6d9c8a3
---
>         image: quay.io/konflux-ci/release-service:36faeb1792ecf283a10e7ea8b7d1208af77b16ec 
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
<h3>2: Production changes from 0f168fa5 to 0a4ce91e on Mon Oct 14 17:54:13 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index b0de9f0c..2dff07c8 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index 660f2d31..5eca5804 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 900c4adf..cbcc121f 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
index 0bfc583c..0b485b0c 100644
--- a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/server/config/crd/
-
+- ../../team
diff --git a/components/workspaces/team/kustomization.yaml b/components/workspaces/team/kustomization.yaml
new file mode 100644
index 00000000..4207014d
--- /dev/null
+++ b/components/workspaces/team/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces-team-role.yaml
+- workspaces-team-rolebinding.yaml
diff --git a/components/workspaces/team/workspaces-team-role.yaml b/components/workspaces/team/workspaces-team-role.yaml
new file mode 100644
index 00000000..0ad6041e
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-role.yaml
@@ -0,0 +1,12 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspaces-service-maintainer
+rules:
+- apiGroups:
+  - workspaces.konflux-ci.dev
+  resources:
+  - '*'
+  verbs:
+  - '*'
diff --git a/components/workspaces/team/workspaces-team-rolebinding.yaml b/components/workspaces/team/workspaces-team-rolebinding.yaml
new file mode 100644
index 00000000..483e666f
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-rolebinding.yaml
@@ -0,0 +1,13 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-service-maintainer
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-core
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspaces-service-maintainer 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (84 lines)</summary>  

``` 
./commit-0f168fa5/production/components/workspaces/production/stone-prd-host1/kustomize.out.yaml
451,462d450
< kind: Role
< metadata:
<   name: workspaces-service-maintainer
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
663,675d650
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-service-maintainer
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-service-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
./commit-0f168fa5/production/components/workspaces/production/stone-prod-p01/kustomize.out.yaml
451,462d450
< kind: Role
< metadata:
<   name: workspaces-service-maintainer
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
663,675d650
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-service-maintainer
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-service-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
./commit-0f168fa5/production/components/workspaces/production/stone-prod-p02/kustomize.out.yaml
451,462d450
< kind: Role
< metadata:
<   name: workspaces-service-maintainer
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
663,675d650
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-service-maintainer
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-service-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core 
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
<h3>2: Staging changes from 0f168fa5 to 0a4ce91e on Mon Oct 14 17:54:13 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index b0de9f0c..2dff07c8 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index 660f2d31..5eca5804 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 900c4adf..cbcc121f 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
index 0bfc583c..0b485b0c 100644
--- a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/server/config/crd/
-
+- ../../team
diff --git a/components/workspaces/team/kustomization.yaml b/components/workspaces/team/kustomization.yaml
new file mode 100644
index 00000000..4207014d
--- /dev/null
+++ b/components/workspaces/team/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces-team-role.yaml
+- workspaces-team-rolebinding.yaml
diff --git a/components/workspaces/team/workspaces-team-role.yaml b/components/workspaces/team/workspaces-team-role.yaml
new file mode 100644
index 00000000..0ad6041e
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-role.yaml
@@ -0,0 +1,12 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspaces-service-maintainer
+rules:
+- apiGroups:
+  - workspaces.konflux-ci.dev
+  resources:
+  - '*'
+  verbs:
+  - '*'
diff --git a/components/workspaces/team/workspaces-team-rolebinding.yaml b/components/workspaces/team/workspaces-team-rolebinding.yaml
new file mode 100644
index 00000000..483e666f
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-rolebinding.yaml
@@ -0,0 +1,13 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-service-maintainer
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-core
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspaces-service-maintainer 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (83 lines)</summary>  

``` 
./commit-0f168fa5/staging/components/workspaces/staging/stone-stage-p01/kustomize.out.yaml
451,462d450
< kind: Role
< metadata:
<   name: workspaces-service-maintainer
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
663,675d650
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-service-maintainer
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-service-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
./commit-0f168fa5/staging/components/workspaces/staging/stone-stg-host/kustomize.out.yaml
451,462d450
< kind: Role
< metadata:
<   name: workspaces-service-maintainer
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
663,675d650
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-service-maintainer
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-service-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
./commit-0f168fa5/staging/components/workspaces/staging/stone-stg-rh01/kustomize.out.yaml
147,171d146
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   name: workspaces-service-maintainer
< rules:
< - apiGroups:
<   - workspaces.konflux-ci.dev
<   resources:
<   - '*'
<   verbs:
<   - '*'
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: workspaces-service-maintainer
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: Role
<   name: workspaces-service-maintainer
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core 
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
<h3>2: Development changes from 0f168fa5 to 0a4ce91e on Mon Oct 14 17:54:13 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/workspaces/production/stone-prd-host1/kustomization.yaml b/components/workspaces/production/stone-prd-host1/kustomization.yaml
index b0de9f0c..2dff07c8 100644
--- a/components/workspaces/production/stone-prd-host1/kustomization.yaml
+++ b/components/workspaces/production/stone-prd-host1/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p01/kustomization.yaml b/components/workspaces/production/stone-prod-p01/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p01/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/production/stone-prod-p02/kustomization.yaml b/components/workspaces/production/stone-prod-p02/kustomization.yaml
index 0c9205ec..5a9dc23f 100644
--- a/components/workspaces/production/stone-prod-p02/kustomization.yaml
+++ b/components/workspaces/production/stone-prod-p02/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stage-p01/kustomization.yaml b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
index 660f2d31..5eca5804 100644
--- a/components/workspaces/staging/stone-stage-p01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-host/kustomization.yaml b/components/workspaces/staging/stone-stg-host/kustomization.yaml
index 900c4adf..cbcc121f 100644
--- a/components/workspaces/staging/stone-stg-host/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-host/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../../base/
 - route.yaml
+- ../../team
 images:
 - name: quay.io/konflux-workspaces/workspaces-server
   newTag: v0.1.0-alpha7
diff --git a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
index 0bfc583c..0b485b0c 100644
--- a/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
+++ b/components/workspaces/staging/stone-stg-rh01/kustomization.yaml
@@ -2,4 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../../base/server/config/crd/
-
+- ../../team
diff --git a/components/workspaces/team/kustomization.yaml b/components/workspaces/team/kustomization.yaml
new file mode 100644
index 00000000..4207014d
--- /dev/null
+++ b/components/workspaces/team/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- workspaces-team-role.yaml
+- workspaces-team-rolebinding.yaml
diff --git a/components/workspaces/team/workspaces-team-role.yaml b/components/workspaces/team/workspaces-team-role.yaml
new file mode 100644
index 00000000..0ad6041e
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-role.yaml
@@ -0,0 +1,12 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  name: workspaces-service-maintainer
+rules:
+- apiGroups:
+  - workspaces.konflux-ci.dev
+  resources:
+  - '*'
+  verbs:
+  - '*'
diff --git a/components/workspaces/team/workspaces-team-rolebinding.yaml b/components/workspaces/team/workspaces-team-rolebinding.yaml
new file mode 100644
index 00000000..483e666f
--- /dev/null
+++ b/components/workspaces/team/workspaces-team-rolebinding.yaml
@@ -0,0 +1,13 @@
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: workspaces-service-maintainer
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-core
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: workspaces-service-maintainer 
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
<h3>3: Production changes from bc52efc0 to 0f168fa5 on Mon Oct 14 15:17:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e7688d2..2a382bf0 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
 
 namespace: release-service
  
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
<h3>3: Staging changes from bc52efc0 to 0f168fa5 on Mon Oct 14 15:17:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e7688d2..2a382bf0 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (166 lines)</summary>  

``` 
./commit-bc52efc0/staging/components/release/staging/kustomize.out.yaml
64,103d63
<               collectors:
<                 description: Collectors is a list of data collectors to be executed
<                   as part of the release process
<                 items:
<                   description: Collector represents a reference to a Collector to
<                     be executed as part of the release workflow.
<                   properties:
<                     name:
<                       description: Name of the collector
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                     params:
<                       description: Params is a slice of parameters for a given collector
<                       items:
<                         description: Param represents a parameter for a collector
<                         properties:
<                           name:
<                             description: Name is the name of the parameter
<                             type: string
<                           value:
<                             description: Value is the value of the parameter
<                             type: string
<                         required:
<                         - name
<                         - value
<                         type: object
<                       type: array
<                     timeout:
<                       description: Timeout in seconds for the collector to execute
<                       type: integer
<                     type:
<                       description: Type is the type of collector to be used
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   required:
<                   - name
<                   - params
<                   - type
<                   type: object
<                 type: array
183a144
>             - pipeline
339,378d299
<               collectors:
<                 description: Collectors is a list of data collectors to be executed
<                   as part of the release process
<                 items:
<                   description: Collector represents a reference to a Collector to
<                     be executed as part of the release workflow.
<                   properties:
<                     name:
<                       description: Name of the collector
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                     params:
<                       description: Params is a slice of parameters for a given collector
<                       items:
<                         description: Param represents a parameter for a collector
<                         properties:
<                           name:
<                             description: Name is the name of the parameter
<                             type: string
<                           value:
<                             description: Value is the value of the parameter
<                             type: string
<                         required:
<                         - name
<                         - value
<                         type: object
<                       type: array
<                     timeout:
<                       description: Timeout in seconds for the collector to execute
<                       type: integer
<                     type:
<                       description: Type is the type of collector to be used
<                       pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                       type: string
<                   required:
<                   - name
<                   - params
<                   - type
<                   type: object
<                 type: array
668,672d588
<               collectors:
<                 description: Collectors is an unstructured key used for storing all
<                   the collectors results generated by the Collectors Pipeline
<                 type: object
<                 x-kubernetes-preserve-unknown-fields: true
752,754c668,670
<               managedProcessing:
<                 description: ManagedProcessing contains information about the release
<                   managed processing
---
>               postActionsExecution:
>                 description: PostActionsExecution contains information about the post-actions
>                   execution
757,758c673,674
<                     description: CompletionTime is the time when the Release processing
<                       was completed
---
>                     description: CompletionTime is the time when the Release post-actions
>                       execution was completed
761,771d676
<                   pipelineRun:
<                     description: PipelineRun contains the namespaced name of the managed
<                       Release PipelineRun executed as part of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   roleBinding:
<                     description: |-
<                       RoleBinding contains the namespaced name of the roleBinding created for the managed Release PipelineRun
<                       executed as part of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
773,774c678,679
<                     description: StartTime is the time when the Release processing
<                       started
---
>                     description: StartTime is the time when the Release post-actions
>                       execution started
778,780c683,684
<               postActionsExecution:
<                 description: PostActionsExecution contains information about the post-actions
<                   execution
---
>               processing:
>                 description: Processing contains information about the release processing
813,838d716
<               tenantProcessing:
<                 description: TenantProcessing contains information about the release
<                   tenant processing
<                 properties:
<                   completionTime:
<                     description: CompletionTime is the time when the Release processing
<                       was completed
<                     format: date-time
<                     type: string
<                   pipelineRun:
<                     description: PipelineRun contains the namespaced name of the managed
<                       Release PipelineRun executed as part of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   roleBinding:
<                     description: |-
<                       RoleBinding contains the namespaced name of the roleBinding created for the managed Release PipelineRun
<                       executed as part of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
<                   startTime:
<                     description: StartTime is the time when the Release processing
<                       started
<                     format: date-time
<                     type: string
<                 type: object
901a780,783
>               advisoryRepo:
>                 description: AdvisoryRepo is the repo to create advisories in during
>                   the managed release PipelineRun
>                 type: string
1997c1879
<         image: quay.io/konflux-ci/release-service:36faeb1792ecf283a10e7ea8b7d1208af77b16ec
---
>         image: quay.io/konflux-ci/release-service:1072e7ad23bca36680a60504a2a2a3c0ae6d82e1 
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
<h3>3: Development changes from bc52efc0 to 0f168fa5 on Mon Oct 14 15:17:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e7688d2..2a382bf0 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+  - https://github.com/konflux-ci/release-service/config/default?ref=36faeb1792ecf283a10e7ea8b7d1208af77b16ec
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 1072e7ad23bca36680a60504a2a2a3c0ae6d82e1
+    newTag: 36faeb1792ecf283a10e7ea8b7d1208af77b16ec
 
 namespace: release-service
  
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
<h3>4: Production changes from c6ac9f39 to bc52efc0 on Mon Oct 14 13:46:42 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
index fab2b210..043ec1cd 100644
--- a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -25,6 +25,9 @@ http:
     jwt-authorizer:
       plugin:
         jwt:
+          payloadFields:
+          - sub
+          - exp
           required: true
           keys: []
           jwtHeaders: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-c6ac9f39/production/components/workspaces/production/stone-prd-host1/kustomize.out.yaml
752,754d751
<               payloadFields:
<               - sub
<               - exp
./commit-c6ac9f39/production/components/workspaces/production/stone-prod-p01/kustomize.out.yaml
752,754d751
<               payloadFields:
<               - sub
<               - exp
./commit-c6ac9f39/production/components/workspaces/production/stone-prod-p02/kustomize.out.yaml
752,754d751
<               payloadFields:
<               - sub
<               - exp 
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
<h3>4: Staging changes from c6ac9f39 to bc52efc0 on Mon Oct 14 13:46:42 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
index fab2b210..043ec1cd 100644
--- a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -25,6 +25,9 @@ http:
     jwt-authorizer:
       plugin:
         jwt:
+          payloadFields:
+          - sub
+          - exp
           required: true
           keys: []
           jwtHeaders: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-c6ac9f39/staging/components/workspaces/staging/stone-stage-p01/kustomize.out.yaml
752,754d751
<               payloadFields:
<               - sub
<               - exp
./commit-c6ac9f39/staging/components/workspaces/staging/stone-stg-host/kustomize.out.yaml
752,754d751
<               payloadFields:
<               - sub
<               - exp 
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
<h3>4: Development changes from c6ac9f39 to bc52efc0 on Mon Oct 14 13:46:42 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
index fab2b210..043ec1cd 100644
--- a/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
+++ b/components/workspaces/base/server/config/server/proxy-config/dynamic/config.yaml
@@ -25,6 +25,9 @@ http:
     jwt-authorizer:
       plugin:
         jwt:
+          payloadFields:
+          - sub
+          - exp
           required: true
           keys: []
           jwtHeaders: 
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
