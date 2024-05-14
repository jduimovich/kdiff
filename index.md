# kustomize changes tracked by commits 
### This file generated at Tue May 14 04:02:17 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c4b3f841 to c1f7d6ad on Mon May 13 21:20:13 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0924c8ca..439dd934 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index f8d19591..361cb0d9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index e6818a16..d2844549 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b0207856..8068e6ba 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 963bf3b2..c6444339 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b32a7fac..9831307c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
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
<h3>1: Staging changes from c4b3f841 to c1f7d6ad on Mon May 13 21:20:13 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0924c8ca..439dd934 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index f8d19591..361cb0d9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index e6818a16..d2844549 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b0207856..8068e6ba 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 963bf3b2..c6444339 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b32a7fac..9831307c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-c4b3f841/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1160,1163d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1212c1208
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
1883a1880
>     enable-step-actions: true
./commit-c4b3f841/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1160,1163d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1212c1208
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
1883a1880
>     enable-step-actions: true
./commit-c4b3f841/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1160,1163d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1212c1208
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
1883a1880
>     enable-step-actions: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from c4b3f841 to c1f7d6ad on Mon May 13 21:20:13 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0924c8ca..439dd934 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index f8d19591..361cb0d9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - ../base/rbac
 
 images:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index e6818a16..d2844549 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=26d2084062854f0fd90427c21cf5c875a3e537ed
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b0207856..8068e6ba 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 963bf3b2..c6444339 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b32a7fac..9831307c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1157,6 +1157,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1205,7 +1209,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1878,7 +1882,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-c4b3f841/development/components/pipeline-service/development/kustomize.out.yaml
1161,1164d1160
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1213c1209
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:d0109787b251d347f08f5d5e473af7ef5dec54b2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:2782659983c94692497467cd1cf952b1bc1f0da4 
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
<h3>2: Production changes from e56b3aa2 to c4b3f841 on Mon May 13 19:08:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
index a8a5a9db..f8382098 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/some-component
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
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
<h3>2: Staging changes from e56b3aa2 to c4b3f841 on Mon May 13 19:08:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
index a8a5a9db..f8382098 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/some-component
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from e56b3aa2 to c4b3f841 on Mon May 13 19:08:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
index a8a5a9db..f8382098 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/some-component
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
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
<h3>3: Production changes from 1914f52e to e56b3aa2 on Mon May 13 18:21:29 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/enable-step-actions.yaml b/components/pipeline-service/development/enable-step-actions.yaml
new file mode 100644
index 00000000..c58ae84c
--- /dev/null
+++ b/components/pipeline-service/development/enable-step-actions.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    enable-step-actions: true
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 21484446..f8d19591 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -52,3 +52,7 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: enable-step-actions.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..b0207856 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..963bf3b2 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..b32a7fac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
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
<h3>3: Staging changes from 1914f52e to e56b3aa2 on Mon May 13 18:21:29 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/enable-step-actions.yaml b/components/pipeline-service/development/enable-step-actions.yaml
new file mode 100644
index 00000000..c58ae84c
--- /dev/null
+++ b/components/pipeline-service/development/enable-step-actions.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    enable-step-actions: true
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 21484446..f8d19591 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -52,3 +52,7 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: enable-step-actions.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..b0207856 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..963bf3b2 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..b32a7fac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-1914f52e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1880d1879
<     enable-step-actions: true
./commit-1914f52e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1880d1879
<     enable-step-actions: true
./commit-1914f52e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1880d1879
<     enable-step-actions: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 1914f52e to e56b3aa2 on Mon May 13 18:21:29 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/enable-step-actions.yaml b/components/pipeline-service/development/enable-step-actions.yaml
new file mode 100644
index 00000000..c58ae84c
--- /dev/null
+++ b/components/pipeline-service/development/enable-step-actions.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    enable-step-actions: true
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 21484446..f8d19591 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -52,3 +52,7 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: enable-step-actions.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..b0207856 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..963bf3b2 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..b32a7fac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-1914f52e/development/components/pipeline-service/development/kustomize.out.yaml
1988d1987
<     enable-step-actions: true 
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
<h3>4: Production changes from 3377ae9e to 1914f52e on Mon May 13 17:34:43 2024 </h3>  
 
