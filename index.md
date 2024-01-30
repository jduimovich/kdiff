# kustomize changes tracked by commits 
### This file generated at Tue Jan 30 04:01:52 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ce11791b to b5c4e40e on Mon Jan 29 22:14:10 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
index 96454936..4663435f 100644
--- a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
+++ b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/image-controller/base/external-secrets/quaytoken.yaml b/components/image-controller/base/external-secrets/quaytoken.yaml
index 8090bee0..23b84142 100644
--- a/components/image-controller/base/external-secrets/quaytoken.yaml
+++ b/components/image-controller/base/external-secrets/quaytoken.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/build/image-controller
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ce11791b/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
892c892
<   refreshInterval: 5m
---
>   refreshInterval: 15m
./commit-ce11791b/production/components/image-controller/production/kustomize.out.yaml
773c773
<   refreshInterval: 5m
---
>   refreshInterval: 15m 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from ce11791b to b5c4e40e on Mon Jan 29 22:14:10 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
index 96454936..4663435f 100644
--- a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
+++ b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/image-controller/base/external-secrets/quaytoken.yaml b/components/image-controller/base/external-secrets/quaytoken.yaml
index 8090bee0..23b84142 100644
--- a/components/image-controller/base/external-secrets/quaytoken.yaml
+++ b/components/image-controller/base/external-secrets/quaytoken.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/build/image-controller
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ce11791b/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
892c892
<   refreshInterval: 5m
---
>   refreshInterval: 15m
./commit-ce11791b/staging/components/image-controller/staging/kustomize.out.yaml
801c801
<   refreshInterval: 5m
---
>   refreshInterval: 15m 
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
<h3>1: Development changes from ce11791b to b5c4e40e on Mon Jan 29 22:14:10 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
index 96454936..4663435f 100644
--- a/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
+++ b/components/build-service/base/external-secrets/pipelines-as-code-secret.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/pipeline-service/github-app
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault
diff --git a/components/image-controller/base/external-secrets/quaytoken.yaml b/components/image-controller/base/external-secrets/quaytoken.yaml
index 8090bee0..23b84142 100644
--- a/components/image-controller/base/external-secrets/quaytoken.yaml
+++ b/components/image-controller/base/external-secrets/quaytoken.yaml
@@ -9,7 +9,7 @@ spec:
   dataFrom:
     - extract:
         key: staging/build/image-controller
-  refreshInterval: 15m
+  refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
     name: appsre-stonesoup-vault 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from d81f90a4 to ce11791b on Mon Jan 29 20:29:44 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 8f9cd171..f918fb73 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun"
+          pipeline|pipelinename|pipelinerun|schedule"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from d81f90a4 to ce11791b on Mon Jan 29 20:29:44 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 8f9cd171..f918fb73 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun"
+          pipeline|pipelinename|pipelinerun|schedule"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1 
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
<h3>2: Development changes from d81f90a4 to ce11791b on Mon Jan 29 20:29:44 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 8f9cd171..f918fb73 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -49,7 +49,7 @@ spec:
           storageclass|volumename|release_reason|instance|result|deployment_reason|\
           validation_reason|strategy|succeeded|target|name|method|code|sp|\
           unexpected_status|failure|hostname|label_app_kubernetes_io_managed_by|status|\
-          pipeline|pipelinename|pipelinerun"
+          pipeline|pipelinename|pipelinerun|schedule"
 ---
 # Grant permission to Federate In-Cluster Prometheus
 apiVersion: rbac.authorization.k8s.io/v1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from f1ee41dd to d81f90a4 on Mon Jan 29 19:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/integration/base/integration.yaml b/components/integration/base/integration.yaml
index 06fd9592..b748c422 100644
--- a/components/integration/base/integration.yaml
+++ b/components/integration/base/integration.yaml
@@ -4,9 +4,9 @@ metadata:
   name: integration-service-maintainers
   namespace: integration-service
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: dirgim
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-f1ee41dd/production/components/integration/production/kustomize.out.yaml
955,956c955,956
<   kind: Group
<   name: konflux-integration
---
>   kind: User
>   name: dirgim 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from f1ee41dd to d81f90a4 on Mon Jan 29 19:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/integration/base/integration.yaml b/components/integration/base/integration.yaml
index 06fd9592..b748c422 100644
--- a/components/integration/base/integration.yaml
+++ b/components/integration/base/integration.yaml
@@ -4,9 +4,9 @@ metadata:
   name: integration-service-maintainers
   namespace: integration-service
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: dirgim
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-f1ee41dd/staging/components/integration/staging/kustomize.out.yaml
955,956c955,956
<   kind: Group
<   name: konflux-integration
---
>   kind: User
>   name: dirgim 
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
<h3>3: Development changes from f1ee41dd to d81f90a4 on Mon Jan 29 19:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/integration/base/integration.yaml b/components/integration/base/integration.yaml
index 06fd9592..b748c422 100644
--- a/components/integration/base/integration.yaml
+++ b/components/integration/base/integration.yaml
@@ -4,9 +4,9 @@ metadata:
   name: integration-service-maintainers
   namespace: integration-service
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: dirgim
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-f1ee41dd/development/components/integration/development/kustomize.out.yaml
955,956c955,956
<   kind: Group
<   name: konflux-integration
---
>   kind: User
>   name: dirgim 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 8acd3d07 to f1ee41dd on Mon Jan 29 17:36:30 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/kustomization.yaml b/components/backup/base/all-clusters/kustomization.yaml
index ec0cb80d..8140609b 100644
--- a/components/backup/base/all-clusters/kustomization.yaml
+++ b/components/backup/base/all-clusters/kustomization.yaml
@@ -4,4 +4,5 @@ namespace: openshift-adp
 resources:
   - external-secret.yaml
   - namespace.yaml
