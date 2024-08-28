# kustomize changes tracked by commits 
### This file generated at Wed Aug 28 20:06:56 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 86b4a901 to 949b4ac5 on Wed Aug 28 19:56:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 0f300634..64594427 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -107,6 +107,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="watcher_workqueue_depth"}'
         - '{__name__="watcher_client_latency_bucket"}'
+        - '{__name__="pac_watcher_work_queue_depth"}'
+        - '{__name__="pac_watcher_client_latency_bucket"}'
         - '{__name__="grpc_server_handled_total", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>1: Staging changes from 86b4a901 to 949b4ac5 on Wed Aug 28 19:56:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 0f300634..64594427 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -107,6 +107,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="watcher_workqueue_depth"}'
         - '{__name__="watcher_client_latency_bucket"}'
+        - '{__name__="pac_watcher_work_queue_depth"}'
+        - '{__name__="pac_watcher_client_latency_bucket"}'
         - '{__name__="grpc_server_handled_total", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>1: Development changes from 86b4a901 to 949b4ac5 on Wed Aug 28 19:56:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 0f300634..64594427 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -107,6 +107,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="watcher_workqueue_depth"}'
         - '{__name__="watcher_client_latency_bucket"}'
+        - '{__name__="pac_watcher_work_queue_depth"}'
+        - '{__name__="pac_watcher_client_latency_bucket"}'
         - '{__name__="grpc_server_handled_total", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>2: Production changes from 21b07204 to 86b4a901 on Wed Aug 28 18:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (357 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
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
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
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
+            count/secrets: "100"
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
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 65558c72..2d8a99f0 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -38,8 +38,8 @@ objects:
   spec:
     quota:
       hard:
-        count/ingresses.extensions: "30"
-        count/routes.route.openshift.io: "30"
+        count/ingresses.extensions: "0"
+        count/routes.route.openshift.io: "0"
     selector:
       annotations: null
       labels:
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
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
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
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
+            count/secrets: "100"
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
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources 
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
<h3>2: Staging changes from 21b07204 to 86b4a901 on Wed Aug 28 18:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (357 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
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
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
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
+            count/secrets: "100"
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
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 65558c72..2d8a99f0 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -38,8 +38,8 @@ objects:
   spec:
     quota:
       hard:
-        count/ingresses.extensions: "30"
-        count/routes.route.openshift.io: "30"
+        count/ingresses.extensions: "0"
+        count/routes.route.openshift.io: "0"
     selector:
       annotations: null
       labels:
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
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
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
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
+            count/secrets: "100"
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
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources 
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
<h3>2: Development changes from 21b07204 to 86b4a901 on Wed Aug 28 18:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (357 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
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
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
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
+            count/secrets: "100"
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
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 65558c72..2d8a99f0 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -38,8 +38,8 @@ objects:
   spec:
     quota:
       hard:
-        count/ingresses.extensions: "30"
-        count/routes.route.openshift.io: "30"
+        count/ingresses.extensions: "0"
+        count/routes.route.openshift.io: "0"
     selector:
       annotations: null
       labels:
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
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
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
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
+            count/secrets: "100"
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
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources 
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
<h3>3: Production changes from 8a60517d to 21b07204 on Wed Aug 28 15:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
new file mode 100644
index 00000000..13948d36
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -0,0 +1,36 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-pipelines-runner
+rules:
+  - verbs:
+      - get
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+  - verbs:
+      - use
+    apiGroups:
+      - security.openshift.io
+    resources:
+      - securitycontextconstraints
+    resourceNames:
+      - appstudio-pipelines-scc
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - appstudio.redhat.com
+    resources:
+      - enterprisecontractpolicies
+  - verbs:
+      - get
+      - create
+      - delete
+      - list
+      - watch
+    apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
index ccdc8591..e12a6bb6 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
+- appstudio-pipelines-runner.yaml
 - register-cluster-extra-member-permissions.yaml
 - sandbox-sre-admins.yaml 
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
<h3>3: Staging changes from 8a60517d to 21b07204 on Wed Aug 28 15:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
new file mode 100644
index 00000000..13948d36
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -0,0 +1,36 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-pipelines-runner
+rules:
+  - verbs:
+      - get
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+  - verbs:
+      - use
+    apiGroups:
+      - security.openshift.io
+    resources:
+      - securitycontextconstraints
+    resourceNames:
+      - appstudio-pipelines-scc
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - appstudio.redhat.com
+    resources:
+      - enterprisecontractpolicies
+  - verbs:
+      - get
+      - create
+      - delete
+      - list
+      - watch
+    apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
index ccdc8591..e12a6bb6 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
+- appstudio-pipelines-runner.yaml
 - register-cluster-extra-member-permissions.yaml
 - sandbox-sre-admins.yaml 
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
<h3>3: Development changes from 8a60517d to 21b07204 on Wed Aug 28 15:24:07 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
new file mode 100644
index 00000000..13948d36
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -0,0 +1,36 @@
+kind: ClusterRole
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-pipelines-runner
+rules:
+  - verbs:
+      - get
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+  - verbs:
+      - use
+    apiGroups:
+      - security.openshift.io
+    resources:
+      - securitycontextconstraints
+    resourceNames:
+      - appstudio-pipelines-scc
+  - verbs:
+      - get
+      - list
+    apiGroups:
+      - appstudio.redhat.com
+    resources:
+      - enterprisecontractpolicies
+  - verbs:
+      - get
+      - create
+      - delete
+      - list
+      - watch
+    apiGroups:
+      - toolchain.dev.openshift.com
+    resources:
+      - spacerequests
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
index ccdc8591..e12a6bb6 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/kustomization.yaml
@@ -2,5 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: toolchain-member-operator
 resources:
+- appstudio-pipelines-runner.yaml
 - register-cluster-extra-member-permissions.yaml
 - sandbox-sre-admins.yaml 
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
<h3>4: Production changes from bbbaea90 to 8a60517d on Wed Aug 28 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ded397c9..64d7365a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1513,6 +1513,9 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index faae709a..49366b6b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 23c716be..042d077b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c758dce8..dcab5f29 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index fc2bb1a1..2b7a7b43 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-bbbaea90/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1983,1985d1982
<         config-defaults:
<           data:
<             default-timeout-minutes: "120"
./commit-bbbaea90/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1983,1985d1982
<         config-defaults:
<           data:
<             default-timeout-minutes: "120"
./commit-bbbaea90/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1983,1985d1982
<         config-defaults:
<           data:
<             default-timeout-minutes: "120"
./commit-bbbaea90/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1983,1985d1982
<         config-defaults:
<           data:
<             default-timeout-minutes: "120" 
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
<h3>4: Staging changes from bbbaea90 to 8a60517d on Wed Aug 28 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ded397c9..64d7365a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1513,6 +1513,9 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index faae709a..49366b6b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 23c716be..042d077b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c758dce8..dcab5f29 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index fc2bb1a1..2b7a7b43 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info 
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
<h3>4: Development changes from bbbaea90 to 8a60517d on Wed Aug 28 13:34:07 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ded397c9..64d7365a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1513,6 +1513,9 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index faae709a..49366b6b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 23c716be..042d077b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c758dce8..dcab5f29 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index fc2bb1a1..2b7a7b43 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1980,6 +1980,9 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info 
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
