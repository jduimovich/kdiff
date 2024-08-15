# kustomize changes tracked by commits 
### This file generated at Thu Aug 15 16:15:32 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from bd878c2c to a0899b4a on Thu Aug 15 15:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index bbeaadce..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -29,7 +29,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: konflux-workspaces
+        namespace: workspaces-system
         server: '{{server}}'
       syncPolicy:
         automated: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from bd878c2c to a0899b4a on Thu Aug 15 15:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index bbeaadce..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -29,7 +29,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: konflux-workspaces
+        namespace: workspaces-system
         server: '{{server}}'
       syncPolicy:
         automated: 
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
<h3>1: Development changes from bd878c2c to a0899b4a on Thu Aug 15 15:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index bbeaadce..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -29,7 +29,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: konflux-workspaces
+        namespace: workspaces-system
         server: '{{server}}'
       syncPolicy:
         automated: 
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
<h3>2: Production changes from d3a24c3a to bd878c2c on Thu Aug 15 14:54:15 2024 </h3>  
 
<details> 
<summary>Git Diff (162 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 143ee88d..4c904fcf 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,6 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
+  - power-monitoring
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..b07fee1f
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- power-monitoring.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml
new file mode 100644
index 00000000..7046d5b4
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: power-monitoring
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/power-monitoring
+                environment: ""
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: power-monitoring-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: power-monitoring
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/components/power-monitoring/OWNERS b/components/power-monitoring/OWNERS
new file mode 100644
index 00000000..d8ef2a14
--- /dev/null
+++ b/components/power-monitoring/OWNERS
@@ -0,0 +1,6 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- raks-tt
+- mikebonnet
+- mftb
diff --git a/components/power-monitoring/kepler.yaml b/components/power-monitoring/kepler.yaml
new file mode 100644
index 00000000..62387bad
--- /dev/null
+++ b/components/power-monitoring/kepler.yaml
@@ -0,0 +1,16 @@
+apiVersion: kepler.system.sustainable.computing.io/v1alpha1
+kind: Kepler
+metadata:
+  name: kepler
+  labels:
+    app.kubernetes.io/instance: kepler
+    app.kubernetes.io/name: kepler
+    app.kubernetes.io/part-of: kepler-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  exporter:
+    deployment:
+      port: 9103
+      tolerations:
+        - operator: Exists
diff --git a/components/power-monitoring/kustomization.yaml b/components/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..ac08140e
--- /dev/null
+++ b/components/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - power-monitoring-operator.yaml
+  - kepler.yaml
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/power-monitoring/power-monitoring-operator.yaml b/components/power-monitoring/power-monitoring-operator.yaml
new file mode 100644
index 00000000..97ac0095
--- /dev/null
+++ b/components/power-monitoring/power-monitoring-operator.yaml
@@ -0,0 +1,40 @@
+---
+# Namespace for power monitoring operator
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+---
+# Power monitoring operator group
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: power-monitoring
+  namespace: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+    olm.providedAPIs: 
+      Kepler.v1alpha1.kepler.system.sustainable.computing.io,KeplerInternal.v1alpha1.kepler.system.sustainable.computing.io
+spec:
+  upgradeStrategy: Default
+---
+# Subscription for power-monitoring-operator
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: power-monitoring-operator
+  namespace: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: Replace=true
+  labels:
+    operators.coreos.com/power-monitoring-operator.power-monitoring: ""
+spec:
+  channel: tech-preview
+  installPlanApproval: Automatic
+  name: power-monitoring-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  startingCSV: power-monitoring-operator.v0.2.0 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-bd878c2c/production/components: power-monitoring 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from d3a24c3a to bd878c2c on Thu Aug 15 14:54:15 2024 </h3>  
 
<details> 
<summary>Git Diff (162 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 143ee88d..4c904fcf 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,6 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
+  - power-monitoring
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..b07fee1f
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- power-monitoring.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml
new file mode 100644
index 00000000..7046d5b4
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: power-monitoring
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/power-monitoring
+                environment: ""
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: power-monitoring-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: power-monitoring
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/components/power-monitoring/OWNERS b/components/power-monitoring/OWNERS
new file mode 100644
index 00000000..d8ef2a14
--- /dev/null
+++ b/components/power-monitoring/OWNERS
@@ -0,0 +1,6 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- raks-tt
+- mikebonnet
+- mftb
diff --git a/components/power-monitoring/kepler.yaml b/components/power-monitoring/kepler.yaml
new file mode 100644
index 00000000..62387bad
--- /dev/null
+++ b/components/power-monitoring/kepler.yaml
@@ -0,0 +1,16 @@
+apiVersion: kepler.system.sustainable.computing.io/v1alpha1
+kind: Kepler
+metadata:
+  name: kepler
+  labels:
+    app.kubernetes.io/instance: kepler
+    app.kubernetes.io/name: kepler
+    app.kubernetes.io/part-of: kepler-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  exporter:
+    deployment:
+      port: 9103
+      tolerations:
+        - operator: Exists
diff --git a/components/power-monitoring/kustomization.yaml b/components/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..ac08140e
--- /dev/null
+++ b/components/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - power-monitoring-operator.yaml
+  - kepler.yaml
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/power-monitoring/power-monitoring-operator.yaml b/components/power-monitoring/power-monitoring-operator.yaml
new file mode 100644
index 00000000..97ac0095
--- /dev/null
+++ b/components/power-monitoring/power-monitoring-operator.yaml
@@ -0,0 +1,40 @@
+---
+# Namespace for power monitoring operator
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+---
+# Power monitoring operator group
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: power-monitoring
+  namespace: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+    olm.providedAPIs: 
+      Kepler.v1alpha1.kepler.system.sustainable.computing.io,KeplerInternal.v1alpha1.kepler.system.sustainable.computing.io
+spec:
+  upgradeStrategy: Default
+---
+# Subscription for power-monitoring-operator
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: power-monitoring-operator
+  namespace: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: Replace=true
+  labels:
+    operators.coreos.com/power-monitoring-operator.power-monitoring: ""
+spec:
+  channel: tech-preview
+  installPlanApproval: Automatic
+  name: power-monitoring-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  startingCSV: power-monitoring-operator.v0.2.0 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-bd878c2c/staging/components: power-monitoring 
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
<h3>2: Development changes from d3a24c3a to bd878c2c on Thu Aug 15 14:54:15 2024 </h3>  
 
<details> 
<summary>Git Diff (162 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 143ee88d..4c904fcf 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,6 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
+  - power-monitoring
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..b07fee1f
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- power-monitoring.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml
new file mode 100644
index 00000000..7046d5b4
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/power-monitoring/power-monitoring.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: power-monitoring
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/power-monitoring
+                environment: ""
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: power-monitoring-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: power-monitoring
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/components/power-monitoring/OWNERS b/components/power-monitoring/OWNERS
new file mode 100644
index 00000000..d8ef2a14
--- /dev/null
+++ b/components/power-monitoring/OWNERS
@@ -0,0 +1,6 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- raks-tt
+- mikebonnet
+- mftb
diff --git a/components/power-monitoring/kepler.yaml b/components/power-monitoring/kepler.yaml
new file mode 100644
index 00000000..62387bad
--- /dev/null
+++ b/components/power-monitoring/kepler.yaml
@@ -0,0 +1,16 @@
+apiVersion: kepler.system.sustainable.computing.io/v1alpha1
+kind: Kepler
+metadata:
+  name: kepler
+  labels:
+    app.kubernetes.io/instance: kepler
+    app.kubernetes.io/name: kepler
+    app.kubernetes.io/part-of: kepler-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "0"
+spec:
+  exporter:
+    deployment:
+      port: 9103
+      tolerations:
+        - operator: Exists
diff --git a/components/power-monitoring/kustomization.yaml b/components/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..ac08140e
--- /dev/null
+++ b/components/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - power-monitoring-operator.yaml
+  - kepler.yaml
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/power-monitoring/power-monitoring-operator.yaml b/components/power-monitoring/power-monitoring-operator.yaml
new file mode 100644
index 00000000..97ac0095
--- /dev/null
+++ b/components/power-monitoring/power-monitoring-operator.yaml
@@ -0,0 +1,40 @@
+---
+# Namespace for power monitoring operator
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+---
+# Power monitoring operator group
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: power-monitoring
+  namespace: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-2"
+    olm.providedAPIs: 
+      Kepler.v1alpha1.kepler.system.sustainable.computing.io,KeplerInternal.v1alpha1.kepler.system.sustainable.computing.io
+spec:
+  upgradeStrategy: Default
+---
+# Subscription for power-monitoring-operator
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: power-monitoring-operator
+  namespace: power-monitoring
+  annotations:
+    argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: Replace=true
+  labels:
+    operators.coreos.com/power-monitoring-operator.power-monitoring: ""
+spec:
+  channel: tech-preview
+  installPlanApproval: Automatic
+  name: power-monitoring-operator
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+  startingCSV: power-monitoring-operator.v0.2.0 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (56 lines)</summary>  

``` 
./commit-d3a24c3a/development/app-of-apps-development.yaml
974,1026d973
<   name: power-monitoring
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             - key: clustertemplateinstance.openshift.io/name
<               operator: DoesNotExist
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: ""
<             sourceRoot: components/power-monitoring
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: power-monitoring-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: power-monitoring
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
./commit-bd878c2c/development/components: power-monitoring 
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
<h3>3: Production changes from ffc9a72f to d3a24c3a on Thu Aug 15 14:54:09 2024 </h3>  
 
<details> 
<summary>Git Diff (159 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 565a2362..56313f52 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -6,8 +6,36 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -22,6 +50,17 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
@@ -77,6 +116,17 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 0f209b15..44df38b4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -6,8 +6,37 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/arm64,\
+    linux-mlarge/amd64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux-fast/amd64,\
+    linux-extra-fast/amd64\
+    "
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -22,6 +51,17 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
 
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
@@ -77,6 +117,17 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
 
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-ffc9a72f/production/components/multi-platform-controller/production/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
371,390d370
<   dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-mlarge-amd64.aws-secret: aws-account
<   dynamic.linux-mlarge-amd64.instance-type: m6a.large
<   dynamic.linux-mlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-mlarge-amd64.max-instances: "10"
<   dynamic.linux-mlarge-amd64.region: us-east-1
<   dynamic.linux-mlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-mlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-mlarge-amd64.type: aws
<   dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-mlarge-arm64.aws-secret: aws-account
<   dynamic.linux-mlarge-arm64.instance-type: m6g.large
<   dynamic.linux-mlarge-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-mlarge-arm64.max-instances: "10"
<   dynamic.linux-mlarge-arm64.region: us-east-1
<   dynamic.linux-mlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-mlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-mlarge-arm64.type: aws
561d540
<   local-platforms: linux/x86_64,local,localhost, 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ffc9a72f to d3a24c3a on Thu Aug 15 14:54:09 2024 </h3>  
 
<details> 
<summary>Git Diff (159 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 565a2362..56313f52 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -6,8 +6,36 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -22,6 +50,17 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
@@ -77,6 +116,17 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 0f209b15..44df38b4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -6,8 +6,37 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/arm64,\
+    linux-mlarge/amd64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux-fast/amd64,\
+    linux-extra-fast/amd64\
+    "
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -22,6 +51,17 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
 
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
@@ -77,6 +117,17 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
 
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
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
<h3>3: Development changes from ffc9a72f to d3a24c3a on Thu Aug 15 14:54:09 2024 </h3>  
 
<details> 
<summary>Git Diff (159 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 565a2362..56313f52 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -6,8 +6,36 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/amd64,\
+    linux-mlarge/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -22,6 +50,17 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
@@ -77,6 +116,17 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 0f209b15..44df38b4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -6,8 +6,37 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
+  local-platforms: "\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux/amd64,\
+    linux-mlarge/arm64,\
+    linux-mlarge/amd64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-root/arm64,\
+    linux-root/amd64,\
+    linux-fast/amd64,\
+    linux-extra-fast/amd64\
+    "
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -22,6 +51,17 @@ data:
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.subnet-id: subnet-0c39ff75f819abfc5
 
+  dynamic.linux-mlarge-arm64.type: aws
+  dynamic.linux-mlarge-arm64.region: us-east-1
+  dynamic.linux-mlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mlarge-arm64.instance-type: m6g.large
+  dynamic.linux-mlarge-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
@@ -77,6 +117,17 @@ data:
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
 
+  dynamic.linux-mlarge-amd64.type: aws
+  dynamic.linux-mlarge-amd64.region: us-east-1
+  dynamic.linux-mlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mlarge-amd64.instance-type: m6a.large
+  dynamic.linux-mlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-mlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
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
<h3>4: Production changes from 079884d7 to ffc9a72f on Thu Aug 15 14:01:53 2024 </h3>  
 
<details> 
<summary>Git Diff (1628 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
index 3574d3d3..cf74986d 100644
--- a/components/sandbox/tiers/src/appstudio/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -2,49 +2,6 @@ apiVersion: template.openshift.io/v1
 kind: Template
 metadata: {}
 objects:
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-deployments
-  spec:
-    quota:
-      hard:
-        count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
-        count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
-        count/pods: ${{POD_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-replicas
-  spec:
-    quota:
-      hard:
-        count/replicasets.apps: ${{REPLICASET_QUOTA}}
-        count/replicationcontrollers: ${{REPLICASET_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-routes
-  spec:
-    quota:
-      hard:
-        count/ingresses.extensions: ${{ROUTE_QUOTA}}
-        count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
   metadata:
@@ -61,19 +18,6 @@ objects:
       labels:
         matchLabels:
           toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-services
-  spec:
-    quota:
-      hard:
-        count/services: ${{SERVICE_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
   metadata:
@@ -126,16 +70,6 @@ parameters:
   # No Idling
   value: "0"
 # Quota
-- name: REPLICASET_QUOTA
-  value: "30"
-- name: DEPLOYMENT_QUOTA
-  value: "30"
-- name: POD_QUOTA
-  value: "600"
-- name: ROUTE_QUOTA
-  value: "30"
-- name: SERVICE_QUOTA
-  value: "30"
 - name: CONFIGMAP_QUOTA
   value: "100"
 - name: SECRET_QUOTA
diff --git a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
index fe55f3fd..d178249d 100644
--- a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
+++ b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
@@ -1,13 +1,5 @@
 from: appstudio
 parameters:
-- name: REPLICASET_QUOTA
-  value: "100"
-- name: DEPLOYMENT_QUOTA
-  value: "100"
-- name: ROUTE_QUOTA
-  value: "100"
-- name: SERVICE_QUOTA
-  value: "100"
 - name: CONFIGMAP_QUOTA
   value: "300"
 - name: SECRET_QUOTA
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 7700483d..a73ec65a 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
 - nstemplatetier-appstudio.yaml
 - tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 0de389e6..1a8d479c 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-809836689-809836689
+    templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
   - templateRef: appstudio-tenant-2313893948-2313893948
   spaceRoles:
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
new file mode 100644
index 00000000..ff8e2567
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-3180033938-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 3180033938-3180033938
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
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 181e42a4..485ff728 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -8,9 +8,15 @@ resources:
 - nstemplatetier-appstudiolarge.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
 - tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
+- tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
+- tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index c4fc34a1..bb15a729 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-809836689
+    templateRef: appstudiolarge-clusterresources-1929014883-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-2313893948
+  - templateRef: appstudiolarge-tenant-1929014883-2313893948
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-1876853981
+      templateRef: appstudiolarge-admin-1929014883-1876853981
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-1817914940
+      templateRef: appstudiolarge-contributor-1929014883-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-293087644
+      templateRef: appstudiolarge-maintainer-1929014883-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-4059797645
+      templateRef: appstudiolarge-viewer-1929014883-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
new file mode 100644
index 00000000..156b9fab
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1929014883-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-1876853981
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
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
+        - remotesecrets
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
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
new file mode 100644
index 00000000..2e362164
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1929014883-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-3180033938
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
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
new file mode 100644
index 00000000..40916183
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
@@ -0,0 +1,200 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1929014883-1817914940
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-1817914940
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
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
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
new file mode 100644
index 00000000..bcbd025e
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
@@ -0,0 +1,226 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1929014883-293087644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-293087644
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
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
+        - remotesecrets
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
+        - create
+        - update
+        - patch
+        - delete
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
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
new file mode 100644
index 00000000..63de00c2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
@@ -0,0 +1,295 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1929014883-2313893948
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-2313893948
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
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
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
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
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
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
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
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
new file mode 100644
index 00000000..6faeed80
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
@@ -0,0 +1,199 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1929014883-4059797645
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-4059797645
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
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
+  tierName: appstudiolarge
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 079884d7 to ffc9a72f on Thu Aug 15 14:01:53 2024 </h3>  
 
<details> 
<summary>Git Diff (1628 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
index 3574d3d3..cf74986d 100644
--- a/components/sandbox/tiers/src/appstudio/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -2,49 +2,6 @@ apiVersion: template.openshift.io/v1
 kind: Template
 metadata: {}
 objects:
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-deployments
-  spec:
-    quota:
-      hard:
-        count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
-        count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
-        count/pods: ${{POD_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-replicas
-  spec:
-    quota:
-      hard:
-        count/replicasets.apps: ${{REPLICASET_QUOTA}}
-        count/replicationcontrollers: ${{REPLICASET_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-routes
-  spec:
-    quota:
-      hard:
-        count/ingresses.extensions: ${{ROUTE_QUOTA}}
-        count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
   metadata:
@@ -61,19 +18,6 @@ objects:
       labels:
         matchLabels:
           toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-services
-  spec:
-    quota:
-      hard:
-        count/services: ${{SERVICE_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
   metadata:
@@ -126,16 +70,6 @@ parameters:
   # No Idling
   value: "0"
 # Quota
-- name: REPLICASET_QUOTA
-  value: "30"
-- name: DEPLOYMENT_QUOTA
-  value: "30"
-- name: POD_QUOTA
-  value: "600"
-- name: ROUTE_QUOTA
-  value: "30"
-- name: SERVICE_QUOTA
-  value: "30"
 - name: CONFIGMAP_QUOTA
   value: "100"
 - name: SECRET_QUOTA
diff --git a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
index fe55f3fd..d178249d 100644
--- a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
+++ b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
@@ -1,13 +1,5 @@
 from: appstudio
 parameters:
-- name: REPLICASET_QUOTA
-  value: "100"
-- name: DEPLOYMENT_QUOTA
-  value: "100"
-- name: ROUTE_QUOTA
-  value: "100"
-- name: SERVICE_QUOTA
-  value: "100"
 - name: CONFIGMAP_QUOTA
   value: "300"
 - name: SECRET_QUOTA
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 7700483d..a73ec65a 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
 - nstemplatetier-appstudio.yaml
 - tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 0de389e6..1a8d479c 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-809836689-809836689
+    templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
   - templateRef: appstudio-tenant-2313893948-2313893948
   spaceRoles:
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
new file mode 100644
index 00000000..ff8e2567
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-3180033938-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 3180033938-3180033938
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
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 181e42a4..485ff728 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -8,9 +8,15 @@ resources:
 - nstemplatetier-appstudiolarge.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
 - tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
+- tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
+- tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index c4fc34a1..bb15a729 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-809836689
+    templateRef: appstudiolarge-clusterresources-1929014883-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-2313893948
+  - templateRef: appstudiolarge-tenant-1929014883-2313893948
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-1876853981
+      templateRef: appstudiolarge-admin-1929014883-1876853981
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-1817914940
+      templateRef: appstudiolarge-contributor-1929014883-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-293087644
+      templateRef: appstudiolarge-maintainer-1929014883-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-4059797645
+      templateRef: appstudiolarge-viewer-1929014883-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
new file mode 100644
index 00000000..156b9fab
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1929014883-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-1876853981
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
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
+        - remotesecrets
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
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
new file mode 100644
index 00000000..2e362164
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1929014883-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-3180033938
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
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
new file mode 100644
index 00000000..40916183
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
@@ -0,0 +1,200 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1929014883-1817914940
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-1817914940
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
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
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
new file mode 100644
index 00000000..bcbd025e
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
@@ -0,0 +1,226 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1929014883-293087644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-293087644
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
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
+        - remotesecrets
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
+        - create
+        - update
+        - patch
+        - delete
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
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
new file mode 100644
index 00000000..63de00c2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
@@ -0,0 +1,295 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1929014883-2313893948
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-2313893948
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
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
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
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
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
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
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
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
new file mode 100644
index 00000000..6faeed80
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
@@ -0,0 +1,199 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1929014883-4059797645
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-4059797645
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
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
+  tierName: appstudiolarge
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 079884d7 to ffc9a72f on Thu Aug 15 14:01:53 2024 </h3>  
 
<details> 
<summary>Git Diff (1628 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/cluster.yaml b/components/sandbox/tiers/src/appstudio/cluster.yaml
index 3574d3d3..cf74986d 100644
--- a/components/sandbox/tiers/src/appstudio/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio/cluster.yaml
@@ -2,49 +2,6 @@ apiVersion: template.openshift.io/v1
 kind: Template
 metadata: {}
 objects:
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-deployments
-  spec:
-    quota:
-      hard:
-        count/deployments.apps: ${{DEPLOYMENT_QUOTA}}
-        count/deploymentconfigs.apps: ${{DEPLOYMENT_QUOTA}}
-        count/pods: ${{POD_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-replicas
-  spec:
-    quota:
-      hard:
-        count/replicasets.apps: ${{REPLICASET_QUOTA}}
-        count/replicationcontrollers: ${{REPLICASET_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-routes
-  spec:
-    quota:
-      hard:
-        count/ingresses.extensions: ${{ROUTE_QUOTA}}
-        count/routes.route.openshift.io: ${{ROUTE_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
   metadata:
@@ -61,19 +18,6 @@ objects:
       labels:
         matchLabels:
           toolchain.dev.openshift.com/space: ${SPACE_NAME}
-- apiVersion: quota.openshift.io/v1
-  kind: ClusterResourceQuota
-  metadata:
-    name: for-${SPACE_NAME}-services
-  spec:
-    quota:
-      hard:
-        count/services: ${{SERVICE_QUOTA}}
-    selector:
-      annotations: null
-      labels:
-        matchLabels:
-          toolchain.dev.openshift.com/space: ${SPACE_NAME}
 - apiVersion: quota.openshift.io/v1
   kind: ClusterResourceQuota
   metadata:
@@ -126,16 +70,6 @@ parameters:
   # No Idling
   value: "0"
 # Quota
-- name: REPLICASET_QUOTA
-  value: "30"
-- name: DEPLOYMENT_QUOTA
-  value: "30"
-- name: POD_QUOTA
-  value: "600"
-- name: ROUTE_QUOTA
-  value: "30"
-- name: SERVICE_QUOTA
-  value: "30"
 - name: CONFIGMAP_QUOTA
   value: "100"
 - name: SECRET_QUOTA
diff --git a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
index fe55f3fd..d178249d 100644
--- a/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
+++ b/components/sandbox/tiers/src/appstudiolarge/based_on_tier.yaml
@@ -1,13 +1,5 @@
 from: appstudio
 parameters:
-- name: REPLICASET_QUOTA
-  value: "100"
-- name: DEPLOYMENT_QUOTA
-  value: "100"
-- name: ROUTE_QUOTA
-  value: "100"
-- name: SERVICE_QUOTA
-  value: "100"
 - name: CONFIGMAP_QUOTA
   value: "300"
 - name: SECRET_QUOTA
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 7700483d..a73ec65a 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -8,6 +8,7 @@ resources:
 - nstemplatetier-appstudio.yaml
 - tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
+- tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 0de389e6..1a8d479c 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-clusterresources-809836689-809836689
+    templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
   - templateRef: appstudio-tenant-2313893948-2313893948
   spaceRoles:
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
new file mode 100644
index 00000000..ff8e2567
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-clusterresources-3180033938-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-clusterresources-3180033938-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 3180033938-3180033938
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
+      value: "100"
+    - name: SECRET_QUOTA
+      value: "300"
+  tierName: appstudio
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 181e42a4..485ff728 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -8,9 +8,15 @@ resources:
 - nstemplatetier-appstudiolarge.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
+- tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
+- tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
+- tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
 - tiertemplate-appstudiolarge-maintainer-1884308846-293087644.yaml
+- tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
+- tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
+- tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index c4fc34a1..bb15a729 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -9,16 +9,16 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudiolarge-clusterresources-1884308846-809836689
+    templateRef: appstudiolarge-clusterresources-1929014883-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-1884308846-2313893948
+  - templateRef: appstudiolarge-tenant-1929014883-2313893948
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-1876853981
+      templateRef: appstudiolarge-admin-1929014883-1876853981
     contributor:
-      templateRef: appstudiolarge-contributor-1884308846-1817914940
+      templateRef: appstudiolarge-contributor-1929014883-1817914940
     maintainer:
-      templateRef: appstudiolarge-maintainer-1884308846-293087644
+      templateRef: appstudiolarge-maintainer-1929014883-293087644
     viewer:
-      templateRef: appstudiolarge-viewer-1884308846-4059797645
+      templateRef: appstudiolarge-viewer-1929014883-4059797645
 status: {}
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
new file mode 100644
index 00000000..156b9fab
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1929014883-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1929014883-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-1876853981
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
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
+        - remotesecrets
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
+  tierName: appstudiolarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
new file mode 100644
index 00000000..2e362164
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-clusterresources-1929014883-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-clusterresources-1929014883-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-3180033938
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
+      value: "900"
+  tierName: appstudiolarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
new file mode 100644
index 00000000..40916183
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-contributor-1929014883-1817914940.yaml
@@ -0,0 +1,200 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-contributor-1929014883-1817914940
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-1817914940
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
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
+  tierName: appstudiolarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
new file mode 100644
index 00000000..bcbd025e
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-maintainer-1929014883-293087644.yaml
@@ -0,0 +1,226 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-maintainer-1929014883-293087644
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-293087644
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
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
+        - remotesecrets
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
+        - create
+        - update
+        - patch
+        - delete
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
+  tierName: appstudiolarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
new file mode 100644
index 00000000..63de00c2
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
@@ -0,0 +1,295 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1929014883-2313893948
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-2313893948
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
+        name: compute-deploy
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: "20"
+          limits.memory: ${MEMORY_LIMIT}
+          requests.cpu: 1750m
+          requests.memory: ${MEMORY_REQUEST}
+        scopes:
+        - NotTerminating
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
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
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
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
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
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
new file mode 100644
index 00000000..6faeed80
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
@@ -0,0 +1,199 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-viewer-1929014883-4059797645
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-4059797645
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
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
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
+  tierName: appstudiolarge
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
```
 
</details> 
<br> 


</div>
