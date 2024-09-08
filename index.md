# kustomize changes tracked by commits 
### This file generated at Sun Sep  8 04:02:43 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 07e3bbc9 to 9b7e6838 on Fri Sep 6 15:53:51 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 20e21944..88c02784 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=dd06f3ae65e060b4ee78ecde88c3fc10309409f0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index beb927b2..3f57d1d2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+  - https://github.com/konflux-ci/release-service/config/default?ref=dd06f3ae65e060b4ee78ecde88c3fc10309409f0
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+    newTag: dd06f3ae65e060b4ee78ecde88c3fc10309409f0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 07e3bbc9 to 9b7e6838 on Fri Sep 6 15:53:51 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 20e21944..88c02784 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=dd06f3ae65e060b4ee78ecde88c3fc10309409f0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index beb927b2..3f57d1d2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+  - https://github.com/konflux-ci/release-service/config/default?ref=dd06f3ae65e060b4ee78ecde88c3fc10309409f0
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+    newTag: dd06f3ae65e060b4ee78ecde88c3fc10309409f0
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 07e3bbc9 to 9b7e6838 on Fri Sep 6 15:53:51 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 20e21944..88c02784 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=dd06f3ae65e060b4ee78ecde88c3fc10309409f0
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index beb927b2..3f57d1d2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+  - https://github.com/konflux-ci/release-service/config/default?ref=dd06f3ae65e060b4ee78ecde88c3fc10309409f0
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 5bf6972751648803ae9acfb2b3f4cfc4f04d647a
+    newTag: dd06f3ae65e060b4ee78ecde88c3fc10309409f0
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-07e3bbc9/development/components/release/development/kustomize.out.yaml
1935c1935
<         image: quay.io/konflux-ci/release-service:dd06f3ae65e060b4ee78ecde88c3fc10309409f0
---
>         image: quay.io/konflux-ci/release-service:5bf6972751648803ae9acfb2b3f4cfc4f04d647a 
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
<h3>2: Production changes from 288b264f to 07e3bbc9 on Fri Sep 6 14:56:31 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index c5fd397d..f1e4d786 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -126,3 +126,13 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
   name: view-cluster-version
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: everyone-view-cluster-monitoring
+subjects: [] # added by patch to avoid duplicating the groups
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: cluster-monitoring-view
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index c7380b60..fe13e031 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -26,3 +26,9 @@ patches:
       kind: ClusterRoleBinding
       group: rbac.authorization.k8s.io
       version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-monitoring
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-288b264f/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
671,728d670
<   name: everyone-view-cluster-monitoring
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: cluster-monitoring-view
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-build
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-ec
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-gitops
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-hac
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-infra
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-hac
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-o11y
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-performance
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-qe
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-release-team
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
./commit-288b264f/production/components/authentication/production/stone-prod-p02/kustomize.out.yaml
671,728d670
<   name: everyone-view-cluster-monitoring
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: cluster-monitoring-view
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-build
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-ec
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-gitops
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-hac
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-infra
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-hac
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-o11y
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-performance
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-qe
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-release-team
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata: 
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
<h3>2: Staging changes from 288b264f to 07e3bbc9 on Fri Sep 6 14:56:31 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index c5fd397d..f1e4d786 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -126,3 +126,13 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
   name: view-cluster-version
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: everyone-view-cluster-monitoring
+subjects: [] # added by patch to avoid duplicating the groups
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: cluster-monitoring-view
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index c7380b60..fe13e031 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -26,3 +26,9 @@ patches:
       kind: ClusterRoleBinding
       group: rbac.authorization.k8s.io
       version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-monitoring
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (60 lines)</summary>  

