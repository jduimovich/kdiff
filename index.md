# kustomize changes tracked by commits 
### This file generated at Wed Sep  4 16:06:51 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9c8231c0 to 3eaff004 on Wed Sep 4 15:57:27 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index a807873a..20e21944 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index f21607b6..beb927b2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+  - https://github.com/konflux-ci/release-service/config/default?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+    newTag: 5bf6972751648803ae9acfb2b3f4cfc4f04d647a
 
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
<h3>1: Staging changes from 9c8231c0 to 3eaff004 on Wed Sep 4 15:57:27 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index a807873a..20e21944 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index f21607b6..beb927b2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+  - https://github.com/konflux-ci/release-service/config/default?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+    newTag: 5bf6972751648803ae9acfb2b3f4cfc4f04d647a
 
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
<h3>1: Development changes from 9c8231c0 to 3eaff004 on Wed Sep 4 15:57:27 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index a807873a..20e21944 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index f21607b6..beb927b2 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+  - https://github.com/konflux-ci/release-service/config/default?ref=5bf6972751648803ae9acfb2b3f4cfc4f04d647a
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
+    newTag: 5bf6972751648803ae9acfb2b3f4cfc4f04d647a
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9c8231c0/development/components/release/development/kustomize.out.yaml
1935c1935
<         image: quay.io/konflux-ci/release-service:5bf6972751648803ae9acfb2b3f4cfc4f04d647a
---
>         image: quay.io/konflux-ci/release-service:e54e56cf2495f8dc211a203446ff8a1d7d0d5e28 
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
<h3>2: Production changes from 0ef4c9bd to 9c8231c0 on Wed Sep 4 13:42:04 2024 </h3>  
 
<details> 
<summary>Git Diff (162 lines)</summary>  

``` 
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
deleted file mode 100644
index e8b7a7a3..00000000
--- a/components/notification-controller/base/deployment.yaml
+++ /dev/null
@@ -1,40 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  labels:
-    run: notification-controller
-  name: notification-controller
-  namespace: notification-controller
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: notification-controller
-  template:
-    metadata:
-      labels:
-        run: notification-controller
-    spec:
-      volumes:
-      - name: vol-secret
-        secret:
-          secretName: aws-sns-secret    
-      serviceAccountName: notification-controller-sa
-      containers:
-      - name: notification-controller
-        image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
-        volumeMounts:
-        - name: vol-secret
-          mountPath: /.aws
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-        resources:
-          limits:
-            cpu: 500m
-            memory: 1Gi
-          requests:
-            cpu: 100m
-            memory: 20Mi          
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
deleted file mode 100644
index 490bd913..00000000
--- a/components/notification-controller/base/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- namespace.yaml
-- service-account.yaml
-- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
deleted file mode 100644
index f888b500..00000000
--- a/components/notification-controller/base/namespace.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: notification-controller
-spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
deleted file mode 100644
index 0e0fca63..00000000
--- a/components/notification-controller/base/service-account.yaml
+++ /dev/null
@@ -1,37 +0,0 @@
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: notification-controller-sa
-  namespace: notification-controller
-  annotations:
-    argocd.argoproj.io/compare-options: IgnoreExtraneous  
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: notification-controller-pipelinerun-viewer
-rules:
-- apiGroups:
-  - "tekton.dev"
-  resources:
-  - 'pipelineruns'
-  verbs:
-  - get
-  - list
-  - watch
-  - update
-  - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: notification-controller-pipelinerun-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: notification-controller-pipelinerun-viewer
-subjects:
-- kind: ServiceAccount
-  name: notification-controller-sa
-  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index 2bde27f4..37c17d76 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,10 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../base
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
+
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
 
 patches:
   - path: topic_region_add.yaml
     target:
-      name: notification-controller
+      name: notification-controller-controller-manager
       kind: Deployment
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index bc87ce50..39a1a53f 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,11 +2,18 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../base
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
 - ../base/external-secrets
 
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
+
 patches:
   - path: topic_region_add.yaml
     target:
-      name: notification-controller
+      name: notification-controller-controller-manager
       kind: Deployment 
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
<h3>2: Staging changes from 0ef4c9bd to 9c8231c0 on Wed Sep 4 13:42:04 2024 </h3>  
 
<details> 
<summary>Git Diff (162 lines)</summary>  

``` 
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
deleted file mode 100644
index e8b7a7a3..00000000
--- a/components/notification-controller/base/deployment.yaml
+++ /dev/null
@@ -1,40 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  labels:
-    run: notification-controller
-  name: notification-controller
-  namespace: notification-controller
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: notification-controller
-  template:
-    metadata:
-      labels:
-        run: notification-controller
-    spec:
-      volumes:
-      - name: vol-secret
-        secret:
-          secretName: aws-sns-secret    
-      serviceAccountName: notification-controller-sa
-      containers:
-      - name: notification-controller
-        image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
-        volumeMounts:
-        - name: vol-secret
-          mountPath: /.aws
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-        resources:
-          limits:
-            cpu: 500m
-            memory: 1Gi
-          requests:
-            cpu: 100m
-            memory: 20Mi          
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
deleted file mode 100644
index 490bd913..00000000
--- a/components/notification-controller/base/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- namespace.yaml
-- service-account.yaml
-- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
deleted file mode 100644
index f888b500..00000000
--- a/components/notification-controller/base/namespace.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: notification-controller
-spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
deleted file mode 100644
index 0e0fca63..00000000
--- a/components/notification-controller/base/service-account.yaml
+++ /dev/null
@@ -1,37 +0,0 @@
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: notification-controller-sa
-  namespace: notification-controller
-  annotations:
-    argocd.argoproj.io/compare-options: IgnoreExtraneous  
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: notification-controller-pipelinerun-viewer
-rules:
-- apiGroups:
-  - "tekton.dev"
-  resources:
-  - 'pipelineruns'
-  verbs:
-  - get
-  - list
-  - watch
-  - update
-  - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: notification-controller-pipelinerun-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: notification-controller-pipelinerun-viewer
-subjects:
-- kind: ServiceAccount
-  name: notification-controller-sa
-  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index 2bde27f4..37c17d76 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,10 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../base
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
+
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
 
 patches:
   - path: topic_region_add.yaml
     target:
-      name: notification-controller
+      name: notification-controller-controller-manager
       kind: Deployment
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index bc87ce50..39a1a53f 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,11 +2,18 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../base
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
 - ../base/external-secrets
 
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
+
 patches:
   - path: topic_region_add.yaml
     target:
-      name: notification-controller
+      name: notification-controller-controller-manager
       kind: Deployment 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (266 lines)</summary>  

``` 
./commit-0ef4c9bd/staging/components/notification-controller/staging/kustomize.out.yaml
4,7d3
<   labels:
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: notification-controller
<     control-plane: controller-manager
8a5
> spec: {}
13,19c10,12
<   name: notification-controller-controller-manager
<   namespace: notification-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: notification-controller-metrics-reader
---
>   annotations:
>     argocd.argoproj.io/compare-options: IgnoreExtraneous
>   name: notification-controller-sa
25c18
<   name: notification-controller-manager-role
---
>   name: notification-controller-pipelinerun-viewer
32d24
<   - create
35,36d26
<   - patch
<   - update
38,42d27
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns/finalizers
<   verbs:
44,49d28
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns/status
<   verbs:
<   - get
51,102d29
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: notification-controller-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: notification-controller-prometheus-viewer-role
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: notification-controller-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: notification-controller-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: notification-controller-manager-role
< subjects:
< - kind: ServiceAccount
<   name: notification-controller-controller-manager
<   namespace: notification-controller
107c34
<   name: notification-controller-prometheus-role-binding
---
>   name: notification-controller-pipelinerun-viewer
111c38
<   name: notification-controller-prometheus-viewer-role
---
>   name: notification-controller-pipelinerun-viewer
114,135c41
<   name: notification-controller-metrics-reader
<   namespace: notification-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: notification-controller-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: notification-controller-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: notification-controller-controller-manager
<   namespace: notification-controller
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: notification-controller-metrics-reader
<   name: notification-controller-metrics-reader
---
>   name: notification-controller-sa
137,153d42
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: notification-controller-controller-manager-metrics-service
<   namespace: notification-controller
< spec:
<   ports:
<   - name: https
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: controller-manager
157a47,48
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159,162c50,51
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: notification-controller
<     control-plane: controller-manager
<   name: notification-controller-controller-manager
---
>     run: notification-controller
>   name: notification-controller
168c57
<       control-plane: controller-manager
---
>       run: notification-controller
171,172d59
<       annotations:
<         kubectl.kubernetes.io/default-container: manager
174c61
<         control-plane: controller-manager
---
>         run: notification-controller
177,183c64
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --http2-disable
<         - --v=0
<         env:
---
>       - env:
188,193c69,70
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
---
>         image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
>         name: notification-controller
197c74
<             memory: 128Mi
---
>             memory: 1Gi
199,200c76,77
<             cpu: 5m
<             memory: 64Mi
---
>             cpu: 100m
>             memory: 20Mi
203,234d79
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=127.0.0.1:8080
<         command:
<         - /manager
<         image: quay.io/konflux-ci/notification-service:7045e57c2c14b6c33a4d15e1374290b694a73906
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 10m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
239,242c84
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: notification-controller-controller-manager
<       terminationGracePeriodSeconds: 10
---
>       serviceAccountName: notification-controller-sa
268,294d109
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: notification-controller
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: notification-controller
<     control-plane: controller-manager
<   name: notification-controller-controller-manager-metrics-monitor
<   namespace: notification-controller
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: notification-controller-metrics-reader
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager 
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
<h3>2: Development changes from 0ef4c9bd to 9c8231c0 on Wed Sep 4 13:42:04 2024 </h3>  
 
<details> 
<summary>Git Diff (162 lines)</summary>  

``` 
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
deleted file mode 100644
index e8b7a7a3..00000000
--- a/components/notification-controller/base/deployment.yaml
+++ /dev/null
@@ -1,40 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  labels:
-    run: notification-controller
-  name: notification-controller
-  namespace: notification-controller
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true  
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      run: notification-controller
-  template:
-    metadata:
-      labels:
-        run: notification-controller
-    spec:
-      volumes:
-      - name: vol-secret
-        secret:
-          secretName: aws-sns-secret    
-      serviceAccountName: notification-controller-sa
-      containers:
-      - name: notification-controller
-        image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
-        volumeMounts:
-        - name: vol-secret
-          mountPath: /.aws
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-        resources:
-          limits:
-            cpu: 500m
-            memory: 1Gi
-          requests:
-            cpu: 100m
-            memory: 20Mi          
diff --git a/components/notification-controller/base/kustomization.yaml b/components/notification-controller/base/kustomization.yaml
deleted file mode 100644
index 490bd913..00000000
--- a/components/notification-controller/base/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- namespace.yaml
-- service-account.yaml
-- deployment.yaml
diff --git a/components/notification-controller/base/namespace.yaml b/components/notification-controller/base/namespace.yaml
deleted file mode 100644
index f888b500..00000000
--- a/components/notification-controller/base/namespace.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: notification-controller
-spec: {}
diff --git a/components/notification-controller/base/service-account.yaml b/components/notification-controller/base/service-account.yaml
deleted file mode 100644
index 0e0fca63..00000000
--- a/components/notification-controller/base/service-account.yaml
+++ /dev/null
@@ -1,37 +0,0 @@
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: notification-controller-sa
-  namespace: notification-controller
-  annotations:
-    argocd.argoproj.io/compare-options: IgnoreExtraneous  
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: notification-controller-pipelinerun-viewer
-rules:
-- apiGroups:
-  - "tekton.dev"
-  resources:
-  - 'pipelineruns'
-  verbs:
-  - get
-  - list
-  - watch
-  - update
-  - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: notification-controller-pipelinerun-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: notification-controller-pipelinerun-viewer
-subjects:
-- kind: ServiceAccount
-  name: notification-controller-sa
-  namespace: notification-controller
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index 2bde27f4..37c17d76 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -2,10 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../base
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
+
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
 
 patches:
   - path: topic_region_add.yaml
     target:
-      name: notification-controller
+      name: notification-controller-controller-manager
       kind: Deployment
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index bc87ce50..39a1a53f 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -2,11 +2,18 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- ../base
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
 - ../base/external-secrets
 
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
+
 patches:
   - path: topic_region_add.yaml
     target:
-      name: notification-controller
+      name: notification-controller-controller-manager
       kind: Deployment 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (266 lines)</summary>  

``` 
./commit-0ef4c9bd/development/components/notification-controller/development/kustomize.out.yaml
4,7d3
<   labels:
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: notification-controller
<     control-plane: controller-manager
8a5
> spec: {}
13,19c10,12
<   name: notification-controller-controller-manager
<   namespace: notification-controller
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: notification-controller-metrics-reader
---
>   annotations:
>     argocd.argoproj.io/compare-options: IgnoreExtraneous
>   name: notification-controller-sa
25c18
<   name: notification-controller-manager-role
---
>   name: notification-controller-pipelinerun-viewer
32d24
<   - create
35,36d26
<   - patch
<   - update
38,42d27
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns/finalizers
<   verbs:
44,49d28
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns/status
<   verbs:
<   - get
51,89d29
<   - update
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: notification-controller-metrics-reader
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: notification-controller-prometheus-viewer-role
< rules:
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   name: notification-controller-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
94c34
<   name: notification-controller-manager-rolebinding
---
>   name: notification-controller-pipelinerun-viewer
98c38
<   name: notification-controller-manager-role
---
>   name: notification-controller-pipelinerun-viewer
101c41
<   name: notification-controller-controller-manager
---
>   name: notification-controller-sa
104,154d43
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: notification-controller-prometheus-role-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: notification-controller-prometheus-viewer-role
< subjects:
< - kind: ServiceAccount
<   name: notification-controller-metrics-reader
<   namespace: notification-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: notification-controller-proxy-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: notification-controller-proxy-role
< subjects:
< - kind: ServiceAccount
<   name: notification-controller-controller-manager
<   namespace: notification-controller
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: notification-controller-metrics-reader
<   name: notification-controller-metrics-reader
<   namespace: notification-controller
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: notification-controller-controller-manager-metrics-service
<   namespace: notification-controller
< spec:
<   ports:
<   - name: https
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     control-plane: controller-manager
< ---
157a47,48
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
159,162c50,51
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: notification-controller
<     control-plane: controller-manager
<   name: notification-controller-controller-manager
---
>     run: notification-controller
>   name: notification-controller
168c57
<       control-plane: controller-manager
---
>       run: notification-controller
171,172d59
<       annotations:
<         kubectl.kubernetes.io/default-container: manager
174c61
<         control-plane: controller-manager
---
>         run: notification-controller
177,183c64
<       - args:
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --http2-disable
<         - --v=0
<         env:
---
>       - env:
188,221c69,70
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           readOnlyRootFilesystem: true
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=127.0.0.1:8080
<         command:
<         - /manager
<         image: quay.io/konflux-ci/notification-service:7045e57c2c14b6c33a4d15e1374290b694a73906
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
---
>         image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
>         name: notification-controller
225c74
<             memory: 128Mi
---
>             memory: 1Gi
227,228c76,77
<             cpu: 10m
<             memory: 64Mi
---
>             cpu: 100m
>             memory: 20Mi
230,233d78
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
239,242c84
<       securityContext:
<         runAsNonRoot: true
<       serviceAccountName: notification-controller-controller-manager
<       terminationGracePeriodSeconds: 10
---
>       serviceAccountName: notification-controller-sa
247,273d88
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app.kubernetes.io/component: metrics
<     app.kubernetes.io/created-by: notification-controller
<     app.kubernetes.io/instance: controller-manager-metrics-monitor
<     app.kubernetes.io/managed-by: kustomize
<     app.kubernetes.io/name: servicemonitor
<     app.kubernetes.io/part-of: notification-controller
<     control-plane: controller-manager
<   name: notification-controller-controller-manager-metrics-monitor
<   namespace: notification-controller
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: notification-controller-metrics-reader
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager 
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
<h3>3: Production changes from 5cc35bc4 to 0ef4c9bd on Wed Sep 4 11:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8f5e6d2b..a807873a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index d1947b8f..f21607b6 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
+    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
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
<h3>3: Staging changes from 5cc35bc4 to 0ef4c9bd on Wed Sep 4 11:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8f5e6d2b..a807873a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index d1947b8f..f21607b6 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
+    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
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
<h3>3: Development changes from 5cc35bc4 to 0ef4c9bd on Wed Sep 4 11:56:40 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 8f5e6d2b..a807873a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index d1947b8f..f21607b6 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=64bd76e4fce9e30164e65f4385c1ae094417b91d
+  - https://github.com/konflux-ci/release-service/config/default?ref=e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 64bd76e4fce9e30164e65f4385c1ae094417b91d
+    newTag: e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (81 lines)</summary>  

``` 
./commit-5cc35bc4/development/components/release/development/kustomize.out.yaml
64,100d63
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
337,373d299
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
1935c1861
<         image: quay.io/konflux-ci/release-service:e54e56cf2495f8dc211a203446ff8a1d7d0d5e28
---
>         image: quay.io/konflux-ci/release-service:64bd76e4fce9e30164e65f4385c1ae094417b91d 
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
<h3>4: Production changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 905be112..9738f3b2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04894186..e0089d72 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config 
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
<h3>4: Staging changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 905be112..9738f3b2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04894186..e0089d72 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e8ee1e0d/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:937eb7901882912748bdb4dff6912969b13a7a2c
---
>         image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:937eb7901882912748bdb4dff6912969b13a7a2c
---
>             image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d 
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
<h3>4: Development changes from e8ee1e0d to 5cc35bc4 on Wed Sep 4 05:53:35 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 905be112..9738f3b2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04894186..e0089d72 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=add3753c0877de0abc0753edfec8cec3bae6851d
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=add3753c0877de0abc0753edfec8cec3bae6851d
+- https://github.com/konflux-ci/integration-service/config/default?ref=937eb7901882912748bdb4dff6912969b13a7a2c
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=937eb7901882912748bdb4dff6912969b13a7a2c
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: add3753c0877de0abc0753edfec8cec3bae6851d
+  newTag: 937eb7901882912748bdb4dff6912969b13a7a2c
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e8ee1e0d/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:937eb7901882912748bdb4dff6912969b13a7a2c
---
>         image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:937eb7901882912748bdb4dff6912969b13a7a2c
---
>             image: quay.io/redhat-appstudio/integration-service:add3753c0877de0abc0753edfec8cec3bae6851d 
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
