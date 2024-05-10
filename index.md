# kustomize changes tracked by commits 
### This file generated at Fri May 10 04:02:14 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from d8df5a3f to a883cfdf on Thu May 9 21:21:27 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
index 57cef1be..81ebb3d1 100644
--- a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- namespace.yaml
 - operatorgroup.yaml
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
deleted file mode 100644
index 22559d14..00000000
--- a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: openshift-logging
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from d8df5a3f to a883cfdf on Thu May 9 21:21:27 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
index 57cef1be..81ebb3d1 100644
--- a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- namespace.yaml
 - operatorgroup.yaml
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
deleted file mode 100644
index 22559d14..00000000
--- a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: openshift-logging
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from d8df5a3f to a883cfdf on Thu May 9 21:21:27 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
index 57cef1be..81ebb3d1 100644
--- a/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
+++ b/components/monitoring/logging/base/logging-operator-prerequisite/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- namespace.yaml
 - operatorgroup.yaml
diff --git a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml b/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
deleted file mode 100644
index 22559d14..00000000
--- a/components/monitoring/logging/base/logging-operator-prerequisite/namespace.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: openshift-logging
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 1656db34 to d8df5a3f on Thu May 9 20:20:56 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 28070b8e..c68e08bb 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: "base"
           - list:
               elements:
+                - nameNormalized: kflux-stg-es01
+                  values.clusterDir: kflux-stg-es01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml b/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 1656db34 to d8df5a3f on Thu May 9 20:20:56 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 28070b8e..c68e08bb 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: "base"
           - list:
               elements:
+                - nameNormalized: kflux-stg-es01
+                  values.clusterDir: kflux-stg-es01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml b/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 1656db34 to d8df5a3f on Thu May 9 20:20:56 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 28070b8e..c68e08bb 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: "base"
           - list:
               elements:
+                - nameNormalized: kflux-stg-es01
+                  values.clusterDir: kflux-stg-es01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml b/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/staging/kflux-stg-es01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 164ac7d7 to 1656db34 on Thu May 9 18:39:14 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9ca6aca0..9e95d91c 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: cad2834100c0f1ea359d5ff8301237b0562240b5
+    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index d6aba414..dd00cd44 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: cad2834100c0f1ea359d5ff8301237b0562240b5
+    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index c564ce08..e8f744ab 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 6f6c6135..f2d29e3f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-164ac7d7/production/components/has/production/kustomize.out.yaml
818c818
<         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
---
>         image: quay.io/redhat-appstudio/application-service:cad2834100c0f1ea359d5ff8301237b0562240b5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 164ac7d7 to 1656db34 on Thu May 9 18:39:14 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9ca6aca0..9e95d91c 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: cad2834100c0f1ea359d5ff8301237b0562240b5
+    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index d6aba414..dd00cd44 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: cad2834100c0f1ea359d5ff8301237b0562240b5
+    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index c564ce08..e8f744ab 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 6f6c6135..f2d29e3f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-164ac7d7/staging/components/has/staging/kustomize.out.yaml
845c845
<         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
---
>         image: quay.io/redhat-appstudio/application-service:cad2834100c0f1ea359d5ff8301237b0562240b5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 164ac7d7 to 1656db34 on Thu May 9 18:39:14 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9ca6aca0..9e95d91c 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: cad2834100c0f1ea359d5ff8301237b0562240b5
+    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index d6aba414..dd00cd44 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: cad2834100c0f1ea359d5ff8301237b0562240b5
+    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index c564ce08..e8f744ab 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 6f6c6135..f2d29e3f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=cad2834100c0f1ea359d5ff8301237b0562240b5
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-164ac7d7/development/components/has/development/kustomize.out.yaml
777c777
<         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
---
>         image: quay.io/redhat-appstudio/application-service:cad2834100c0f1ea359d5ff8301237b0562240b5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from f6f3704e to 164ac7d7 on Thu May 9 17:04:19 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 3e8ab42f..143ee88d 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -10,7 +10,6 @@ resources:
   - authentication
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
-  - backup
   - kubesaw-common
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml b/argo-cd-apps/base/backup/backup.yaml
similarity index 90%
rename from argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml
rename to argo-cd-apps/base/backup/backup.yaml
index d9ad0e6d..f0e749eb 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml
+++ b/argo-cd-apps/base/backup/backup.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/backup: 'true'
               values:
                 sourceRoot: components/backup
                 environment: staging
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/backup/kustomization.yaml b/argo-cd-apps/base/backup/kustomization.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/backup/kustomization.yaml
rename to argo-cd-apps/base/backup/kustomization.yaml
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 0c96f94f..2d57c6ca 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -49,12 +49,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: backup
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: smee
 $patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 43faaef5..697a7ab3 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
   - ../../base/tenants-config
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 6fa98637..45d047e2 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -4,5 +4,6 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/backup
   - ../../base/quality-dashboard
 namespace: konflux-public-staging 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from f6f3704e to 164ac7d7 on Thu May 9 17:04:19 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 3e8ab42f..143ee88d 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -10,7 +10,6 @@ resources:
   - authentication
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
-  - backup
   - kubesaw-common
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml b/argo-cd-apps/base/backup/backup.yaml
similarity index 90%
rename from argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml
rename to argo-cd-apps/base/backup/backup.yaml
index d9ad0e6d..f0e749eb 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml
+++ b/argo-cd-apps/base/backup/backup.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/backup: 'true'
               values:
                 sourceRoot: components/backup
                 environment: staging
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/backup/kustomization.yaml b/argo-cd-apps/base/backup/kustomization.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/backup/kustomization.yaml
rename to argo-cd-apps/base/backup/kustomization.yaml
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 0c96f94f..2d57c6ca 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -49,12 +49,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: backup
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: smee
 $patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 43faaef5..697a7ab3 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
   - ../../base/tenants-config
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 6fa98637..45d047e2 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -4,5 +4,6 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/backup
   - ../../base/quality-dashboard
 namespace: konflux-public-staging 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from f6f3704e to 164ac7d7 on Thu May 9 17:04:19 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 3e8ab42f..143ee88d 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -10,7 +10,6 @@ resources:
   - authentication
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
-  - backup
   - kubesaw-common
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml b/argo-cd-apps/base/backup/backup.yaml
similarity index 90%
rename from argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml
rename to argo-cd-apps/base/backup/backup.yaml
index d9ad0e6d..f0e749eb 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/backup/backup.yaml
+++ b/argo-cd-apps/base/backup/backup.yaml
@@ -9,6 +9,9 @@ spec:
           - nameNormalized
         generators:
           - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/backup: 'true'
               values:
                 sourceRoot: components/backup
                 environment: staging
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/backup/kustomization.yaml b/argo-cd-apps/base/backup/kustomization.yaml
similarity index 100%
rename from argo-cd-apps/base/all-clusters/infra-deployments/backup/kustomization.yaml
rename to argo-cd-apps/base/backup/kustomization.yaml
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 0c96f94f..2d57c6ca 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -49,12 +49,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: backup
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: smee
 $patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 43faaef5..697a7ab3 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/backup
   - ../../base/tekton-ci
   - ../../base/konflux-ci
   - ../../base/tenants-config
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 6fa98637..45d047e2 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -4,5 +4,6 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/backup
   - ../../base/quality-dashboard
 namespace: konflux-public-staging 
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
```
 
</details> 
<br> 


</div>