``` 
./commit-288b264f/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
671,728d670
<   name: everyone-view-cluster-monitoring
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: cluster-monitoring-view
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-build
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-contributors
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-core
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-ec
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-gitops
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-hac
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-has
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-infra
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-integration
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-hac
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-mintmaker-team
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-o11y
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-performance
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-pipeline-service
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-qe
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-release-team
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 288b264f to 07e3bbc9 on Fri Sep 6 14:56:31 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index c5fd397d..f1e4d786 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -126,3 +126,13 @@ roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
   name: view-cluster-version
+---
+kind: ClusterRoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: everyone-view-cluster-monitoring
+subjects: [] # added by patch to avoid duplicating the groups
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: cluster-monitoring-view
diff --git a/components/authentication/base/kustomization.yaml b/components/authentication/base/kustomization.yaml
index c7380b60..fe13e031 100644
--- a/components/authentication/base/kustomization.yaml
+++ b/components/authentication/base/kustomization.yaml
@@ -26,3 +26,9 @@ patches:
       kind: ClusterRoleBinding
       group: rbac.authorization.k8s.io
       version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-monitoring
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1 
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
<h3>3: Production changes from aa72ceaa to 288b264f on Fri Sep 6 11:10:03 2024 </h3>  
 
<details> 
<summary>Git Diff (323 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
deleted file mode 100644
index ee3ac391..00000000
--- a/components/enterprise-contract/download-service.yaml
+++ /dev/null
@@ -1,276 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: ec-cli-download-role
-  namespace: enterprise-contract-service
-rules:
-  - apiGroups:
-      - route.openshift.io
-    resourceNames:
-      - ec-cli-download-route
-    resources:
-      - routes
-    verbs:
-      - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: ec-cli-download-role-binding
-  namespace: enterprise-contract-service
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: ec-cli-download-role
-subjects:
-  - kind: ServiceAccount
-    name: default
-    namespace: enterprise-contract-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: ec-cli-download-cluster-role
-  namespace: enterprise-contract-service
-rules:
-  - apiGroups:
-      - console.openshift.io
-    resources:
-      - consoleclidownloads
-    verbs:
-      - create
-      - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: ec-cli-download-cluster-role-binding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: ec-cli-download-cluster-role
-subjects:
-  - kind: ServiceAccount
-    name: default
-    namespace: enterprise-contract-service
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-wave: 2
-    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
-    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-deployment
-  namespace: enterprise-contract-service
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: ec-cli-download
-  template:
-    metadata:
-      labels:
-        app.kubernetes.io/name: ec-cli-download
-    spec:
-      containers:
-        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
-          name: http
-          ports:
-            - containerPort: 8443
-              name: https
-              protocol: TCP
-          resources:
-            limits:
-              cpu: 100m
-              memory: 100Mi
-            requests:
-              cpu: 100m
-              memory: 10Mi
-          securityContext:
-            #readOnlyRootFilesystem: true
-            runAsNonRoot: true
-          volumeMounts:
-            - mountPath: /var/www/html
-              name: wwwdata
-              readOnly: true
-            - mountPath: /opt/app-root/httpd-ssl/private
-              name: tls-key
-              readOnly: true
-            - mountPath: /opt/app-root/httpd-ssl/certs
-              name: tls-certificate
-              readOnly: true
-      initContainers:
-        - args:
-            - |
-              #!/usr/bin/bash
-
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-
-              function handle_error {
-                printf 'Error on line #%s\nCommand: %s\n' "$(caller)" "${BASH_COMMAND}"
-                exit 1
-              }
-              trap handle_error ERR
-
-              imgref=$({
-                dir="$(mktemp --directory --tmpdir=.)"
-                cd "${dir}"
-                oc image extract "$EC_TASK_BUNDLE_REF"
-                jq -r '.spec.steps[0].image' verify-enterprise-contract
-                cd ..
-                rm -rf "${dir}"
-              })
-              echo "Determined ec CLI image to be ${imgref}"
-
-              base="${imgref%:*}"
-              base="${imgref%@*}"
-
-              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
-
-              download_ec() {
-                os="$1"
-                architecture="$2"
-                digest="$3"
-
-                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
-
-                mkdir -p "${os}_${architecture}"
-                oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
-                chmod +x "${os}_${architecture}/ec"
-                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
-                echo "Downloaded ${base}@${digest}"
-              }
-
-              while read -r line; do
-                read -r -a args <<< "${line}"
-                download_ec "${args[@]}" &
-              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
-
-              pids=$(jobs -p)
-              (
-                trap 'exit 0' TERM
-                while true
-                do
-                  echo Downloading...
-                  sleep 3
-                done
-              ) &
-              ticker_pid=$!
-
-              # shellcheck disable=SC2046
-              wait $pids
-              kill $ticker_pid
-
-              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
-
-              {
-                echo "apiVersion: console.openshift.io/v1
-              kind: ConsoleCLIDownload
-              metadata:
-                name: ec-cli
-              spec:
-                description: |
-                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
-                displayName: ec - Enterprise Contract CLI
-                links:"
-                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
-                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
-              } | oc apply -f -
-
-              {
-                echo '<!doctype html>
-              <html>
-              <style>
-              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
-              ul { list-style: none; padding-left: 0; }
-              </style>
-              <body>
-              <ul>'
-                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
-                echo '</ul>
-              </body>
-              </html>'
-              } > index.html
-          command:
-            - /bin/bash
-            - -c
-          env:
-            - name: EC_TASK_BUNDLE_REF
-              valueFrom:
-                configMapKeyRef:
-                  key: verify_ec_task_bundle
-                  name: ec-defaults
-          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
-          name: download
-          resources:
-            limits:
-              cpu: 1000m
-              memory: 512Mi
-            requests:
-              cpu: 500m
-              memory: 128Mi
-          securityContext:
-            readOnlyRootFilesystem: true
-            runAsNonRoot: true
-          volumeMounts:
-            - mountPath: /var/www/html
-              name: wwwdata
-          workingDir: /var/www/html
-      volumes:
-        - emptyDir: {}
-          name: wwwdata
-        - name: tls-key
-          secret:
-            items:
-              - key: tls.key
-                path: server.pem
-            secretName: ec-cli-download-tls
-        - name: tls-certificate
-          secret:
-            items:
-              - key: tls.crt
-                path: server.pem
-            secretName: ec-cli-download-tls
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-wave: 2
-    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-service
-  namespace: enterprise-contract-service
-spec:
-  ports:
-    - name: https
-      port: 8443
-      targetPort: https
-  selector:
-    app.kubernetes.io/name: ec-cli-download
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-route
-  namespace: enterprise-contract-service
-spec:
-  port:
-    targetPort: https
-  tls:
-    termination: reencrypt
-  to:
-    kind: Service
-    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 3c6db2b4..02a6ee72 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
-  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator:
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 5be05762..f562995e 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,9 +60,6 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
-## Enterprise contract changes
-export EC_DISABLE_DOWNLOAD_SERVICE=
-
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index dffc8650..c724f440 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,10 +137,6 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
-if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
-  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
-fi
-
 # After changes introduced in https://github.com/redhat-appstudio/infra-deployments/pull/4415/files the nodes need to be labeled
 nodes=$(kubectl get nodes -o name)
 node_count=$(echo "$nodes" | wc -l) 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (283 lines)</summary>  

``` 
./commit-aa72ceaa/production/components/enterprise-contract/kustomize.out.yaml
234a235,263
> kind: Role
> metadata:
>   name: ec-cli-download-role
>   namespace: enterprise-contract-service
> rules:
> - apiGroups:
>   - route.openshift.io
>   resourceNames:
>   - ec-cli-download-route
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: ec-cli-download-cluster-role
>   namespace: enterprise-contract-service
> rules:
> - apiGroups:
>   - console.openshift.io
>   resources:
>   - consoleclidownloads
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
302a332,345
>   name: ec-cli-download-role-binding
>   namespace: enterprise-contract-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: ec-cli-download-role
> subjects:
> - kind: ServiceAccount
>   name: default
>   namespace: enterprise-contract-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
327a371,383
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: ec-cli-download-cluster-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: ec-cli-download-cluster-role
> subjects:
> - kind: ServiceAccount
>   name: default
>   namespace: enterprise-contract-service
> ---
338a395,598
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-wave: "2"
>     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-service
>   namespace: enterprise-contract-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     targetPort: https
>   selector:
>     app.kubernetes.io/name: ec-cli-download
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-wave: "2"
>     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
>       only has the latest tag, and that is the version we want here
>     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
>       its configuration
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-deployment
>   namespace: enterprise-contract-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/name: ec-cli-download
>   template:
>     metadata:
>       labels:
>         app.kubernetes.io/name: ec-cli-download
>     spec:
>       containers:
>       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
>         name: http
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 100m
>             memory: 100Mi
>           requests:
>             cpu: 100m
>             memory: 10Mi
>         securityContext:
>           runAsNonRoot: true
>         volumeMounts:
>         - mountPath: /var/www/html
>           name: wwwdata
>           readOnly: true
>         - mountPath: /opt/app-root/httpd-ssl/private
>           name: tls-key
>           readOnly: true
>         - mountPath: /opt/app-root/httpd-ssl/certs
>           name: tls-certificate
>           readOnly: true
>       initContainers:
>       - args:
>         - |
>           #!/usr/bin/bash
> 
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           function handle_error {
>             printf 'Error on line #%s\nCommand: %s\n' "$(caller)" "${BASH_COMMAND}"
>             exit 1
>           }
>           trap handle_error ERR
> 
>           imgref=$({
>             dir="$(mktemp --directory --tmpdir=.)"
>             cd "${dir}"
>             oc image extract "$EC_TASK_BUNDLE_REF"
>             jq -r '.spec.steps[0].image' verify-enterprise-contract
>             cd ..
>             rm -rf "${dir}"
>           })
>           echo "Determined ec CLI image to be ${imgref}"
> 
>           base="${imgref%:*}"
>           base="${imgref%@*}"
> 
>           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
> 
>           download_ec() {
>             os="$1"
>             architecture="$2"
>             digest="$3"
> 
>             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
> 
>             mkdir -p "${os}_${architecture}"
>             oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
>             chmod +x "${os}_${architecture}/ec"
>             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
>             echo "Downloaded ${base}@${digest}"
>           }
> 
>           while read -r line; do
>             read -r -a args <<< "${line}"
>             download_ec "${args[@]}" &
>           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
> 
>           pids=$(jobs -p)
>           (
>             trap 'exit 0' TERM
>             while true
>             do
>               echo Downloading...
>               sleep 3
>             done
>           ) &
>           ticker_pid=$!
> 
>           # shellcheck disable=SC2046
>           wait $pids
>           kill $ticker_pid
> 
>           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
> 
>           {
>             echo "apiVersion: console.openshift.io/v1
>           kind: ConsoleCLIDownload
>           metadata:
>             name: ec-cli
>           spec:
>             description: |
>               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
>             displayName: ec - Enterprise Contract CLI
>             links:"
>             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
>                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
>           } | oc apply -f -
> 
>           {
>             echo '<!doctype html>
>           <html>
>           <style>
>           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
>           ul { list-style: none; padding-left: 0; }
>           </style>
>           <body>
>           <ul>'
>             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
>             echo '</ul>
>           </body>
>           </html>'
>           } > index.html
>         command:
>         - /bin/bash
>         - -c
>         env:
>         - name: EC_TASK_BUNDLE_REF
>           valueFrom:
>             configMapKeyRef:
>               key: verify_ec_task_bundle
>               name: ec-defaults
>         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
>         name: download
>         resources:
>           limits:
>             cpu: 1000m
>             memory: 512Mi
>           requests:
>             cpu: 500m
>             memory: 128Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>         volumeMounts:
>         - mountPath: /var/www/html
>           name: wwwdata
>         workingDir: /var/www/html
>       volumes:
>       - emptyDir: {}
>         name: wwwdata
>       - name: tls-key
>         secret:
>           items:
>           - key: tls.key
>             path: server.pem
>           secretName: ec-cli-download-tls
>       - name: tls-certificate
>         secret:
>           items:
>           - key: tls.crt
>             path: server.pem
>           secretName: ec-cli-download-tls
> ---
487a748,764
> ---
> apiVersion: route.openshift.io/v1
> kind: Route
> metadata:
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-route
>   namespace: enterprise-contract-service
> spec:
>   port:
>     targetPort: https
>   tls:
>     termination: reencrypt
>   to:
>     kind: Service
>     name: ec-cli-download-service 
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
<h3>3: Staging changes from aa72ceaa to 288b264f on Fri Sep 6 11:10:03 2024 </h3>  
 
