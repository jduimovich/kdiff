# kustomize changes tracked by commits 
### This file generated at Fri Jan 12 16:03:43 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a2e786a5 to 1307f370 on Fri Jan 12 14:36:33 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index ab7a2812..48b14fe7 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=de5809f2532b129640c4a00aae76a363be67dcbe
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index adeb58ad..8984b3b1 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8f41c5f6..3b42d3de 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 485c7da1..f1ac2121 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 91d5f6ac..f4e1c607 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 856bf7c6..eaf4a3ce 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from a2e786a5 to 1307f370 on Fri Jan 12 14:36:33 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index ab7a2812..48b14fe7 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=de5809f2532b129640c4a00aae76a363be67dcbe
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index adeb58ad..8984b3b1 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8f41c5f6..3b42d3de 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 485c7da1..f1ac2121 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 91d5f6ac..f4e1c607 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 856bf7c6..eaf4a3ce 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-a2e786a5/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1203c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
1876,1877d1875
<       buckets: 1
<       disable-ha: false
1880d1877
<       replicas: 1
1894d1890
<     disabled: true
1895a1892,1894
>     resources:
>     - pipelinerun
>     schedule: 0/2 * * * *
./commit-a2e786a5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1203c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
1876,1877d1875
<       buckets: 1
<       disable-ha: false
1880d1877
<       replicas: 1
1894d1890
<     disabled: true
1895a1892,1894
>     resources:
>     - pipelinerun
>     schedule: 0/2 * * * *
./commit-a2e786a5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1203c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
1876,1877d1875
<       buckets: 1
<       disable-ha: false
1880d1877
<       replicas: 1
1894d1890
<     disabled: true
1895a1892,1894
>     resources:
>     - pipelinerun
>     schedule: 0/2 * * * * 
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
<h3>1: Development changes from a2e786a5 to 1307f370 on Fri Jan 12 14:36:33 2024 </h3>  
 
