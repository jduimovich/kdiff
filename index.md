# kustomize changes tracked by commits 
### This file generated at Tue Feb  6 16:09:36 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from de639ec0 to 9d28cb05 on Tue Feb 6 15:37:01 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 46d6bfa2..b8ac6fe9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,8 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-de639ec0/production/app-of-apps-production.yaml
1021,1022c1021,1022
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from de639ec0 to 9d28cb05 on Tue Feb 6 15:37:01 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 46d6bfa2..b8ac6fe9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,8 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-de639ec0/staging/app-of-apps-staging.yaml
975,976c975,976
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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
<h3>1: Development changes from de639ec0 to 9d28cb05 on Tue Feb 6 15:37:01 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 46d6bfa2..b8ac6fe9 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -27,8 +27,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-de639ec0/development/app-of-apps-development.yaml
720,721c720,721
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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
<h3>2: Production changes from 70a19c3a to de639ec0 on Tue Feb 6 15:36:54 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
index 138051b0..2656955b 100644
--- a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -32,6 +32,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-performance'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-pipeline-service'
diff --git a/components/perf-team-prometheus-reader/base/perf-team.yaml b/components/perf-team-prometheus-reader/base/perf-team.yaml
index 252e2f94..52822c28 100644
--- a/components/perf-team-prometheus-reader/base/perf-team.yaml
+++ b/components/perf-team-prometheus-reader/base/perf-team.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Performance
+    name: konflux-performance
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-70a19c3a/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
550,552d549
<   name: konflux-performance
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
605,607d601
<   name: konflux-performance
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
658,660d651
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-performance 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 70a19c3a to de639ec0 on Tue Feb 6 15:36:54 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
index 138051b0..2656955b 100644
--- a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -32,6 +32,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-performance'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-pipeline-service'
diff --git a/components/perf-team-prometheus-reader/base/perf-team.yaml b/components/perf-team-prometheus-reader/base/perf-team.yaml
index 252e2f94..52822c28 100644
--- a/components/perf-team-prometheus-reader/base/perf-team.yaml
+++ b/components/perf-team-prometheus-reader/base/perf-team.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Performance
+    name: konflux-performance
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-70a19c3a/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
550,552d549
<   name: konflux-performance
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
605,607d601
<   name: konflux-performance
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
658,660d651
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-performance
./commit-70a19c3a/staging/components/perf-team-prometheus-reader/staging/kustomize.out.yaml
33c33
<   name: konflux-performance
---
>   name: Performance 
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
<h3>2: Development changes from 70a19c3a to de639ec0 on Tue Feb 6 15:36:54 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
index 138051b0..2656955b 100644
--- a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -32,6 +32,9 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-performance'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-pipeline-service'
diff --git a/components/perf-team-prometheus-reader/base/perf-team.yaml b/components/perf-team-prometheus-reader/base/perf-team.yaml
index 252e2f94..52822c28 100644
--- a/components/perf-team-prometheus-reader/base/perf-team.yaml
+++ b/components/perf-team-prometheus-reader/base/perf-team.yaml
@@ -6,7 +6,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Performance
+    name: konflux-performance
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-70a19c3a/development/components/perf-team-prometheus-reader/development/kustomize.out.yaml
33c33
<   name: konflux-performance
---
>   name: Performance 
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
<h3>3: Production changes from 3849050e to 70a19c3a on Tue Feb 6 14:35:40 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d37f2bf5..6f41bf65 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 0963ce99..7cb289a4 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 3849050e to 70a19c3a on Tue Feb 6 14:35:40 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d37f2bf5..6f41bf65 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 0963ce99..7cb289a4 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-3849050e/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
754c754
<         image: quay.io/redhat-appstudio/build-service:1268e589644feccfed33af1a44beb04f43b5a1b2
---
>         image: quay.io/redhat-appstudio/build-service:f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d 
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
<h3>3: Development changes from 3849050e to 70a19c3a on Tue Feb 6 14:35:40 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d37f2bf5..6f41bf65 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 0963ce99..7cb289a4 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+- https://github.com/redhat-appstudio/build-service/config/default?ref=1268e589644feccfed33af1a44beb04f43b5a1b2
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d
+  newTag: 1268e589644feccfed33af1a44beb04f43b5a1b2
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-3849050e/development/components/build-service/development/kustomize.out.yaml
761c761
<         image: quay.io/redhat-appstudio/build-service:1268e589644feccfed33af1a44beb04f43b5a1b2
---
>         image: quay.io/redhat-appstudio/build-service:f0efbb6ad6e23c0912a61a1b19c7fda8c9fa968d 
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
<h3>4: Production changes from 23ca6757 to 3849050e on Tue Feb 6 14:35:34 2024 </h3>  
 
