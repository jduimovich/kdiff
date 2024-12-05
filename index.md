# kustomize changes tracked by commits 
### This file generated at Thu Dec  5 16:05:07 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9543d66b to faa47379 on Thu Dec 5 14:56:12 2024 </h3>  
 
<details> 
<summary>Git Diff (91 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 0e0e6197..593b2e1c 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 85c6ca35..239a2bfa 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index e33d9810..aa05f5f5 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -33,6 +33,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index 36de0825..5f8f34fb 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index c1882d8f..443fa87f 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 661c05e3..4277b22a 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index ffaab889..77b6d7cb 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -29,6 +29,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}} 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 9543d66b to faa47379 on Thu Dec 5 14:56:12 2024 </h3>  
 
<details> 
<summary>Git Diff (91 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 0e0e6197..593b2e1c 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 85c6ca35..239a2bfa 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index e33d9810..aa05f5f5 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -33,6 +33,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index 36de0825..5f8f34fb 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index c1882d8f..443fa87f 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 661c05e3..4277b22a 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index ffaab889..77b6d7cb 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -29,6 +29,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}} 
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
<h3>1: Development changes from 9543d66b to faa47379 on Thu Dec 5 14:56:12 2024 </h3>  
 
<details> 
<summary>Git Diff (91 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 0e0e6197..593b2e1c 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 85c6ca35..239a2bfa 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -27,6 +27,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index e33d9810..aa05f5f5 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -33,6 +33,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index 36de0825..5f8f34fb 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index c1882d8f..443fa87f 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 661c05e3..4277b22a 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -23,6 +23,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index ffaab889..77b6d7cb 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -29,6 +29,8 @@ spec:
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
                   values.clusterDir: stone-prod-p02
+                - nameNormalized: kflux-prd-rh02
+                  values.clusterDir: kflux-prd-rh02
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}} 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-9543d66b/development/app-of-apps-development.yaml
79,80d78
<           - nameNormalized: kflux-prd-rh02
<             values.clusterDir: kflux-prd-rh02
640,641d637
<           - nameNormalized: kflux-prd-rh02
<             values.clusterDir: kflux-prd-rh02
889,890d884
<           - nameNormalized: kflux-prd-rh02
<             values.clusterDir: kflux-prd-rh02
1013,1014d1006
<           - nameNormalized: kflux-prd-rh02
<             values.clusterDir: kflux-prd-rh02
1171,1172d1162
<           - nameNormalized: kflux-prd-rh02
<             values.clusterDir: kflux-prd-rh02 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 9fb53b46 to 9543d66b on Thu Dec 5 13:47:25 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index e46bd233..4e2e3f4d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -201,7 +201,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [[ -n "${HAS_PR_OWNER}" && "${HAS_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/application-service*\")) |= \"https://github.com/${HAS_PR_OWNER}/application-service/config/default?ref=${HAS_PR_SHA}\"" $ROOT/components/has/base/kustomization.yaml
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
-[ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-cis/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
+[ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 9fb53b46 to 9543d66b on Thu Dec 5 13:47:25 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index e46bd233..4e2e3f4d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -201,7 +201,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [[ -n "${HAS_PR_OWNER}" && "${HAS_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/application-service*\")) |= \"https://github.com/${HAS_PR_OWNER}/application-service/config/default?ref=${HAS_PR_SHA}\"" $ROOT/components/has/base/kustomization.yaml
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
-[ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-cis/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
+[ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml 
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
<h3>2: Development changes from 9fb53b46 to 9543d66b on Thu Dec 5 13:47:25 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index e46bd233..4e2e3f4d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -201,7 +201,7 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [[ -n "${HAS_PR_OWNER}" && "${HAS_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/redhat-appstudio/application-service*\")) |= \"https://github.com/${HAS_PR_OWNER}/application-service/config/default?ref=${HAS_PR_SHA}\"" $ROOT/components/has/base/kustomization.yaml
 
 [ -n "${INTEGRATION_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/integration-service\")) |=.newName=\"${INTEGRATION_SERVICE_IMAGE_REPO}\"" $ROOT/components/integration/development/kustomization.yaml
-[ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-cis/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
+[ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
 [ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 13b053d7 to 9fb53b46 on Thu Dec 5 10:09:20 2024 </h3>  
 
<details> 
<summary>Git Diff (151 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 0349a5d2..65b85519 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b4059b09..df6c6a65 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -601,7 +601,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f54e2472..8b3bbc79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -985,7 +985,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6dbbd6c4..61aeefc8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -985,7 +985,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: watcher
         ports:
         - containerPort: 9090 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 13b053d7 to 9fb53b46 on Thu Dec 5 10:09:20 2024 </h3>  
 
<details> 
<summary>Git Diff (151 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 0349a5d2..65b85519 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b4059b09..df6c6a65 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -601,7 +601,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f54e2472..8b3bbc79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -985,7 +985,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6dbbd6c4..61aeefc8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -985,7 +985,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-13b053d7/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
987c987
<     LOGS_PATH=//logs
---
>     LOGS_PATH=/logs
1442c1442
<         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
1545c1545
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
1676c1676
<         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
./commit-13b053d7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
987c987
<     LOGS_PATH=//logs
---
>     LOGS_PATH=/logs
1442c1442
<         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
1545c1545
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
1676c1676
<         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe 
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
<h3>3: Development changes from 13b053d7 to 9fb53b46 on Thu Dec 5 10:09:20 2024 </h3>  
 
<details> 
<summary>Git Diff (151 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 0349a5d2..65b85519 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1060,7 +1060,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1191,7 +1191,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1296,7 +1296,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index b4059b09..df6c6a65 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -601,7 +601,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1055,7 +1055,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1157,7 +1157,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1288,7 +1288,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+          image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f54e2472..8b3bbc79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -985,7 +985,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 6dbbd6c4..61aeefc8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -985,7 +985,7 @@ data:
     LOGS_API=false
     LOGS_TYPE=File
     LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
+    LOGS_PATH=//logs
     S3_BUCKET_NAME=
     S3_ENDPOINT=
     S3_HOSTNAME_IMMUTABLE=false
@@ -1441,7 +1441,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1546,7 +1546,7 @@ spec:
             secretKeyRef:
               key: POSTGRES_PASSWORD
               name: tekton-results-postgres
-        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: retention-policy-agent
         resources:
           limits:
@@ -1677,7 +1677,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-13b053d7/development/components/pipeline-service/development/kustomize.out.yaml
1266c1266
<         image: quay.io/konflux-ci/tekton-results-api:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
1398c1398
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
1503c1503
<         image: quay.io/konflux-ci/tekton-results-watcher:f9ff020184f548ef6bafd3570ee1f22b1b4087d9
---
>         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 3e4e048b to 13b053d7 on Wed Dec 4 21:01:10 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88605502..b74a704a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-3e4e048b/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
./commit-3e4e048b/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 3e4e048b to 13b053d7 on Wed Dec 4 21:01:10 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88605502..b74a704a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-3e4e048b/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590 
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
<h3>4: Development changes from 3e4e048b to 13b053d7 on Wed Dec 4 21:01:10 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 88605502..b74a704a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,12 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-3e4e048b/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d62c0c31005369bc61789fdae7289cc1fc4b4590
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d62c0c31005369bc61789fdae7289cc1fc4b4590
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d62c0c31005369bc61789fdae7289cc1fc4b4590 
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
```
 
</details> 
<br> 


</div>