<details> 
<summary>Git Diff (149 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index ab7a2812..48b14fe7 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=de5809f2532b129640c4a00aae76a363be67dcbe
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index adeb58ad..8984b3b1 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8f41c5f6..3b42d3de 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=867a3e00b4e39f9e0faeeb9d8a31b96896d52b5a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 485c7da1..f1ac2121 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 91d5f6ac..f4e1c607 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 856bf7c6..eaf4a3ce 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1200,7 +1200,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1873,8 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
+      buckets: 1
+      disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
+      replicas: 1
       threads-per-controller: 32
   platforms:
     openshift:
@@ -1888,10 +1891,8 @@ spec:
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
   profile: all
   pruner:
+    disabled: true
     keep: 2
-    resources:
-    - pipelinerun
-    schedule: 0/2 * * * *
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-a2e786a5/development/components/pipeline-service/development/kustomize.out.yaml
1204c1204
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:8f321cb4da5a2f939199e2bc12924c15de32d5ac
2008,2009d2007
<       buckets: 1
<       disable-ha: false
2012d2009
<       replicas: 1
2020c2017,2020
<     disabled: true
---
>     keep: 10
>     resources:
>     - pipelinerun
>     schedule: 0/2 * * * * 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from cd1f6faa to a2e786a5 on Fri Jan 12 13:14:12 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/.tekton/tasks/rebase-pr.yaml b/.tekton/tasks/rebase-pr.yaml
index 4cef7934..9ed07a78 100644
--- a/.tekton/tasks/rebase-pr.yaml
+++ b/.tekton/tasks/rebase-pr.yaml
@@ -21,6 +21,11 @@ spec:
         git fetch
         git config --global user.email "rhtap-ci-bot@redhat.com"
         git config --global user.name "RHTAP CI Robot"
-        git rebase origin/main
+
+        if ! git rebase origin/main; then
+          echo "Rebase failed, output the diff in the files"
+          git diff origin/main
+          exit 1
+        fi
 
         echo "successfully rebased"
diff --git a/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml b/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
index 3b2117c1..f9f7ee54 100644
--- a/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
+++ b/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
@@ -1,11 +1,11 @@
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: appstudio-gitops-service-argocd-argocd-application-clusterrolebinding
+  name: appstudio-openshift-gitops-argocd-application-controller-clusterrolebinding
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: appstudio-gitops-service-argocd-argocd-application-controller
+  name: appstudio-openshift-gitops-argocd-application-controller
 subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from cd1f6faa to a2e786a5 on Fri Jan 12 13:14:12 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/.tekton/tasks/rebase-pr.yaml b/.tekton/tasks/rebase-pr.yaml
index 4cef7934..9ed07a78 100644
--- a/.tekton/tasks/rebase-pr.yaml
+++ b/.tekton/tasks/rebase-pr.yaml
@@ -21,6 +21,11 @@ spec:
         git fetch
         git config --global user.email "rhtap-ci-bot@redhat.com"
         git config --global user.name "RHTAP CI Robot"
-        git rebase origin/main
+
+        if ! git rebase origin/main; then
+          echo "Rebase failed, output the diff in the files"
+          git diff origin/main
+          exit 1
+        fi
 
         echo "successfully rebased"
diff --git a/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml b/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
index 3b2117c1..f9f7ee54 100644
--- a/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
+++ b/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
@@ -1,11 +1,11 @@
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: appstudio-gitops-service-argocd-argocd-application-clusterrolebinding
+  name: appstudio-openshift-gitops-argocd-application-controller-clusterrolebinding
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: appstudio-gitops-service-argocd-argocd-application-controller
+  name: appstudio-openshift-gitops-argocd-application-controller
 subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-cd1f6faa/staging/components/promotion/staging/stone-stg-rh01/kustomize.out.yaml
62c62
<   name: appstudio-openshift-gitops-argocd-application-controller-clusterrolebinding
---
>   name: appstudio-gitops-service-argocd-argocd-application-clusterrolebinding
66c66
<   name: appstudio-openshift-gitops-argocd-application-controller
---
>   name: appstudio-gitops-service-argocd-argocd-application-controller 
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
<h3>2: Development changes from cd1f6faa to a2e786a5 on Fri Jan 12 13:14:12 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/.tekton/tasks/rebase-pr.yaml b/.tekton/tasks/rebase-pr.yaml
index 4cef7934..9ed07a78 100644
--- a/.tekton/tasks/rebase-pr.yaml
+++ b/.tekton/tasks/rebase-pr.yaml
@@ -21,6 +21,11 @@ spec:
         git fetch
         git config --global user.email "rhtap-ci-bot@redhat.com"
         git config --global user.name "RHTAP CI Robot"
-        git rebase origin/main
+
+        if ! git rebase origin/main; then
+          echo "Rebase failed, output the diff in the files"
+          git diff origin/main
+          exit 1
+        fi
 
         echo "successfully rebased"
diff --git a/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml b/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
index 3b2117c1..f9f7ee54 100644
--- a/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
+++ b/components/promotion/base/appstudio-gitops-service-argocd-argocd-application-controller-clusterrolebinding.yaml
@@ -1,11 +1,11 @@
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
 metadata:
-  name: appstudio-gitops-service-argocd-argocd-application-clusterrolebinding
+  name: appstudio-openshift-gitops-argocd-application-controller-clusterrolebinding
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
-  name: appstudio-gitops-service-argocd-argocd-application-controller
+  name: appstudio-openshift-gitops-argocd-application-controller
 subjects:
 - kind: ServiceAccount
   name: appstudio-pipeline 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 1c04ec64 to cd1f6faa on Thu Jan 11 19:37:06 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index de5e31f4..8b3e558d 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: enterprise-contract
-spec:
-  url: "https://github.com/enterprise-contract/enterprise-contract-controller"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-service
 spec:
@@ -85,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: ec-golden-image
-spec:
-  url: "https://github.com/enterprise-contract/golden-container"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-1c04ec64/production/components/tekton-ci/production/kustomize.out.yaml
295a296,313
>   name: ec-golden-image
> spec:
>   url: https://github.com/enterprise-contract/golden-container
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: enterprise-contract
> spec:
>   url: https://github.com/enterprise-contract/enterprise-contract-controller
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 1c04ec64 to cd1f6faa on Thu Jan 11 19:37:06 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index de5e31f4..8b3e558d 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: enterprise-contract
-spec:
-  url: "https://github.com/enterprise-contract/enterprise-contract-controller"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-service
 spec:
@@ -85,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: ec-golden-image
-spec:
-  url: "https://github.com/enterprise-contract/golden-container"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-1c04ec64/staging/components/tekton-ci/staging/kustomize.out.yaml
255a256,273
>   name: ec-golden-image
> spec:
>   url: https://github.com/enterprise-contract/golden-container
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: enterprise-contract
> spec:
>   url: https://github.com/enterprise-contract/enterprise-contract-controller
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>3: Development changes from 1c04ec64 to cd1f6faa on Thu Jan 11 19:37:06 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index de5e31f4..8b3e558d 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: enterprise-contract
-spec:
-  url: "https://github.com/enterprise-contract/enterprise-contract-controller"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-service
 spec:
@@ -85,13 +78,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: ec-golden-image
-spec:
-  url: "https://github.com/enterprise-contract/golden-container"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
 spec: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 211c1c8e to 1c04ec64 on Thu Jan 11 19:12:18 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3457d6b8..882f49dd 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 275165a4..993bb158 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 3ff30e95..35dbc31d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 4e3475e7..f5b9b117 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 211c1c8e to 1c04ec64 on Thu Jan 11 19:12:18 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3457d6b8..882f49dd 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 275165a4..993bb158 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 3ff30e95..35dbc31d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 4e3475e7..f5b9b117 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target: 
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
<h3>4: Development changes from 211c1c8e to 1c04ec64 on Thu Jan 11 19:12:18 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index 3457d6b8..882f49dd 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 275165a4..993bb158 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index 3ff30e95..35dbc31d 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index 4e3475e7..f5b9b117 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=444b8cd04901787c64b2e22fdf64c3cece8b2d55
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=5194cbefe5e5802e51931e105f15f62472a88ee9
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 444b8cd04901787c64b2e22fdf64c3cece8b2d55
+    newTag: 5194cbefe5e5802e51931e105f15f62472a88ee9
 
 patches:
   - target: 
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
```
 
</details> 
<br> 


</div>