<details> 
<summary>Git Diff (161 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index b9c6225f..3781dae4 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -14,7 +14,15 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: toolchain-host-operator-{{nameNormalized}}
diff --git a/components/sandbox/toolchain-host-operator/production/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
similarity index 85%
rename from components/sandbox/toolchain-host-operator/production/kustomization.yaml
rename to components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 443762b7..4e4f1976 100644
--- a/components/sandbox/toolchain-host-operator/production/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
\ No newline at end of file
+- ../../base
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..4e4f1976
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ae43a74e
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..f47d0651
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -0,0 +1,76 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+    host:
+      tiers:
+        defaultTier: 'appstudio'
+        defaultSpaceTier: 'appstudio'
+      automaticApproval:
+        enabled: true
+      capacityThresholds:
+        resourceCapacityThreshold:
+          defaultThreshold: 90
+      spaceConfig:
+        spaceRequestEnabled: true
+        spaceBindingRequestEnabled: true
+      deactivation:
+        deactivationDomainsExcluded: '@redhat.com'
+      notifications:
+        adminEmail: rhtap-infra@redhat.com
+        secret:
+          mailgunAPIKey: mailgun.api.key
+          mailgunDomain: mailgun.domain
+          mailgunReplyToEmail: mailgun.replyto.email
+          mailgunSenderEmail: mailgun.sender.email
+          ref: host-operator-secret
+        templateSetName: 'appstudio'
+      registrationService:
+        auth:
+          authClientConfigRaw: '{
+                    "realm": "redhat-external",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "ssl-required": "ALL",
+                    "resource": "cloud-services",
+                    "clientId": "cloud-services",
+                    "public-client": true
+                  }'
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          ssoRealm: redhat-external
+        environment: prod
+        replicas: 10
+        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        verification:
+          enabled: true
+          excludedEmailDomains: 'redhat.com'
+          secret:
+            ref: host-operator-secret
+            twilioAccountSID: twilio.account.sid # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioAuthToken: twilio.auth.token  # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioFromNumber: twilio.from_number # TODO remove twilio config as phone verification is not needed in Konflux
+      toolchainStatus:
+        gitHubSecret:
+          ref: host-operator-secret
+          accessTokenKey: github.access.token
+    members:
+      default:
+        skipUserCreation: true
+        auth:
+          idp: DevSandbox
+        autoscaler:
+          bufferMemory: 3Gi
+          bufferReplicas: 10
+          deploy: true
+        che:
+          required: false
+          userDeletionEnabled: false
+        memberStatus:
+          gitHubSecret:
+            ref: member-operator-secret
+            accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
similarity index 90%
rename from components/sandbox/toolchain-host-operator/staging/kustomization.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 562c699b..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+- ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/space-provisioner-configs.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-23ca6757/production/app-of-apps-production.yaml
1709,1717c1709
<           elements:
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
<           - nameNormalized: stone-stg-host
<             values.clusterDir: stone-stg-host
<           - nameNormalized: stone-prd-host1
<             values.clusterDir: stone-prd-host1
---
>           elements: [] 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 23ca6757 to 3849050e on Tue Feb 6 14:35:34 2024 </h3>  
 
<details> 
<summary>Git Diff (161 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index b9c6225f..3781dae4 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -14,7 +14,15 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: toolchain-host-operator-{{nameNormalized}}
diff --git a/components/sandbox/toolchain-host-operator/production/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
similarity index 85%
rename from components/sandbox/toolchain-host-operator/production/kustomization.yaml
rename to components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 443762b7..4e4f1976 100644
--- a/components/sandbox/toolchain-host-operator/production/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
\ No newline at end of file
+- ../../base
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..4e4f1976
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ae43a74e
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..f47d0651
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -0,0 +1,76 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+    host:
+      tiers:
+        defaultTier: 'appstudio'
+        defaultSpaceTier: 'appstudio'
+      automaticApproval:
+        enabled: true
+      capacityThresholds:
+        resourceCapacityThreshold:
+          defaultThreshold: 90
+      spaceConfig:
+        spaceRequestEnabled: true
+        spaceBindingRequestEnabled: true
+      deactivation:
+        deactivationDomainsExcluded: '@redhat.com'
+      notifications:
+        adminEmail: rhtap-infra@redhat.com
+        secret:
+          mailgunAPIKey: mailgun.api.key
+          mailgunDomain: mailgun.domain
+          mailgunReplyToEmail: mailgun.replyto.email
+          mailgunSenderEmail: mailgun.sender.email
+          ref: host-operator-secret
+        templateSetName: 'appstudio'
+      registrationService:
+        auth:
+          authClientConfigRaw: '{
+                    "realm": "redhat-external",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "ssl-required": "ALL",
+                    "resource": "cloud-services",
+                    "clientId": "cloud-services",
+                    "public-client": true
+                  }'
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          ssoRealm: redhat-external
+        environment: prod
+        replicas: 10
+        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        verification:
+          enabled: true
+          excludedEmailDomains: 'redhat.com'
+          secret:
+            ref: host-operator-secret
+            twilioAccountSID: twilio.account.sid # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioAuthToken: twilio.auth.token  # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioFromNumber: twilio.from_number # TODO remove twilio config as phone verification is not needed in Konflux
+      toolchainStatus:
+        gitHubSecret:
+          ref: host-operator-secret
+          accessTokenKey: github.access.token
+    members:
+      default:
+        skipUserCreation: true
+        auth:
+          idp: DevSandbox
+        autoscaler:
+          bufferMemory: 3Gi
+          bufferReplicas: 10
+          deploy: true
+        che:
+          required: false
+          userDeletionEnabled: false
+        memberStatus:
+          gitHubSecret:
+            ref: member-operator-secret
+            accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
similarity index 90%
rename from components/sandbox/toolchain-host-operator/staging/kustomization.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 562c699b..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+- ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/space-provisioner-configs.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-23ca6757/staging/app-of-apps-staging.yaml
1524,1532c1524
<           elements:
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
<           - nameNormalized: stone-stg-host
<             values.clusterDir: stone-stg-host
<           - nameNormalized: stone-prd-host1
<             values.clusterDir: stone-prd-host1
---
>           elements: [] 
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
<h3>4: Development changes from 23ca6757 to 3849050e on Tue Feb 6 14:35:34 2024 </h3>  
 