+  - servicemonitor.yaml
   - oadp
diff --git a/components/backup/base/all-clusters/servicemonitor.yaml b/components/backup/base/all-clusters/servicemonitor.yaml
new file mode 100644
index 00000000..32e1def6
--- /dev/null
+++ b/components/backup/base/all-clusters/servicemonitor.yaml
@@ -0,0 +1,18 @@
+---
+# Taken from https://github.com/openshift/oadp-operator/blob/498109cc0f4162b3ecab5b7329e0dec4556ffc21/docs/oadp_monitoring.md
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  labels:
+    app: oadp-service-monitor
+  name: oadp-service-monitor
+  namespace: openshift-adp
+spec:
+  endpoints:
+  - interval: 30s
+    path: /metrics
+    targetPort: 8085
+    scheme: http
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: "velero" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (57 lines)</summary>  

``` 
./commit-8acd3d07/production/components/backup/production/stone-prd-host1/kustomize.out.yaml
34,50d33
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app: oadp-service-monitor
<   name: oadp-service-monitor
<   namespace: openshift-adp
< spec:
<   endpoints:
<   - interval: 30s
<     path: /metrics
<     scheme: http
<     targetPort: 8085
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: velero
< ---
./commit-8acd3d07/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
34,50d33
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app: oadp-service-monitor
<   name: oadp-service-monitor
<   namespace: openshift-adp
< spec:
<   endpoints:
<   - interval: 30s
<     path: /metrics
<     scheme: http
<     targetPort: 8085
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: velero
< ---
./commit-8acd3d07/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
34,50d33
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app: oadp-service-monitor
<   name: oadp-service-monitor
<   namespace: openshift-adp
< spec:
<   endpoints:
<   - interval: 30s
<     path: /metrics
<     scheme: http
<     targetPort: 8085
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: velero
< --- 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 8acd3d07 to f1ee41dd on Mon Jan 29 17:36:30 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/kustomization.yaml b/components/backup/base/all-clusters/kustomization.yaml
index ec0cb80d..8140609b 100644
--- a/components/backup/base/all-clusters/kustomization.yaml
+++ b/components/backup/base/all-clusters/kustomization.yaml
@@ -4,4 +4,5 @@ namespace: openshift-adp
 resources:
   - external-secret.yaml
   - namespace.yaml
+  - servicemonitor.yaml
   - oadp
diff --git a/components/backup/base/all-clusters/servicemonitor.yaml b/components/backup/base/all-clusters/servicemonitor.yaml
new file mode 100644
index 00000000..32e1def6
--- /dev/null
+++ b/components/backup/base/all-clusters/servicemonitor.yaml
@@ -0,0 +1,18 @@
+---
+# Taken from https://github.com/openshift/oadp-operator/blob/498109cc0f4162b3ecab5b7329e0dec4556ffc21/docs/oadp_monitoring.md
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  labels:
+    app: oadp-service-monitor
+  name: oadp-service-monitor
+  namespace: openshift-adp
+spec:
+  endpoints:
+  - interval: 30s
+    path: /metrics
+    targetPort: 8085
+    scheme: http
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: "velero" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (57 lines)</summary>  

``` 
./commit-8acd3d07/staging/components/backup/staging/stone-stg-host/kustomize.out.yaml
34,50d33
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app: oadp-service-monitor
<   name: oadp-service-monitor
<   namespace: openshift-adp
< spec:
<   endpoints:
<   - interval: 30s
<     path: /metrics
<     scheme: http
<     targetPort: 8085
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: velero
< ---
./commit-8acd3d07/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
34,50d33
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app: oadp-service-monitor
<   name: oadp-service-monitor
<   namespace: openshift-adp
< spec:
<   endpoints:
<   - interval: 30s
<     path: /metrics
<     scheme: http
<     targetPort: 8085
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: velero
< ---
./commit-8acd3d07/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
34,50d33
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     app: oadp-service-monitor
<   name: oadp-service-monitor
<   namespace: openshift-adp
< spec:
<   endpoints:
<   - interval: 30s
<     path: /metrics
<     scheme: http
<     targetPort: 8085
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: velero
< --- 
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
<h3>4: Development changes from 8acd3d07 to f1ee41dd on Mon Jan 29 17:36:30 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/kustomization.yaml b/components/backup/base/all-clusters/kustomization.yaml
index ec0cb80d..8140609b 100644
--- a/components/backup/base/all-clusters/kustomization.yaml
+++ b/components/backup/base/all-clusters/kustomization.yaml
@@ -4,4 +4,5 @@ namespace: openshift-adp
 resources:
   - external-secret.yaml
   - namespace.yaml
+  - servicemonitor.yaml
   - oadp
diff --git a/components/backup/base/all-clusters/servicemonitor.yaml b/components/backup/base/all-clusters/servicemonitor.yaml
new file mode 100644
index 00000000..32e1def6
--- /dev/null
+++ b/components/backup/base/all-clusters/servicemonitor.yaml
@@ -0,0 +1,18 @@
+---
+# Taken from https://github.com/openshift/oadp-operator/blob/498109cc0f4162b3ecab5b7329e0dec4556ffc21/docs/oadp_monitoring.md
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  labels:
+    app: oadp-service-monitor
+  name: oadp-service-monitor
+  namespace: openshift-adp
+spec:
+  endpoints:
+  - interval: 30s
+    path: /metrics
+    targetPort: 8085
+    scheme: http
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: "velero" 
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
```
 
</details> 
<br> 


</div>