<details> 
<summary>Git Diff (323 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
deleted file mode 100644
index ee3ac391..00000000
--- a/components/enterprise-contract/download-service.yaml
+++ /dev/null
@@ -1,276 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: ec-cli-download-role
-  namespace: enterprise-contract-service
-rules:
-  - apiGroups:
-      - route.openshift.io
-    resourceNames:
-      - ec-cli-download-route
-    resources:
-      - routes
-    verbs:
-      - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: ec-cli-download-role-binding
-  namespace: enterprise-contract-service
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: ec-cli-download-role
-subjects:
-  - kind: ServiceAccount
-    name: default
-    namespace: enterprise-contract-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: ec-cli-download-cluster-role
-  namespace: enterprise-contract-service
-rules:
-  - apiGroups:
-      - console.openshift.io
-    resources:
-      - consoleclidownloads
-    verbs:
-      - create
-      - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: ec-cli-download-cluster-role-binding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: ec-cli-download-cluster-role
-subjects:
-  - kind: ServiceAccount
-    name: default
-    namespace: enterprise-contract-service
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-wave: 2
-    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
-    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-deployment
-  namespace: enterprise-contract-service
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: ec-cli-download
-  template:
-    metadata:
-      labels:
-        app.kubernetes.io/name: ec-cli-download
-    spec:
-      containers:
-        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
-          name: http
-          ports:
-            - containerPort: 8443
-              name: https
-              protocol: TCP
-          resources:
-            limits:
-              cpu: 100m
-              memory: 100Mi
-            requests:
-              cpu: 100m
-              memory: 10Mi
-          securityContext:
-            #readOnlyRootFilesystem: true
-            runAsNonRoot: true
-          volumeMounts:
-            - mountPath: /var/www/html
-              name: wwwdata
-              readOnly: true
-            - mountPath: /opt/app-root/httpd-ssl/private
-              name: tls-key
-              readOnly: true
-            - mountPath: /opt/app-root/httpd-ssl/certs
-              name: tls-certificate
-              readOnly: true
-      initContainers:
-        - args:
-            - |
-              #!/usr/bin/bash
-
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-
-              function handle_error {
-                printf 'Error on line #%s\nCommand: %s\n' "$(caller)" "${BASH_COMMAND}"
-                exit 1
-              }
-              trap handle_error ERR
-
-              imgref=$({
-                dir="$(mktemp --directory --tmpdir=.)"
-                cd "${dir}"
-                oc image extract "$EC_TASK_BUNDLE_REF"
-                jq -r '.spec.steps[0].image' verify-enterprise-contract
-                cd ..
-                rm -rf "${dir}"
-              })
-              echo "Determined ec CLI image to be ${imgref}"
-
-              base="${imgref%:*}"
-              base="${imgref%@*}"
-
-              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
-
-              download_ec() {
-                os="$1"
-                architecture="$2"
-                digest="$3"
-
-                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
-
-                mkdir -p "${os}_${architecture}"
-                oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
-                chmod +x "${os}_${architecture}/ec"
-                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
-                echo "Downloaded ${base}@${digest}"
-              }
-
-              while read -r line; do
-                read -r -a args <<< "${line}"
-                download_ec "${args[@]}" &
-              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
-
-              pids=$(jobs -p)
-              (
-                trap 'exit 0' TERM
-                while true
-                do
-                  echo Downloading...
-                  sleep 3
-                done
-              ) &
-              ticker_pid=$!
-
-              # shellcheck disable=SC2046
-              wait $pids
-              kill $ticker_pid
-
-              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
-
-              {
-                echo "apiVersion: console.openshift.io/v1
-              kind: ConsoleCLIDownload
-              metadata:
-                name: ec-cli
-              spec:
-                description: |
-                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
-                displayName: ec - Enterprise Contract CLI
-                links:"
-                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
-                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
-              } | oc apply -f -
-
-              {
-                echo '<!doctype html>
-              <html>
-              <style>
-              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
-              ul { list-style: none; padding-left: 0; }
-              </style>
-              <body>
-              <ul>'
-                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
-                echo '</ul>
-              </body>
-              </html>'
-              } > index.html
-          command:
-            - /bin/bash
-            - -c
-          env:
-            - name: EC_TASK_BUNDLE_REF
-              valueFrom:
-                configMapKeyRef:
-                  key: verify_ec_task_bundle
-                  name: ec-defaults
-          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
-          name: download
-          resources:
-            limits:
-              cpu: 1000m
-              memory: 512Mi
-            requests:
-              cpu: 500m
-              memory: 128Mi
-          securityContext:
-            readOnlyRootFilesystem: true
-            runAsNonRoot: true
-          volumeMounts:
-            - mountPath: /var/www/html
-              name: wwwdata
-          workingDir: /var/www/html
-      volumes:
-        - emptyDir: {}
-          name: wwwdata
-        - name: tls-key
-          secret:
-            items:
-              - key: tls.key
-                path: server.pem
-            secretName: ec-cli-download-tls
-        - name: tls-certificate
-          secret:
-            items:
-              - key: tls.crt
-                path: server.pem
-            secretName: ec-cli-download-tls
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-wave: 2
-    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-service
-  namespace: enterprise-contract-service
-spec:
-  ports:
-    - name: https
-      port: 8443
-      targetPort: https
-  selector:
-    app.kubernetes.io/name: ec-cli-download
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-route
-  namespace: enterprise-contract-service
-spec:
-  port:
-    targetPort: https
-  tls:
-    termination: reencrypt
-  to:
-    kind: Service
-    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 3c6db2b4..02a6ee72 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
-  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator:
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 5be05762..f562995e 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,9 +60,6 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
-## Enterprise contract changes
-export EC_DISABLE_DOWNLOAD_SERVICE=
-
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index dffc8650..c724f440 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,10 +137,6 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
-if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
-  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
-fi
-
 # After changes introduced in https://github.com/redhat-appstudio/infra-deployments/pull/4415/files the nodes need to be labeled
 nodes=$(kubectl get nodes -o name)
 node_count=$(echo "$nodes" | wc -l) 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (283 lines)</summary>  

``` 
./commit-aa72ceaa/staging/components/enterprise-contract/kustomize.out.yaml
234a235,263
> kind: Role
> metadata:
>   name: ec-cli-download-role
>   namespace: enterprise-contract-service
> rules:
> - apiGroups:
>   - route.openshift.io
>   resourceNames:
>   - ec-cli-download-route
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: ec-cli-download-cluster-role
>   namespace: enterprise-contract-service
> rules:
> - apiGroups:
>   - console.openshift.io
>   resources:
>   - consoleclidownloads
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
302a332,345
>   name: ec-cli-download-role-binding
>   namespace: enterprise-contract-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: ec-cli-download-role
> subjects:
> - kind: ServiceAccount
>   name: default
>   namespace: enterprise-contract-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
327a371,383
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: ec-cli-download-cluster-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: ec-cli-download-cluster-role
> subjects:
> - kind: ServiceAccount
>   name: default
>   namespace: enterprise-contract-service
> ---
338a395,598
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-wave: "2"
>     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-service
>   namespace: enterprise-contract-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     targetPort: https
>   selector:
>     app.kubernetes.io/name: ec-cli-download
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-wave: "2"
>     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
>       only has the latest tag, and that is the version we want here
>     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
>       its configuration
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-deployment
>   namespace: enterprise-contract-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/name: ec-cli-download
>   template:
>     metadata:
>       labels:
>         app.kubernetes.io/name: ec-cli-download
>     spec:
>       containers:
>       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
>         name: http
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 100m
>             memory: 100Mi
>           requests:
>             cpu: 100m
>             memory: 10Mi
>         securityContext:
>           runAsNonRoot: true
>         volumeMounts:
>         - mountPath: /var/www/html
>           name: wwwdata
>           readOnly: true
>         - mountPath: /opt/app-root/httpd-ssl/private
>           name: tls-key
>           readOnly: true
>         - mountPath: /opt/app-root/httpd-ssl/certs
>           name: tls-certificate
>           readOnly: true
>       initContainers:
>       - args:
>         - |
>           #!/usr/bin/bash
> 
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           function handle_error {
>             printf 'Error on line #%s\nCommand: %s\n' "$(caller)" "${BASH_COMMAND}"
>             exit 1
>           }
>           trap handle_error ERR
> 
>           imgref=$({
>             dir="$(mktemp --directory --tmpdir=.)"
>             cd "${dir}"
>             oc image extract "$EC_TASK_BUNDLE_REF"
>             jq -r '.spec.steps[0].image' verify-enterprise-contract
>             cd ..
>             rm -rf "${dir}"
>           })
>           echo "Determined ec CLI image to be ${imgref}"
> 
>           base="${imgref%:*}"
>           base="${imgref%@*}"
> 
>           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
> 
>           download_ec() {
>             os="$1"
>             architecture="$2"
>             digest="$3"
> 
>             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
> 
>             mkdir -p "${os}_${architecture}"
>             oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
>             chmod +x "${os}_${architecture}/ec"
>             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
>             echo "Downloaded ${base}@${digest}"
>           }
> 
>           while read -r line; do
>             read -r -a args <<< "${line}"
>             download_ec "${args[@]}" &
>           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
> 
>           pids=$(jobs -p)
>           (
>             trap 'exit 0' TERM
>             while true
>             do
>               echo Downloading...
>               sleep 3
>             done
>           ) &
>           ticker_pid=$!
> 
>           # shellcheck disable=SC2046
>           wait $pids
>           kill $ticker_pid
> 
>           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
> 
>           {
>             echo "apiVersion: console.openshift.io/v1
>           kind: ConsoleCLIDownload
>           metadata:
>             name: ec-cli
>           spec:
>             description: |
>               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
>             displayName: ec - Enterprise Contract CLI
>             links:"
>             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
>                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
>           } | oc apply -f -
> 
>           {
>             echo '<!doctype html>
>           <html>
>           <style>
>           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
>           ul { list-style: none; padding-left: 0; }
>           </style>
>           <body>
>           <ul>'
>             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
>             echo '</ul>
>           </body>
>           </html>'
>           } > index.html
>         command:
>         - /bin/bash
>         - -c
>         env:
>         - name: EC_TASK_BUNDLE_REF
>           valueFrom:
>             configMapKeyRef:
>               key: verify_ec_task_bundle
>               name: ec-defaults
>         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
>         name: download
>         resources:
>           limits:
>             cpu: 1000m
>             memory: 512Mi
>           requests:
>             cpu: 500m
>             memory: 128Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>         volumeMounts:
>         - mountPath: /var/www/html
>           name: wwwdata
>         workingDir: /var/www/html
>       volumes:
>       - emptyDir: {}
>         name: wwwdata
>       - name: tls-key
>         secret:
>           items:
>           - key: tls.key
>             path: server.pem
>           secretName: ec-cli-download-tls
>       - name: tls-certificate
>         secret:
>           items:
>           - key: tls.crt
>             path: server.pem
>           secretName: ec-cli-download-tls
> ---
487a748,764
> ---
> apiVersion: route.openshift.io/v1
> kind: Route
> metadata:
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-route
>   namespace: enterprise-contract-service
> spec:
>   port:
>     targetPort: https
>   tls:
>     termination: reencrypt
>   to:
>     kind: Service
>     name: ec-cli-download-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from aa72ceaa to 288b264f on Fri Sep 6 11:10:03 2024 </h3>  
 
<details> 
<summary>Git Diff (323 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/download-service.yaml b/components/enterprise-contract/download-service.yaml
deleted file mode 100644
index ee3ac391..00000000
--- a/components/enterprise-contract/download-service.yaml
+++ /dev/null
@@ -1,276 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: ec-cli-download-role
-  namespace: enterprise-contract-service
-rules:
-  - apiGroups:
-      - route.openshift.io
-    resourceNames:
-      - ec-cli-download-route
-    resources:
-      - routes
-    verbs:
-      - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: ec-cli-download-role-binding
-  namespace: enterprise-contract-service
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: ec-cli-download-role
-subjects:
-  - kind: ServiceAccount
-    name: default
-    namespace: enterprise-contract-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: ec-cli-download-cluster-role
-  namespace: enterprise-contract-service
-rules:
-  - apiGroups:
-      - console.openshift.io
-    resources:
-      - consoleclidownloads
-    verbs:
-      - create
-      - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: ec-cli-download-cluster-role-binding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: ec-cli-download-cluster-role
-subjects:
-  - kind: ServiceAccount
-    name: default
-    namespace: enterprise-contract-service
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-wave: 2
-    ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream only has the latest tag, and that is the version we want here
-    ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify its configuration
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-deployment
-  namespace: enterprise-contract-service
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: ec-cli-download
-  template:
-    metadata:
-      labels:
-        app.kubernetes.io/name: ec-cli-download
-    spec:
-      containers:
-        - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
-          name: http
-          ports:
-            - containerPort: 8443
-              name: https
-              protocol: TCP
-          resources:
-            limits:
-              cpu: 100m
-              memory: 100Mi
-            requests:
-              cpu: 100m
-              memory: 10Mi
-          securityContext:
-            #readOnlyRootFilesystem: true
-            runAsNonRoot: true
-          volumeMounts:
-            - mountPath: /var/www/html
-              name: wwwdata
-              readOnly: true
-            - mountPath: /opt/app-root/httpd-ssl/private
-              name: tls-key
-              readOnly: true
-            - mountPath: /opt/app-root/httpd-ssl/certs
-              name: tls-certificate
-              readOnly: true
-      initContainers:
-        - args:
-            - |
-              #!/usr/bin/bash
-
-              set -o errexit
-              set -o nounset
-              set -o pipefail
-
-              function handle_error {
-                printf 'Error on line #%s\nCommand: %s\n' "$(caller)" "${BASH_COMMAND}"
-                exit 1
-              }
-              trap handle_error ERR
-
-              imgref=$({
-                dir="$(mktemp --directory --tmpdir=.)"
-                cd "${dir}"
-                oc image extract "$EC_TASK_BUNDLE_REF"
-                jq -r '.spec.steps[0].image' verify-enterprise-contract
-                cd ..
-                rm -rf "${dir}"
-              })
-              echo "Determined ec CLI image to be ${imgref}"
-
-              base="${imgref%:*}"
-              base="${imgref%@*}"
-
-              manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
-
-              download_ec() {
-                os="$1"
-                architecture="$2"
-                digest="$3"
-
-                echo "Downloading ${base}@${digest} for ${os}/${architecture}"
-
-                mkdir -p "${os}_${architecture}"
-                oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
-                chmod +x "${os}_${architecture}/ec"
-                tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
-                echo "Downloaded ${base}@${digest}"
-              }
-
-              while read -r line; do
-                read -r -a args <<< "${line}"
-                download_ec "${args[@]}" &
-              done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
-
-              pids=$(jobs -p)
-              (
-                trap 'exit 0' TERM
-                while true
-                do
-                  echo Downloading...
-                  sleep 3
-                done
-              ) &
-              ticker_pid=$!
-
-              # shellcheck disable=SC2046
-              wait $pids
-              kill $ticker_pid
-
-              ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
-
-              {
-                echo "apiVersion: console.openshift.io/v1
-              kind: ConsoleCLIDownload
-              metadata:
-                name: ec-cli
-              spec:
-                description: |
-                  The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
-                displayName: ec - Enterprise Contract CLI
-                links:"
-                echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
-                    text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
-              } | oc apply -f -
-
-              {
-                echo '<!doctype html>
-              <html>
-              <style>
-              html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
-              ul { list-style: none; padding-left: 0; }
-              </style>
-              <body>
-              <ul>'
-                echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
-                echo '</ul>
-              </body>
-              </html>'
-              } > index.html
-          command:
-            - /bin/bash
-            - -c
-          env:
-            - name: EC_TASK_BUNDLE_REF
-              valueFrom:
-                configMapKeyRef:
-                  key: verify_ec_task_bundle
-                  name: ec-defaults
-          image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
-          name: download
-          resources:
-            limits:
-              cpu: 1000m
-              memory: 512Mi
-            requests:
-              cpu: 500m
-              memory: 128Mi
-          securityContext:
-            readOnlyRootFilesystem: true
-            runAsNonRoot: true
-          volumeMounts:
-            - mountPath: /var/www/html
-              name: wwwdata
-          workingDir: /var/www/html
-      volumes:
-        - emptyDir: {}
-          name: wwwdata
-        - name: tls-key
-          secret:
-            items:
-              - key: tls.key
-                path: server.pem
-            secretName: ec-cli-download-tls
-        - name: tls-certificate
-          secret:
-            items:
-              - key: tls.crt
-                path: server.pem
-            secretName: ec-cli-download-tls
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-wave: 2
-    service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-service
-  namespace: enterprise-contract-service
-spec:
-  ports:
-    - name: https
-      port: 8443
-      targetPort: https
-  selector:
-    app.kubernetes.io/name: ec-cli-download
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  labels:
-    app.kubernetes.io/name: ec-cli-download
-    app.kubernetes.io/part-of: enterprise-contract
-  name: ec-cli-download-route
-  namespace: enterprise-contract-service
-spec:
-  port:
-    targetPort: https
-  tls:
-    termination: reencrypt
-  to:
-    kind: Service
-    name: ec-cli-download-service
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 3c6db2b4..02a6ee72 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -5,7 +5,6 @@ resources:
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
-  - download-service.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator:
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 5be05762..f562995e 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,9 +60,6 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
-## Enterprise contract changes
-export EC_DISABLE_DOWNLOAD_SERVICE=
-
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index dffc8650..c724f440 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,10 +137,6 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
-if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
-  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
-fi
-
 # After changes introduced in https://github.com/redhat-appstudio/infra-deployments/pull/4415/files the nodes need to be labeled
 nodes=$(kubectl get nodes -o name)
 node_count=$(echo "$nodes" | wc -l) 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (283 lines)</summary>  

``` 
./commit-aa72ceaa/development/components/enterprise-contract/kustomize.out.yaml
234a235,263
> kind: Role
> metadata:
>   name: ec-cli-download-role
>   namespace: enterprise-contract-service
> rules:
> - apiGroups:
>   - route.openshift.io
>   resourceNames:
>   - ec-cli-download-route
>   resources:
>   - routes
>   verbs:
>   - get
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   name: ec-cli-download-cluster-role
>   namespace: enterprise-contract-service
> rules:
> - apiGroups:
>   - console.openshift.io
>   resources:
>   - consoleclidownloads
>   verbs:
>   - create
>   - patch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
302a332,345
>   name: ec-cli-download-role-binding
>   namespace: enterprise-contract-service
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: ec-cli-download-role
> subjects:
> - kind: ServiceAccount
>   name: default
>   namespace: enterprise-contract-service
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
327a371,383
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: ec-cli-download-cluster-role-binding
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: ec-cli-download-cluster-role
> subjects:
> - kind: ServiceAccount
>   name: default
>   namespace: enterprise-contract-service
> ---
338a395,598
> apiVersion: v1
> kind: Service
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-wave: "2"
>     service.beta.openshift.io/serving-cert-secret-name: ec-cli-download-tls
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-service
>   namespace: enterprise-contract-service
> spec:
>   ports:
>   - name: https
>     port: 8443
>     targetPort: https
>   selector:
>     app.kubernetes.io/name: ec-cli-download
> ---
> apiVersion: apps/v1
> kind: Deployment
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-wave: "2"
>     ignore-check.kube-linter.io/latest-tag: The openshift/tools:latest ImageStream
>       only has the latest tag, and that is the version we want here
>     ignore-check.kube-linter.io/no-read-only-root-fs: The httpd init scripts modify
>       its configuration
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-deployment
>   namespace: enterprise-contract-service
> spec:
>   replicas: 1
>   selector:
>     matchLabels:
>       app.kubernetes.io/name: ec-cli-download
>   template:
>     metadata:
>       labels:
>         app.kubernetes.io/name: ec-cli-download
>     spec:
>       containers:
>       - image: image-registry.openshift-image-registry.svc:5000/openshift/httpd:2.4-ubi9
>         name: http
>         ports:
>         - containerPort: 8443
>           name: https
>           protocol: TCP
>         resources:
>           limits:
>             cpu: 100m
>             memory: 100Mi
>           requests:
>             cpu: 100m
>             memory: 10Mi
>         securityContext:
>           runAsNonRoot: true
>         volumeMounts:
>         - mountPath: /var/www/html
>           name: wwwdata
>           readOnly: true
>         - mountPath: /opt/app-root/httpd-ssl/private
>           name: tls-key
>           readOnly: true
>         - mountPath: /opt/app-root/httpd-ssl/certs
>           name: tls-certificate
>           readOnly: true
>       initContainers:
>       - args:
>         - |
>           #!/usr/bin/bash
> 
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           function handle_error {
>             printf 'Error on line #%s\nCommand: %s\n' "$(caller)" "${BASH_COMMAND}"
>             exit 1
>           }
>           trap handle_error ERR
> 
>           imgref=$({
>             dir="$(mktemp --directory --tmpdir=.)"
>             cd "${dir}"
>             oc image extract "$EC_TASK_BUNDLE_REF"
>             jq -r '.spec.steps[0].image' verify-enterprise-contract
>             cd ..
>             rm -rf "${dir}"
>           })
>           echo "Determined ec CLI image to be ${imgref}"
> 
>           base="${imgref%:*}"
>           base="${imgref%@*}"
> 
>           manifests="$(oc image info --output=json --show-multiarch=true "${imgref}")"
> 
>           download_ec() {
>             os="$1"
>             architecture="$2"
>             digest="$3"
> 
>             echo "Downloading ${base}@${digest} for ${os}/${architecture}"
> 
>             mkdir -p "${os}_${architecture}"
>             oc image extract "${base}@${digest}" --path /usr/local/bin/ec:"${os}_${architecture}" --confirm
>             chmod +x "${os}_${architecture}/ec"
>             tar czf "${os}_${architecture}/ec_${os}_${architecture}.tar.gz" -C "${os}_${architecture}" ec
>             echo "Downloaded ${base}@${digest}"
>           }
> 
>           while read -r line; do
>             read -r -a args <<< "${line}"
>             download_ec "${args[@]}" &
>           done < <(echo "${manifests}" | jq -r ".[] | \"\(.config.os) \(.config.architecture) \(.digest)\"")
> 
>           pids=$(jobs -p)
>           (
>             trap 'exit 0' TERM
>             while true
>             do
>               echo Downloading...
>               sleep 3
>             done
>           ) &
>           ticker_pid=$!
> 
>           # shellcheck disable=SC2046
>           wait $pids
>           kill $ticker_pid
> 
>           ingress="$(oc get route ec-cli-download-route --output=jsonpath='{.spec.host}')"
> 
>           {
>             echo "apiVersion: console.openshift.io/v1
>           kind: ConsoleCLIDownload
>           metadata:
>             name: ec-cli
>           spec:
>             description: |
>               The \`ec\` CLI is used to evaluate Enterprise Contract policies for Software Supply Chain.
>             displayName: ec - Enterprise Contract CLI
>             links:"
>             echo "${manifests}" | jq -r ".[] | \"    - href: https://${ingress}/\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz
>                 text: Download ec CLI for \(.config.os)/\(.config.architecture)\""
>           } | oc apply -f -
> 
>           {
>             echo '<!doctype html>
>           <html>
>           <style>
>           html { font-family: "RedHatText", "Overpass", overpass, helvetica, arial, sans-serif; line-height: 1.5rem; }
>           ul { list-style: none; padding-left: 0; }
>           </style>
>           <body>
>           <ul>'
>             echo "${manifests}" | jq -r ".[] | \"<li><a href=\\\"\(.config.os)_\(.config.architecture)/ec_\(.config.os)_\(.config.architecture).tar.gz\\\">Download ec CLI for \(.config.os)/\(.config.architecture)</a></li>\""
>             echo '</ul>
>           </body>
>           </html>'
>           } > index.html
>         command:
>         - /bin/bash
>         - -c
>         env:
>         - name: EC_TASK_BUNDLE_REF
>           valueFrom:
>             configMapKeyRef:
>               key: verify_ec_task_bundle
>               name: ec-defaults
>         image: image-registry.openshift-image-registry.svc:5000/openshift/tools:latest
>         name: download
>         resources:
>           limits:
>             cpu: 1000m
>             memory: 512Mi
>           requests:
>             cpu: 500m
>             memory: 128Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>         volumeMounts:
>         - mountPath: /var/www/html
>           name: wwwdata
>         workingDir: /var/www/html
>       volumes:
>       - emptyDir: {}
>         name: wwwdata
>       - name: tls-key
>         secret:
>           items:
>           - key: tls.key
>             path: server.pem
>           secretName: ec-cli-download-tls
>       - name: tls-certificate
>         secret:
>           items:
>           - key: tls.crt
>             path: server.pem
>           secretName: ec-cli-download-tls
> ---
487a748,764
> ---
> apiVersion: route.openshift.io/v1
> kind: Route
> metadata:
>   labels:
>     app.kubernetes.io/name: ec-cli-download
>     app.kubernetes.io/part-of: enterprise-contract
>   name: ec-cli-download-route
>   namespace: enterprise-contract-service
> spec:
>   port:
>     targetPort: https
>   tls:
>     termination: reencrypt
>   to:
>     kind: Service
>     name: ec-cli-download-service 
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
<h3>4: Production changes from b5b8d3cc to aa72ceaa on Fri Sep 6 04:17:09 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 3fcf981d..55ec2c70 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5f364a59..43d1c5f0 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from b5b8d3cc to aa72ceaa on Fri Sep 6 04:17:09 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 3fcf981d..55ec2c70 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5f364a59..43d1c5f0 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-b5b8d3cc/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
427a428
>         "git-submodules",
440,449c441
<         "kustomize",
<         "asdf",
<         "fvm",
<         "git-submodules",
<         "hermit",
<         "homebrew",
<         "nix",
<         "osgi",
<         "pre-commit",
<         "vendir"
---
>         "kustomize"
556,589d547
<       "asdf": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "fvm": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "hermit": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "homebrew": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "nix": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "osgi": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pre-commit": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "vendir": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
670c628
<         image: quay.io/konflux-ci/mintmaker:3e4242a75388470dc59de85f643ca322598e5a7e
---
>         image: quay.io/konflux-ci/mintmaker:3f8721be249d10e09cefea11a945dd5fe6714615 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from b5b8d3cc to aa72ceaa on Fri Sep 6 04:17:09 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 3fcf981d..55ec2c70 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5f364a59..43d1c5f0 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
+  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-b5b8d3cc/development/components/mintmaker/development/kustomize.out.yaml
427a428
>         "git-submodules",
440,449c441
<         "kustomize",
<         "asdf",
<         "fvm",
<         "git-submodules",
<         "hermit",
<         "homebrew",
<         "nix",
<         "osgi",
<         "pre-commit",
<         "vendir"
---
>         "kustomize"
556,589d547
<       "asdf": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "fvm": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "hermit": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "homebrew": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "nix": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "osgi": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "pre-commit": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "vendir": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
669c627
<         image: quay.io/konflux-ci/mintmaker:3e4242a75388470dc59de85f643ca322598e5a7e
---
>         image: quay.io/konflux-ci/mintmaker:3f8721be249d10e09cefea11a945dd5fe6714615 
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