<details> 
<summary>Git Diff (161 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index b9c6225f..3781dae4 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -14,7 +14,15 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
+                - nameNormalized: stone-prd-host1
+                  values.clusterDir: stone-prd-host1
   template:
     metadata:
       name: toolchain-host-operator-{{nameNormalized}}
diff --git a/components/sandbox/toolchain-host-operator/production/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
similarity index 85%
rename from components/sandbox/toolchain-host-operator/production/kustomization.yaml
rename to components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index 443762b7..4e4f1976 100644
--- a/components/sandbox/toolchain-host-operator/production/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
\ No newline at end of file
+- ../../base
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..4e4f1976
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..ae43a74e
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..f47d0651
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchainconfig.yaml
@@ -0,0 +1,76 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+    host:
+      tiers:
+        defaultTier: 'appstudio'
+        defaultSpaceTier: 'appstudio'
+      automaticApproval:
+        enabled: true
+      capacityThresholds:
+        resourceCapacityThreshold:
+          defaultThreshold: 90
+      spaceConfig:
+        spaceRequestEnabled: true
+        spaceBindingRequestEnabled: true
+      deactivation:
+        deactivationDomainsExcluded: '@redhat.com'
+      notifications:
+        adminEmail: rhtap-infra@redhat.com
+        secret:
+          mailgunAPIKey: mailgun.api.key
+          mailgunDomain: mailgun.domain
+          mailgunReplyToEmail: mailgun.replyto.email
+          mailgunSenderEmail: mailgun.sender.email
+          ref: host-operator-secret
+        templateSetName: 'appstudio'
+      registrationService:
+        auth:
+          authClientConfigRaw: '{
+                    "realm": "redhat-external",
+                    "auth-server-url": "https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth",
+                    "ssl-required": "ALL",
+                    "resource": "cloud-services",
+                    "clientId": "cloud-services",
+                    "public-client": true
+                  }'
+          authClientLibraryURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/js/keycloak.js
+          authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+          ssoBaseURL: https://keycloak-rhtap-auth.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com
+          ssoRealm: redhat-external
+        environment: prod
+        replicas: 10
+        registrationServiceURL: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+        verification:
+          enabled: true
+          excludedEmailDomains: 'redhat.com'
+          secret:
+            ref: host-operator-secret
+            twilioAccountSID: twilio.account.sid # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioAuthToken: twilio.auth.token  # TODO remove twilio config as phone verification is not needed in Konflux
+            twilioFromNumber: twilio.from_number # TODO remove twilio config as phone verification is not needed in Konflux
+      toolchainStatus:
+        gitHubSecret:
+          ref: host-operator-secret
+          accessTokenKey: github.access.token
+    members:
+      default:
+        skipUserCreation: true
+        auth:
+          idp: DevSandbox
+        autoscaler:
+          bufferMemory: 3Gi
+          bufferReplicas: 10
+          deploy: true
+        che:
+          required: false
+          userDeletionEnabled: false
+        memberStatus:
+          gitHubSecret:
+            ref: member-operator-secret
+            accessTokenKey: github.access.token
diff --git a/components/sandbox/toolchain-host-operator/staging/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
similarity index 90%
rename from components/sandbox/toolchain-host-operator/staging/kustomization.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 562c699b..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
+- ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/space-provisioner-configs.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/toolchainconfig.yaml
rename to components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchainconfig.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-23ca6757/development/app-of-apps-development.yaml
1107,1115c1107
<           elements:
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
<           - nameNormalized: stone-stg-host
<             values.clusterDir: stone-stg-host
<           - nameNormalized: stone-prd-host1
<             values.clusterDir: stone-prd-host1
---
>           elements: [] 
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