<details> 
<summary>Git Diff (166 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
new file mode 100644
index 00000000..00512f27
--- /dev/null
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component
+components:
+  - ../../k-components/deploy-to-eaas-cluster-merge-generator
+  - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
new file mode 100644
index 00000000..43984fb7
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
new file mode 100644
index 00000000..a8a5a9db
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: some-component
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/some-component
+                environment: staging
+                clusterDir: base
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: some-component-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: some-component
+        server: "{{server}}"
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
new file mode 100644
index 00000000..d9b48f7a
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/selector
+  value:
+      matchLabels:
+        appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
new file mode 100644
index 00000000..b1f28727
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: eaas-cluster-label-selector.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 49c235b7..3c6c2f6c 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..17414faf 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/some-component/base/kustomization.yaml b/components/some-component/base/kustomization.yaml
new file mode 100644
index 00000000..0e7c5a02
--- /dev/null
+++ b/components/some-component/base/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
new file mode 100644
index 00000000..1b5edb88
--- /dev/null
+++ b/components/some-component/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: some-component
diff --git a/components/some-component/production/kustomization.yaml b/components/some-component/production/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/production/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
diff --git a/components/some-component/staging/kustomization.yaml b/components/some-component/staging/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-1914f52e/production/components: some-component 
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
<h3>4: Staging changes from 3377ae9e to 1914f52e on Mon May 13 17:34:43 2024 </h3>  
 
<details> 
<summary>Git Diff (166 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
new file mode 100644
index 00000000..00512f27
--- /dev/null
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component
+components:
+  - ../../k-components/deploy-to-eaas-cluster-merge-generator
+  - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
new file mode 100644
index 00000000..43984fb7
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
new file mode 100644
index 00000000..a8a5a9db
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: some-component
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/some-component
+                environment: staging
+                clusterDir: base
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: some-component-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: some-component
+        server: "{{server}}"
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
new file mode 100644
index 00000000..d9b48f7a
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/selector
+  value:
+      matchLabels:
+        appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
new file mode 100644
index 00000000..b1f28727
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: eaas-cluster-label-selector.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 49c235b7..3c6c2f6c 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..17414faf 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/some-component/base/kustomization.yaml b/components/some-component/base/kustomization.yaml
new file mode 100644
index 00000000..0e7c5a02
--- /dev/null
+++ b/components/some-component/base/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
new file mode 100644
index 00000000..1b5edb88
--- /dev/null
+++ b/components/some-component/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: some-component
diff --git a/components/some-component/production/kustomization.yaml b/components/some-component/production/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/production/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
diff --git a/components/some-component/staging/kustomization.yaml b/components/some-component/staging/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-1914f52e/staging/components: some-component 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 3377ae9e to 1914f52e on Mon May 13 17:34:43 2024 </h3>  
 
<details> 
<summary>Git Diff (166 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
new file mode 100644
index 00000000..00512f27
--- /dev/null
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component
+components:
+  - ../../k-components/deploy-to-eaas-cluster-merge-generator
+  - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
new file mode 100644
index 00000000..43984fb7
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
new file mode 100644
index 00000000..a8a5a9db
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: some-component
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/some-component
+                environment: staging
+                clusterDir: base
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: some-component-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: some-component
+        server: "{{server}}"
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
new file mode 100644
index 00000000..d9b48f7a
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/selector
+  value:
+      matchLabels:
+        appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
new file mode 100644
index 00000000..b1f28727
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: eaas-cluster-label-selector.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 49c235b7..3c6c2f6c 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..17414faf 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/some-component/base/kustomization.yaml b/components/some-component/base/kustomization.yaml
new file mode 100644
index 00000000..0e7c5a02
--- /dev/null
+++ b/components/some-component/base/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
new file mode 100644
index 00000000..1b5edb88
--- /dev/null
+++ b/components/some-component/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: some-component
diff --git a/components/some-component/production/kustomization.yaml b/components/some-component/production/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/production/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
diff --git a/components/some-component/staging/kustomization.yaml b/components/some-component/staging/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base 
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
