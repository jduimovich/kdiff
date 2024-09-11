# kustomize changes tracked by commits 
### This file generated at Wed Sep 11 04:02:59 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8ded3760 to e137831f on Tue Sep 10 15:27:03 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 7f69ebd5..21ca7030 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -11,10 +11,10 @@ spec:
         resources:
           limits:
             cpu: 600m
-            memory: 1500Mi
+            memory: 2048Mi
           requests:
             cpu: 200m
-            memory: 600Mi
+            memory: 1024Mi
         env:
         - name: CONSOLE_NAME
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-8ded3760/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1419c1419
<             memory: 2048Mi
---
>             memory: 1500Mi
1422c1422
<             memory: 1024Mi
---
>             memory: 600Mi
./commit-8ded3760/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1419c1419
<             memory: 2048Mi
---
>             memory: 1500Mi
1422c1422
<             memory: 1024Mi
---
>             memory: 600Mi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 8ded3760 to e137831f on Tue Sep 10 15:27:03 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 7f69ebd5..21ca7030 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -11,10 +11,10 @@ spec:
         resources:
           limits:
             cpu: 600m
-            memory: 1500Mi
+            memory: 2048Mi
           requests:
             cpu: 200m
-            memory: 600Mi
+            memory: 1024Mi
         env:
         - name: CONSOLE_NAME
           valueFrom: 
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
<h3>1: Development changes from 8ded3760 to e137831f on Tue Sep 10 15:27:03 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 7f69ebd5..21ca7030 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -11,10 +11,10 @@ spec:
         resources:
           limits:
             cpu: 600m
-            memory: 1500Mi
+            memory: 2048Mi
           requests:
             cpu: 200m
-            memory: 600Mi
+            memory: 1024Mi
         env:
         - name: CONSOLE_NAME
           valueFrom: 
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
<h3>2: Production changes from aba75824 to 8ded3760 on Tue Sep 10 13:22:15 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 13d56daf..2a5b7c54 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -115,8 +115,8 @@ spec:
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}'
-        - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*|release-service"}'
-        - '{__name__="kube_pod_status_phase", namespace!~".*-tenant|openshift-.*|kube-.*|release-service"}'
+        - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_pod_status_phase", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_terminated_reason", namespace="release-service"}'
         - '{__name__="kube_pod_container_status_last_terminated_reason", namespace="release-service"}'
         - '{__name__="kube_pod_container_status_ready", namespace="release-service"}' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from aba75824 to 8ded3760 on Tue Sep 10 13:22:15 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 13d56daf..2a5b7c54 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -115,8 +115,8 @@ spec:
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}'
-        - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*|release-service"}'
-        - '{__name__="kube_pod_status_phase", namespace!~".*-tenant|openshift-.*|kube-.*|release-service"}'
+        - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_pod_status_phase", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_terminated_reason", namespace="release-service"}'
         - '{__name__="kube_pod_container_status_last_terminated_reason", namespace="release-service"}'
         - '{__name__="kube_pod_container_status_ready", namespace="release-service"}' 
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
<h3>2: Development changes from aba75824 to 8ded3760 on Tue Sep 10 13:22:15 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 13d56daf..2a5b7c54 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -115,8 +115,8 @@ spec:
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}'
-        - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*|release-service"}'
-        - '{__name__="kube_pod_status_phase", namespace!~".*-tenant|openshift-.*|kube-.*|release-service"}'
+        - '{__name__="kube_pod_container_status_waiting_reason", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_pod_status_phase", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_terminated_reason", namespace="release-service"}'
         - '{__name__="kube_pod_container_status_last_terminated_reason", namespace="release-service"}'
         - '{__name__="kube_pod_container_status_ready", namespace="release-service"}' 
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
<h3>3: Production changes from 99fc1232 to aba75824 on Tue Sep 10 11:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6b8517a7
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-stage-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/qe/konflux-e2e-secrets/registry-stage-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-stage-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 99fc1232 to aba75824 on Tue Sep 10 11:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6b8517a7
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-stage-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/qe/konflux-e2e-secrets/registry-stage-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-stage-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}" 
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
<h3>3: Development changes from 99fc1232 to aba75824 on Tue Sep 10 11:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6b8517a7
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-stage-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/qe/konflux-e2e-secrets/registry-stage-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-stage-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}" 
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
<h3>4: Production changes from f0b7e9d2 to 99fc1232 on Tue Sep 10 10:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6bb51b1e..e9556e32 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 02a6ee72..23a08c20 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
+      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-f0b7e9d2/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
332c332
<   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
---
>   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from f0b7e9d2 to 99fc1232 on Tue Sep 10 10:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6bb51b1e..e9556e32 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 02a6ee72..23a08c20 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
+      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-f0b7e9d2/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
332c332
<   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
---
>   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f 
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
<h3>4: Development changes from f0b7e9d2 to 99fc1232 on Tue Sep 10 10:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6bb51b1e..e9556e32 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 02a6ee72..23a08c20 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
+      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-f0b7e9d2/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
332c332
<   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
---
>   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f 
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
