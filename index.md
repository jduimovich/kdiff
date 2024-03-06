# kustomize changes tracked by commits 
### This file generated at Wed Mar  6 08:04:10 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 94b2d127 to ac403e8f on Wed Mar 6 06:55:06 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index a1f33c35..f93c5622 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=b070652abb9382b5d059180157a409b95fa2a9e0
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 28134910..53f36ab9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 43a8dced..2957dba2 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9efbb43f..d11263b2 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a908a351..4a2a2f71 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 08d2f704..21025d9c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 94b2d127 to ac403e8f on Wed Mar 6 06:55:06 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index a1f33c35..f93c5622 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=b070652abb9382b5d059180157a409b95fa2a9e0
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 28134910..53f36ab9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 43a8dced..2957dba2 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9efbb43f..d11263b2 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a908a351..4a2a2f71 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 08d2f704..21025d9c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-94b2d127/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1341c1341
<         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
1495c1495
<         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
./commit-94b2d127/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1341c1341
<         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
1495c1495
<         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
./commit-94b2d127/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1341c1341
<         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
1495c1495
<         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01 
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
<h3>1: Development changes from 94b2d127 to ac403e8f on Wed Mar 6 06:55:06 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index a1f33c35..f93c5622 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=b070652abb9382b5d059180157a409b95fa2a9e0
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 28134910..53f36ab9 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 43a8dced..2957dba2 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=b070652abb9382b5d059180157a409b95fa2a9e0
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9efbb43f..d11263b2 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a908a351..4a2a2f71 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 08d2f704..21025d9c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1492,7 +1492,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
+        image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-94b2d127/development/components/pipeline-service/development/kustomize.out.yaml
1317c1317
<         image: quay.io/redhat-appstudio/tekton-results-api:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
1536c1536
<         image: quay.io/redhat-appstudio/tekton-results-watcher:2eef63e8a52cdc9529ea7ba0b0b8b0c19a8f160e
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01 
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
<h3>2: Production changes from 22a9c816 to 94b2d127 on Tue Mar 5 17:39:36 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 00887ed9..60bf269b 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - ./rbac
 - ./monitoring
 - ./proxy
+- ./olm
diff --git a/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml
new file mode 100644
index 00000000..009f18d8
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: toolchain-host-operator
+resources:
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
rename to components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index c1611035..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,4 +4,3 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
-- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 2a600cf6..9ec5f4e3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -4,6 +4,5 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
-- toolchain-host-operator.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/staging/generated-manifests/host
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
deleted file mode 100644
index 37ff29d7..00000000
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  labels:
-    opsrc-provider: codeready-toolchain
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  displayName: Dev Sandbox Operators
-  image: quay.io/codeready-toolchain/host-operator-index:latest
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 5m0s
----
-apiVersion: operators.coreos.com/v1
-kind: OperatorGroup
-metadata:
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  targetNamespaces:
-  - toolchain-host-operator
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  channel: staging
-  installPlanApproval: Automatic
-  name: toolchain-host-operator
-  source: dev-sandbox-host
-  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index e4f884a7..2e323db7 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-member-operator
 resources:
 - ../../base
 - ./rbac
+- ./olm
diff --git a/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml
new file mode 100644
index 00000000..fd4abbe2
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
similarity index 100%
rename from components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
rename to components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index 49f0cc1a..3acca002 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -2,6 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- toolchain-member-operator.yaml
 - sandbox-sre-member.yaml
 - ../../user-management/staging/generated-manifests/member 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 22a9c816 to 94b2d127 on Tue Mar 5 17:39:36 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 00887ed9..60bf269b 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - ./rbac
 - ./monitoring
 - ./proxy
+- ./olm
diff --git a/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml
new file mode 100644
index 00000000..009f18d8
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: toolchain-host-operator
+resources:
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
rename to components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index c1611035..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,4 +4,3 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
-- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 2a600cf6..9ec5f4e3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -4,6 +4,5 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
-- toolchain-host-operator.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/staging/generated-manifests/host
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
deleted file mode 100644
index 37ff29d7..00000000
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  labels:
-    opsrc-provider: codeready-toolchain
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  displayName: Dev Sandbox Operators
-  image: quay.io/codeready-toolchain/host-operator-index:latest
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 5m0s
----
-apiVersion: operators.coreos.com/v1
-kind: OperatorGroup
-metadata:
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  targetNamespaces:
-  - toolchain-host-operator
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  channel: staging
-  installPlanApproval: Automatic
-  name: toolchain-host-operator
-  source: dev-sandbox-host
-  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index e4f884a7..2e323db7 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-member-operator
 resources:
 - ../../base
 - ./rbac
+- ./olm
diff --git a/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml
new file mode 100644
index 00000000..fd4abbe2
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
similarity index 100%
rename from components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
rename to components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index 49f0cc1a..3acca002 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -2,6 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- toolchain-member-operator.yaml
 - sandbox-sre-member.yaml
 - ../../user-management/staging/generated-manifests/member 
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
<h3>2: Development changes from 22a9c816 to 94b2d127 on Tue Mar 5 17:39:36 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index 00887ed9..60bf269b 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -6,3 +6,4 @@ resources:
 - ./rbac
 - ./monitoring
 - ./proxy
+- ./olm
diff --git a/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml
new file mode 100644
index 00000000..009f18d8
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/olm/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: toolchain-host-operator
+resources:
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
similarity index 100%
rename from components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
rename to components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index c1611035..ee2d63df 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,4 +4,3 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
-- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index 2a600cf6..9ec5f4e3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -4,6 +4,5 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
-- toolchain-host-operator.yaml
 - sandbox-sre-host.yaml
 - ../../../user-management/staging/generated-manifests/host
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
deleted file mode 100644
index 37ff29d7..00000000
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  labels:
-    opsrc-provider: codeready-toolchain
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  displayName: Dev Sandbox Operators
-  image: quay.io/codeready-toolchain/host-operator-index:latest
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 5m0s
----
-apiVersion: operators.coreos.com/v1
-kind: OperatorGroup
-metadata:
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  targetNamespaces:
-  - toolchain-host-operator
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: dev-sandbox-host
-  namespace: toolchain-host-operator
-spec:
-  channel: staging
-  installPlanApproval: Automatic
-  name: toolchain-host-operator
-  source: dev-sandbox-host
-  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/base/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
index e4f884a7..2e323db7 100644
--- a/components/sandbox/toolchain-member-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-member-operator
 resources:
 - ../../base
 - ./rbac
+- ./olm
diff --git a/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml b/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml
new file mode 100644
index 00000000..fd4abbe2
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/base/olm/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
similarity index 100%
rename from components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
rename to components/sandbox/toolchain-member-operator/base/olm/toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index 49f0cc1a..3acca002 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -2,6 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- toolchain-member-operator.yaml
 - sandbox-sre-member.yaml
 - ../../user-management/staging/generated-manifests/member 
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
<h3>3: Production changes from 31632b29 to 22a9c816 on Tue Mar 5 16:47:23 2024 </h3>  
 
<details> 
<summary>Git Diff (5818 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index ee2d63df..31600060 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -4,3 +4,5 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- sandbox-sre-host.yaml
+- ../../../user-management/production/generated-manifests/host
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml
new file mode 100644
index 00000000..5b7868bf
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml
@@ -0,0 +1,4 @@
+kind: Namespace
+apiVersion: v1
+metadata:
+  name: sandbox-sre-host
diff --git a/components/sandbox/toolchain-member-operator/production/kustomization.yaml b/components/sandbox/toolchain-member-operator/production/kustomization.yaml
index bdf7ce4f..a3b9f805 100644
--- a/components/sandbox/toolchain-member-operator/production/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/production/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- sandbox-sre-member.yaml
+- ../../user-management/production/generated-manifests/member
diff --git a/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml b/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml
new file mode 100644
index 00000000..701a82bf
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml
@@ -0,0 +1,4 @@
+kind: Namespace
+apiVersion: v1
+metadata:
+  name: sandbox-sre-member
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index 1d0ce7cf..49f0cc1a 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - toolchain-member-operator.yaml
 - sandbox-sre-member.yaml
 - ../../user-management/staging/generated-manifests/member
-
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
new file mode 100644
index 00000000..738c2164
--- /dev/null
+++ b/components/sandbox/user-management/production/README.adoc
@@ -0,0 +1,9 @@
+To apply any changes done in sandbox-config.yaml file run:
+```
+sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+```
+
+To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+```
+sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
new file mode 100644
index 00000000..cff4d062
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-alkazako-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
new file mode 100644
index 00000000..e1d8d7a8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-mjobanek-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
new file mode 100644
index 00000000..83eca87b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-xcoulon-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml
new file mode 100644
index 00000000..0e28cb63
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
+- clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
+- clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml
new file mode 100644
index 00000000..8d520351
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrolebindings
diff --git a/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml
new file mode 100644
index 00000000..a3dae5af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- cluster-scoped
+- namespace-scoped
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml
new file mode 100644
index 00000000..9c4618a7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- sandbox-sre-host
+- toolchain-host-operator
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml
new file mode 100644
index 00000000..e515ec65
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- serviceaccounts
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
new file mode 100644
index 00000000..a791c9d6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: alkazako
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
new file mode 100644
index 00000000..28e1a7dd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bcook
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
new file mode 100644
index 00000000..3f4a2cb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bkundu
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
new file mode 100644
index 00000000..a27ff28e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bsutter
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
new file mode 100644
index 00000000..98bd1186
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: dfodor
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
new file mode 100644
index 00000000..ed76fa1a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: ergonzal
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
new file mode 100644
index 00000000..9938a25b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: fmuntean
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
new file mode 100644
index 00000000..11298b6e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: gbenhaim
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml
new file mode 100644
index 00000000..579fe23d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: krana
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
new file mode 100644
index 00000000..8f5c0f1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -0,0 +1,23 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- alkazako.yaml
+- bcook.yaml
+- bkundu.yaml
+- bsutter.yaml
+- dfodor.yaml
+- ergonzal.yaml
+- fmuntean.yaml
+- gbenhaim.yaml
+- krana.yaml
+- mjobanek.yaml
+- pdave.yaml
+- ralphbean.yaml
+- rorai.yaml
+- rsenthil.yaml
+- saviv.yaml
+- xcoulon.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
new file mode 100644
index 00000000..f5912c22
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: mjobanek
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
new file mode 100644
index 00000000..dc4561c4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: pdave
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
new file mode 100644
index 00000000..250ea743
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: ralphbean
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
new file mode 100644
index 00000000..4fe9ab04
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: rorai
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml
new file mode 100644
index 00000000..e2e78a61
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: rsenthil
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
new file mode 100644
index 00000000..192d2566
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: saviv
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml
new file mode 100644
index 00000000..5e54a871
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: xcoulon
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml
new file mode 100644
index 00000000..ab4975c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- rolebindings
+- roles
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
new file mode 100644
index 00000000..00a59d1b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
new file mode 100644
index 00000000..86896855
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
new file mode 100644
index 00000000..b64bbc15
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bkundu-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
new file mode 100644
index 00000000..91c95753
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
new file mode 100644
index 00000000..d03a4bee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
new file mode 100644
index 00000000..5bf61478
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
new file mode 100644
index 00000000..97e08204
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
new file mode 100644
index 00000000..3d91ce59
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml
new file mode 100644
index 00000000..dda3e087
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
new file mode 100644
index 00000000..7f5ee14b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
new file mode 100644
index 00000000..5883bf73
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-pdave-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
new file mode 100644
index 00000000..41e13874
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
new file mode 100644
index 00000000..19574e54
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-rorai-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml
new file mode 100644
index 00000000..5f398203
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
new file mode 100644
index 00000000..bf5e9eb3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml
new file mode 100644
index 00000000..64c4e687
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
new file mode 100644
index 00000000..37ad6c0c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
new file mode 100644
index 00000000..84c1e2fe
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml
new file mode 100644
index 00000000..444db484
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
new file mode 100644
index 00000000..f43f23ee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml
new file mode 100644
index 00000000..448bbb0d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml
new file mode 100644
index 00000000..ea11d550
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
new file mode 100644
index 00000000..76448c5e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
new file mode 100644
index 00000000..73dae2a0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml
new file mode 100644
index 00000000..2bf47ecb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
new file mode 100644
index 00000000..68820a2e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml
new file mode 100644
index 00000000..1a27244d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml
new file mode 100644
index 00000000..b23585bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
new file mode 100644
index 00000000..90ba28ab
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
new file mode 100644
index 00000000..7d3611e4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
new file mode 100644
index 00000000..3f4d86f2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bkundu-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
new file mode 100644
index 00000000..2685b5a6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
new file mode 100644
index 00000000..810555e2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
new file mode 100644
index 00000000..6457834a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
new file mode 100644
index 00000000..e6a04f06
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
new file mode 100644
index 00000000..52ef7dbb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml
new file mode 100644
index 00000000..96f220f8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
new file mode 100644
index 00000000..c32a5a33
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
new file mode 100644
index 00000000..892a28b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-pdave-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
new file mode 100644
index 00000000..e10ad17e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
new file mode 100644
index 00000000..799ea9db
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-rorai-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml
new file mode 100644
index 00000000..3bceeb91
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
new file mode 100644
index 00000000..37e4de7f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml
new file mode 100644
index 00000000..ec50687d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
new file mode 100644
index 00000000..e335529c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
new file mode 100644
index 00000000..49c97c4b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
new file mode 100644
index 00000000..26134372
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
new file mode 100644
index 00000000..04de6962
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml
new file mode 100644
index 00000000..ea6790bf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
new file mode 100644
index 00000000..0f91f5ef
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml
new file mode 100644
index 00000000..1359d94b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml
new file mode 100644
index 00000000..b8f174bc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
new file mode 100644
index 00000000..067aa023
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
new file mode 100644
index 00000000..d1d14363
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
new file mode 100644
index 00000000..9f0c6f2b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
new file mode 100644
index 00000000..3258fb03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml
new file mode 100644
index 00000000..af52223e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
new file mode 100644
index 00000000..9c8985a3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml
new file mode 100644
index 00000000..3c2bd67a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml
new file mode 100644
index 00000000..b04d6e03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
new file mode 100644
index 00000000..e2988c64
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
new file mode 100644
index 00000000..2b5556de
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml
new file mode 100644
index 00000000..5f00bfd2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
new file mode 100644
index 00000000..1653c952
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -0,0 +1,102 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- approve-user-alkazako-host.yaml
+- approve-user-bcook-host.yaml
+- approve-user-bkundu-host.yaml
+- approve-user-bsutter-host.yaml
+- approve-user-dfodor-host.yaml
+- approve-user-ergonzal-host.yaml
+- approve-user-fmuntean-host.yaml
+- approve-user-gbenhaim-host.yaml
+- approve-user-krana-host.yaml
+- approve-user-mjobanek-host.yaml
+- approve-user-pdave-host.yaml
+- approve-user-ralphbean-host.yaml
+- approve-user-rorai-host.yaml
+- approve-user-rsenthil-host.yaml
+- approve-user-saviv-host.yaml
+- approve-user-xcoulon-host.yaml
+- ban-user-alkazako-host.yaml
+- ban-user-fmuntean-host.yaml
+- ban-user-krana-host.yaml
+- ban-user-mjobanek-host.yaml
+- ban-user-rsenthil-host.yaml
+- ban-user-xcoulon-host.yaml
+- clusterrole-edit-alkazako-host.yaml
+- clusterrole-edit-fmuntean-host.yaml
+- clusterrole-edit-krana-host.yaml
+- clusterrole-edit-mjobanek-host.yaml
+- clusterrole-edit-rsenthil-host.yaml
+- clusterrole-edit-xcoulon-host.yaml
+- clusterrole-view-alkazako-host.yaml
+- clusterrole-view-bcook-host.yaml
+- clusterrole-view-bkundu-host.yaml
+- clusterrole-view-bsutter-host.yaml
+- clusterrole-view-dfodor-host.yaml
+- clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-fmuntean-host.yaml
+- clusterrole-view-gbenhaim-host.yaml
+- clusterrole-view-krana-host.yaml
+- clusterrole-view-mjobanek-host.yaml
+- clusterrole-view-pdave-host.yaml
+- clusterrole-view-ralphbean-host.yaml
+- clusterrole-view-rorai-host.yaml
+- clusterrole-view-rsenthil-host.yaml
+- clusterrole-view-saviv-host.yaml
+- clusterrole-view-xcoulon-host.yaml
+- deactivate-user-alkazako-host.yaml
+- deactivate-user-bcook-host.yaml
+- deactivate-user-bsutter-host.yaml
+- deactivate-user-fmuntean-host.yaml
+- deactivate-user-krana-host.yaml
+- deactivate-user-mjobanek-host.yaml
+- deactivate-user-rsenthil-host.yaml
+- deactivate-user-xcoulon-host.yaml
+- gdpr-delete-alkazako-host.yaml
+- gdpr-delete-bcook-host.yaml
+- gdpr-delete-bsutter-host.yaml
+- gdpr-delete-fmuntean-host.yaml
+- gdpr-delete-krana-host.yaml
+- gdpr-delete-mjobanek-host.yaml
+- gdpr-delete-rsenthil-host.yaml
+- gdpr-delete-xcoulon-host.yaml
+- install-operator-alkazako-host.yaml
+- install-operator-mjobanek-host.yaml
+- install-operator-xcoulon-host.yaml
+- promote-user-alkazako-host.yaml
+- promote-user-bcook-host.yaml
+- promote-user-bsutter-host.yaml
+- promote-user-fmuntean-host.yaml
+- promote-user-krana-host.yaml
+- promote-user-mjobanek-host.yaml
+- promote-user-rsenthil-host.yaml
+- promote-user-xcoulon-host.yaml
+- register-cluster-alkazako-host.yaml
+- register-cluster-mjobanek-host.yaml
+- register-cluster-xcoulon-host.yaml
+- restart-deployment-alkazako-host.yaml
+- restart-deployment-fmuntean-host.yaml
+- restart-deployment-krana-host.yaml
+- restart-deployment-mjobanek-host.yaml
+- restart-deployment-rsenthil-host.yaml
+- restart-deployment-xcoulon-host.yaml
+- retarget-user-alkazako-host.yaml
+- retarget-user-bcook-host.yaml
+- retarget-user-bsutter-host.yaml
+- retarget-user-dfodor-host.yaml
+- retarget-user-ergonzal-host.yaml
+- retarget-user-gbenhaim-host.yaml
+- retarget-user-mjobanek-host.yaml
+- retarget-user-ralphbean-host.yaml
+- retarget-user-saviv-host.yaml
+- view-secrets-alkazako-host.yaml
+- view-secrets-fmuntean-host.yaml
+- view-secrets-krana-host.yaml
+- view-secrets-mjobanek-host.yaml
+- view-secrets-rsenthil-host.yaml
+- view-secrets-xcoulon-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
new file mode 100644
index 00000000..c00b83b7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
new file mode 100644
index 00000000..90f53aac
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
new file mode 100644
index 00000000..e293aa9c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
new file mode 100644
index 00000000..2d5430db
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml
new file mode 100644
index 00000000..9663d47f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
new file mode 100644
index 00000000..6ef1e167
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml
new file mode 100644
index 00000000..55416a96
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml
new file mode 100644
index 00000000..a6e8b055
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml
new file mode 100644
index 00000000..010af4f7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml
new file mode 100644
index 00000000..8bddf5a9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml
new file mode 100644
index 00000000..bebbe38a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
new file mode 100644
index 00000000..3f41b4e6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
new file mode 100644
index 00000000..244609ce
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml
new file mode 100644
index 00000000..f369c099
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
new file mode 100644
index 00000000..223f1454
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml
new file mode 100644
index 00000000..04b8384d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml
new file mode 100644
index 00000000..71d6b7f1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
new file mode 100644
index 00000000..22f18925
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
new file mode 100644
index 00000000..e8195525
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
new file mode 100644
index 00000000..c762a728
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
new file mode 100644
index 00000000..74da3c3a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
new file mode 100644
index 00000000..64438a50
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
new file mode 100644
index 00000000..2081a843
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
new file mode 100644
index 00000000..94c13313
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
new file mode 100644
index 00000000..f555c4c6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
new file mode 100644
index 00000000..4b3dd001
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
new file mode 100644
index 00000000..acbc145e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
new file mode 100644
index 00000000..98c6ebaa
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml
new file mode 100644
index 00000000..dd4e484d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
new file mode 100644
index 00000000..9af9ffe1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml
new file mode 100644
index 00000000..b6921ac7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml
new file mode 100644
index 00000000..4a7c5316
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
new file mode 100644
index 00000000..452e812e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
new file mode 100644
index 00000000..4851d3ff
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
@@ -0,0 +1,28 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - bannedusers
+  verbs:
+  - get
+  - list
+  - create
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
new file mode 100644
index 00000000..85a28bc4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
new file mode 100644
index 00000000..3e843ee2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
@@ -0,0 +1,21 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - delete
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
new file mode 100644
index 00000000..ed8023c5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
@@ -0,0 +1,25 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - operators.coreos.com
+  resources:
+  - catalogsources
+  - operatorgroups
+  - subscriptions
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
new file mode 100644
index 00000000..b7c85259
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -0,0 +1,17 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- approve-user-host.yaml
+- ban-user-host.yaml
+- deactivate-user-host.yaml
+- gdpr-delete-host.yaml
+- install-operator-host.yaml
+- promote-user-host.yaml
+- register-cluster-host.yaml
+- restart-deployment-host.yaml
+- retarget-user-host.yaml
+- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
new file mode 100644
index 00000000..e5df6b50
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
@@ -0,0 +1,31 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - masteruserrecords
+  - spaces
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - nstemplatetiers
+  - usertiers
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml
new file mode 100644
index 00000000..829a4bb8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml
@@ -0,0 +1,81 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - ""
+  resources:
+  - serviceaccounts/token
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - delete
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  - roles
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - delete
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - bannedusers
+  - masteruserrecords
+  - notifications
+  - nstemplatetiers
+  - spaces
+  - spacebindings
+  - spaceprovisionerconfigs
+  - tiertemplates
+  - toolchainclusters
+  - toolchainstatuses
+  - toolchainconfigs
+  - usersignups
+  - usertiers
+  - proxyplugins
+  verbs:
+  - '*'
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
new file mode 100644
index 00000000..b1ec3a1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
new file mode 100644
index 00000000..b13cc33d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spaces
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
new file mode 100644
index 00000000..cadb1082
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
new file mode 100644
index 00000000..9d4d2bb9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-alkazako-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
new file mode 100644
index 00000000..53b3eebb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-mjobanek-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
new file mode 100644
index 00000000..243d641b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-xcoulon-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
new file mode 100644
index 00000000..e7d677e5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-alkazako-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
new file mode 100644
index 00000000..a142577c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-mjobanek-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
new file mode 100644
index 00000000..9998e6fd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-xcoulon-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml
new file mode 100644
index 00000000..f3959f23
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml
@@ -0,0 +1,13 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
+- clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
+- clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
+- clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
+- clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
+- clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml
new file mode 100644
index 00000000..8d520351
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrolebindings
diff --git a/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml
new file mode 100644
index 00000000..a3dae5af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- cluster-scoped
+- namespace-scoped
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml
new file mode 100644
index 00000000..95338b7f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- sandbox-sre-member
+- toolchain-member-operator
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml
new file mode 100644
index 00000000..e515ec65
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- serviceaccounts
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
new file mode 100644
index 00000000..dec628e7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: alkazako
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
new file mode 100644
index 00000000..5ab6b6a5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bcook
+  name: bcook
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
new file mode 100644
index 00000000..371e98c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bkundu
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
new file mode 100644
index 00000000..c9c6cec1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bsutter
+  name: bsutter
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
new file mode 100644
index 00000000..10f2c0fc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: dfodor
+  name: dfodor
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
new file mode 100644
index 00000000..aabae80b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: ergonzal
+  name: ergonzal
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
new file mode 100644
index 00000000..4c928cb0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: fmuntean
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
new file mode 100644
index 00000000..69ed160a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: gbenhaim
+  name: gbenhaim
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml
new file mode 100644
index 00000000..865c94d0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: krana
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
new file mode 100644
index 00000000..8f5c0f1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -0,0 +1,23 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- alkazako.yaml
+- bcook.yaml
+- bkundu.yaml
+- bsutter.yaml
+- dfodor.yaml
+- ergonzal.yaml
+- fmuntean.yaml
+- gbenhaim.yaml
+- krana.yaml
+- mjobanek.yaml
+- pdave.yaml
+- ralphbean.yaml
+- rorai.yaml
+- rsenthil.yaml
+- saviv.yaml
+- xcoulon.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
new file mode 100644
index 00000000..fd23667e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: mjobanek
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
new file mode 100644
index 00000000..ab905ba5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: pdave
+  name: pdave
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
new file mode 100644
index 00000000..26828eda
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: ralphbean
+  name: ralphbean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
new file mode 100644
index 00000000..2fae2717
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: rorai
+  name: rorai
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml
new file mode 100644
index 00000000..05ac5ffe
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: rsenthil
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
new file mode 100644
index 00000000..c814ad9c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: saviv
+  name: saviv
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml
new file mode 100644
index 00000000..bcf2d0f9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: xcoulon
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml
new file mode 100644
index 00000000..ab4975c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- rolebindings
+- roles
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
new file mode 100644
index 00000000..e09ba686
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
new file mode 100644
index 00000000..c326830d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml
new file mode 100644
index 00000000..7246a859
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
new file mode 100644
index 00000000..ea91c195
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml
new file mode 100644
index 00000000..d2e91018
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml
new file mode 100644
index 00000000..a21b2ad3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
new file mode 100644
index 00000000..069eb95e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
new file mode 100644
index 00000000..d77b3807
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bcook-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
new file mode 100644
index 00000000..3eed2bb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bkundu-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
new file mode 100644
index 00000000..2527a3d9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bsutter-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
new file mode 100644
index 00000000..3fa0555d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-dfodor-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
new file mode 100644
index 00000000..f9b6f07a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-ergonzal-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
new file mode 100644
index 00000000..f8961b8f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
new file mode 100644
index 00000000..041c6aee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-gbenhaim-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml
new file mode 100644
index 00000000..1e0f9773
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
new file mode 100644
index 00000000..e6f20631
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
new file mode 100644
index 00000000..7f615584
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-pdave-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
new file mode 100644
index 00000000..e0a7f8a4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-ralphbean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
new file mode 100644
index 00000000..34aa90ad
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-rorai-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml
new file mode 100644
index 00000000..b0044b1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
new file mode 100644
index 00000000..67802bb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-saviv-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml
new file mode 100644
index 00000000..6f026a07
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
new file mode 100644
index 00000000..966ac767
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
new file mode 100644
index 00000000..62df486c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml
new file mode 100644
index 00000000..5aa89459
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
new file mode 100644
index 00000000..de423a2b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -0,0 +1,48 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-edit-alkazako-member.yaml
+- clusterrole-edit-fmuntean-member.yaml
+- clusterrole-edit-krana-member.yaml
+- clusterrole-edit-mjobanek-member.yaml
+- clusterrole-edit-rsenthil-member.yaml
+- clusterrole-edit-xcoulon-member.yaml
+- clusterrole-view-alkazako-member.yaml
+- clusterrole-view-bcook-member.yaml
+- clusterrole-view-bkundu-member.yaml
+- clusterrole-view-bsutter-member.yaml
+- clusterrole-view-dfodor-member.yaml
+- clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-fmuntean-member.yaml
+- clusterrole-view-gbenhaim-member.yaml
+- clusterrole-view-krana-member.yaml
+- clusterrole-view-mjobanek-member.yaml
+- clusterrole-view-pdave-member.yaml
+- clusterrole-view-ralphbean-member.yaml
+- clusterrole-view-rorai-member.yaml
+- clusterrole-view-rsenthil-member.yaml
+- clusterrole-view-saviv-member.yaml
+- clusterrole-view-xcoulon-member.yaml
+- install-operator-alkazako-member.yaml
+- install-operator-mjobanek-member.yaml
+- install-operator-xcoulon-member.yaml
+- register-cluster-alkazako-member.yaml
+- register-cluster-mjobanek-member.yaml
+- register-cluster-xcoulon-member.yaml
+- restart-deployment-alkazako-member.yaml
+- restart-deployment-bkundu-member.yaml
+- restart-deployment-fmuntean-member.yaml
+- restart-deployment-krana-member.yaml
+- restart-deployment-mjobanek-member.yaml
+- restart-deployment-rsenthil-member.yaml
+- restart-deployment-xcoulon-member.yaml
+- view-secrets-alkazako-member.yaml
+- view-secrets-fmuntean-member.yaml
+- view-secrets-krana-member.yaml
+- view-secrets-mjobanek-member.yaml
+- view-secrets-rsenthil-member.yaml
+- view-secrets-xcoulon-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml
new file mode 100644
index 00000000..66ad19ce
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml
new file mode 100644
index 00000000..12d47086
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml
new file mode 100644
index 00000000..12b82d99
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
new file mode 100644
index 00000000..a4b335a1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
new file mode 100644
index 00000000..1c20c6d0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-bkundu-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
new file mode 100644
index 00000000..9cebd881
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml
new file mode 100644
index 00000000..2267bd5c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
new file mode 100644
index 00000000..c8289617
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml
new file mode 100644
index 00000000..c22f22e2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml
new file mode 100644
index 00000000..b5957999
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
new file mode 100644
index 00000000..2ce5d3c5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
new file mode 100644
index 00000000..0880d8fb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml
new file mode 100644
index 00000000..44674178
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
new file mode 100644
index 00000000..8991964c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml
new file mode 100644
index 00000000..43cd4c89
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml
new file mode 100644
index 00000000..77066997
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
new file mode 100644
index 00000000..aff35647
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
@@ -0,0 +1,25 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - operators.coreos.com
+  resources:
+  - catalogsources
+  - operatorgroups
+  - subscriptions
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
new file mode 100644
index 00000000..2f73ef9a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -0,0 +1,11 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- install-operator-member.yaml
+- register-cluster-member.yaml
+- restart-deployment-member.yaml
+- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml
new file mode 100644
index 00000000..7a178ccd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml
@@ -0,0 +1,66 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - ""
+  resources:
+  - serviceaccounts/token
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - delete
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  - roles
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - delete
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - idlers
+  - nstemplatesets
+  - memberstatuses
+  - toolchainclusters
+  - useraccounts
+  - memberoperatorconfigs
+  - spacerequests
+  - spacebindingrequests
+  verbs:
+  - '*'
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
new file mode 100644
index 00000000..5d4dff03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
new file mode 100644
index 00000000..61db037f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
new file mode 100644
index 00000000..5a73e834
--- /dev/null
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -0,0 +1,355 @@
+clusters:
+  host:
+    api: https://api.stone-prd-host1.wdlc.p1.openshiftapps.com:6443
+  members:
+  - api: https://api.stone-prd-m01.84db.p1.openshiftapps.com:6443
+    name: member-1
+  - api: https://api.stone-prd-rh01.pg1f.p1.openshiftapps.com:6443
+    name: member-rh-1
+
+serviceAccounts:
+## service accounts to be used by humans via `sandbox-cli`
+- name: alkazako
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: mjobanek
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      - install-operator
+      - restart-deployment
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: xcoulon
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - gdpr-delete
+      - install-operator
+      - restart-deployment
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: rsenthil
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - view
+      - edit
+
+- name: fmuntean
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - edit
+      - view
+
+- name: krana
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - edit
+      - view
+
+- name: bkundu
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      clusterRoles:
+      - view
+
+- name: rorai
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+#Stone Soup PMs and others with permissions to manage users
+
+- name: pdave
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: bsutter
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: bcook
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: gbenhaim
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: dfodor
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: ergonzal
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: saviv
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: ralphbean
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 31632b29 to 22a9c816 on Tue Mar 5 16:47:23 2024 </h3>  
 
<details> 
<summary>Git Diff (5818 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index ee2d63df..31600060 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -4,3 +4,5 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- sandbox-sre-host.yaml
+- ../../../user-management/production/generated-manifests/host
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml
new file mode 100644
index 00000000..5b7868bf
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml
@@ -0,0 +1,4 @@
+kind: Namespace
+apiVersion: v1
+metadata:
+  name: sandbox-sre-host
diff --git a/components/sandbox/toolchain-member-operator/production/kustomization.yaml b/components/sandbox/toolchain-member-operator/production/kustomization.yaml
index bdf7ce4f..a3b9f805 100644
--- a/components/sandbox/toolchain-member-operator/production/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/production/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- sandbox-sre-member.yaml
+- ../../user-management/production/generated-manifests/member
diff --git a/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml b/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml
new file mode 100644
index 00000000..701a82bf
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml
@@ -0,0 +1,4 @@
+kind: Namespace
+apiVersion: v1
+metadata:
+  name: sandbox-sre-member
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index 1d0ce7cf..49f0cc1a 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - toolchain-member-operator.yaml
 - sandbox-sre-member.yaml
 - ../../user-management/staging/generated-manifests/member
-
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
new file mode 100644
index 00000000..738c2164
--- /dev/null
+++ b/components/sandbox/user-management/production/README.adoc
@@ -0,0 +1,9 @@
+To apply any changes done in sandbox-config.yaml file run:
+```
+sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+```
+
+To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+```
+sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
new file mode 100644
index 00000000..cff4d062
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-alkazako-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
new file mode 100644
index 00000000..e1d8d7a8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-mjobanek-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
new file mode 100644
index 00000000..83eca87b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-xcoulon-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml
new file mode 100644
index 00000000..0e28cb63
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
+- clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
+- clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml
new file mode 100644
index 00000000..8d520351
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrolebindings
diff --git a/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml
new file mode 100644
index 00000000..a3dae5af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- cluster-scoped
+- namespace-scoped
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml
new file mode 100644
index 00000000..9c4618a7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- sandbox-sre-host
+- toolchain-host-operator
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml
new file mode 100644
index 00000000..e515ec65
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- serviceaccounts
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
new file mode 100644
index 00000000..a791c9d6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: alkazako
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
new file mode 100644
index 00000000..28e1a7dd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bcook
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
new file mode 100644
index 00000000..3f4a2cb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bkundu
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
new file mode 100644
index 00000000..a27ff28e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bsutter
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
new file mode 100644
index 00000000..98bd1186
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: dfodor
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
new file mode 100644
index 00000000..ed76fa1a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: ergonzal
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
new file mode 100644
index 00000000..9938a25b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: fmuntean
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
new file mode 100644
index 00000000..11298b6e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: gbenhaim
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml
new file mode 100644
index 00000000..579fe23d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: krana
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
new file mode 100644
index 00000000..8f5c0f1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -0,0 +1,23 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- alkazako.yaml
+- bcook.yaml
+- bkundu.yaml
+- bsutter.yaml
+- dfodor.yaml
+- ergonzal.yaml
+- fmuntean.yaml
+- gbenhaim.yaml
+- krana.yaml
+- mjobanek.yaml
+- pdave.yaml
+- ralphbean.yaml
+- rorai.yaml
+- rsenthil.yaml
+- saviv.yaml
+- xcoulon.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
new file mode 100644
index 00000000..f5912c22
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: mjobanek
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
new file mode 100644
index 00000000..dc4561c4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: pdave
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
new file mode 100644
index 00000000..250ea743
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: ralphbean
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
new file mode 100644
index 00000000..4fe9ab04
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: rorai
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml
new file mode 100644
index 00000000..e2e78a61
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: rsenthil
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
new file mode 100644
index 00000000..192d2566
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: saviv
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml
new file mode 100644
index 00000000..5e54a871
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: xcoulon
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml
new file mode 100644
index 00000000..ab4975c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- rolebindings
+- roles
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
new file mode 100644
index 00000000..00a59d1b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
new file mode 100644
index 00000000..86896855
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
new file mode 100644
index 00000000..b64bbc15
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bkundu-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
new file mode 100644
index 00000000..91c95753
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
new file mode 100644
index 00000000..d03a4bee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
new file mode 100644
index 00000000..5bf61478
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
new file mode 100644
index 00000000..97e08204
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
new file mode 100644
index 00000000..3d91ce59
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml
new file mode 100644
index 00000000..dda3e087
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
new file mode 100644
index 00000000..7f5ee14b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
new file mode 100644
index 00000000..5883bf73
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-pdave-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
new file mode 100644
index 00000000..41e13874
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
new file mode 100644
index 00000000..19574e54
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-rorai-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml
new file mode 100644
index 00000000..5f398203
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
new file mode 100644
index 00000000..bf5e9eb3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml
new file mode 100644
index 00000000..64c4e687
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
new file mode 100644
index 00000000..37ad6c0c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
new file mode 100644
index 00000000..84c1e2fe
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml
new file mode 100644
index 00000000..444db484
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
new file mode 100644
index 00000000..f43f23ee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml
new file mode 100644
index 00000000..448bbb0d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml
new file mode 100644
index 00000000..ea11d550
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
new file mode 100644
index 00000000..76448c5e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
new file mode 100644
index 00000000..73dae2a0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml
new file mode 100644
index 00000000..2bf47ecb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
new file mode 100644
index 00000000..68820a2e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml
new file mode 100644
index 00000000..1a27244d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml
new file mode 100644
index 00000000..b23585bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
new file mode 100644
index 00000000..90ba28ab
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
new file mode 100644
index 00000000..7d3611e4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
new file mode 100644
index 00000000..3f4d86f2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bkundu-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
new file mode 100644
index 00000000..2685b5a6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
new file mode 100644
index 00000000..810555e2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
new file mode 100644
index 00000000..6457834a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
new file mode 100644
index 00000000..e6a04f06
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
new file mode 100644
index 00000000..52ef7dbb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml
new file mode 100644
index 00000000..96f220f8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
new file mode 100644
index 00000000..c32a5a33
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
new file mode 100644
index 00000000..892a28b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-pdave-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
new file mode 100644
index 00000000..e10ad17e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
new file mode 100644
index 00000000..799ea9db
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-rorai-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml
new file mode 100644
index 00000000..3bceeb91
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
new file mode 100644
index 00000000..37e4de7f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml
new file mode 100644
index 00000000..ec50687d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
new file mode 100644
index 00000000..e335529c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
new file mode 100644
index 00000000..49c97c4b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
new file mode 100644
index 00000000..26134372
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
new file mode 100644
index 00000000..04de6962
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml
new file mode 100644
index 00000000..ea6790bf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
new file mode 100644
index 00000000..0f91f5ef
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml
new file mode 100644
index 00000000..1359d94b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml
new file mode 100644
index 00000000..b8f174bc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
new file mode 100644
index 00000000..067aa023
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
new file mode 100644
index 00000000..d1d14363
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
new file mode 100644
index 00000000..9f0c6f2b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
new file mode 100644
index 00000000..3258fb03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml
new file mode 100644
index 00000000..af52223e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
new file mode 100644
index 00000000..9c8985a3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml
new file mode 100644
index 00000000..3c2bd67a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml
new file mode 100644
index 00000000..b04d6e03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
new file mode 100644
index 00000000..e2988c64
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
new file mode 100644
index 00000000..2b5556de
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml
new file mode 100644
index 00000000..5f00bfd2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
new file mode 100644
index 00000000..1653c952
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -0,0 +1,102 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- approve-user-alkazako-host.yaml
+- approve-user-bcook-host.yaml
+- approve-user-bkundu-host.yaml
+- approve-user-bsutter-host.yaml
+- approve-user-dfodor-host.yaml
+- approve-user-ergonzal-host.yaml
+- approve-user-fmuntean-host.yaml
+- approve-user-gbenhaim-host.yaml
+- approve-user-krana-host.yaml
+- approve-user-mjobanek-host.yaml
+- approve-user-pdave-host.yaml
+- approve-user-ralphbean-host.yaml
+- approve-user-rorai-host.yaml
+- approve-user-rsenthil-host.yaml
+- approve-user-saviv-host.yaml
+- approve-user-xcoulon-host.yaml
+- ban-user-alkazako-host.yaml
+- ban-user-fmuntean-host.yaml
+- ban-user-krana-host.yaml
+- ban-user-mjobanek-host.yaml
+- ban-user-rsenthil-host.yaml
+- ban-user-xcoulon-host.yaml
+- clusterrole-edit-alkazako-host.yaml
+- clusterrole-edit-fmuntean-host.yaml
+- clusterrole-edit-krana-host.yaml
+- clusterrole-edit-mjobanek-host.yaml
+- clusterrole-edit-rsenthil-host.yaml
+- clusterrole-edit-xcoulon-host.yaml
+- clusterrole-view-alkazako-host.yaml
+- clusterrole-view-bcook-host.yaml
+- clusterrole-view-bkundu-host.yaml
+- clusterrole-view-bsutter-host.yaml
+- clusterrole-view-dfodor-host.yaml
+- clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-fmuntean-host.yaml
+- clusterrole-view-gbenhaim-host.yaml
+- clusterrole-view-krana-host.yaml
+- clusterrole-view-mjobanek-host.yaml
+- clusterrole-view-pdave-host.yaml
+- clusterrole-view-ralphbean-host.yaml
+- clusterrole-view-rorai-host.yaml
+- clusterrole-view-rsenthil-host.yaml
+- clusterrole-view-saviv-host.yaml
+- clusterrole-view-xcoulon-host.yaml
+- deactivate-user-alkazako-host.yaml
+- deactivate-user-bcook-host.yaml
+- deactivate-user-bsutter-host.yaml
+- deactivate-user-fmuntean-host.yaml
+- deactivate-user-krana-host.yaml
+- deactivate-user-mjobanek-host.yaml
+- deactivate-user-rsenthil-host.yaml
+- deactivate-user-xcoulon-host.yaml
+- gdpr-delete-alkazako-host.yaml
+- gdpr-delete-bcook-host.yaml
+- gdpr-delete-bsutter-host.yaml
+- gdpr-delete-fmuntean-host.yaml
+- gdpr-delete-krana-host.yaml
+- gdpr-delete-mjobanek-host.yaml
+- gdpr-delete-rsenthil-host.yaml
+- gdpr-delete-xcoulon-host.yaml
+- install-operator-alkazako-host.yaml
+- install-operator-mjobanek-host.yaml
+- install-operator-xcoulon-host.yaml
+- promote-user-alkazako-host.yaml
+- promote-user-bcook-host.yaml
+- promote-user-bsutter-host.yaml
+- promote-user-fmuntean-host.yaml
+- promote-user-krana-host.yaml
+- promote-user-mjobanek-host.yaml
+- promote-user-rsenthil-host.yaml
+- promote-user-xcoulon-host.yaml
+- register-cluster-alkazako-host.yaml
+- register-cluster-mjobanek-host.yaml
+- register-cluster-xcoulon-host.yaml
+- restart-deployment-alkazako-host.yaml
+- restart-deployment-fmuntean-host.yaml
+- restart-deployment-krana-host.yaml
+- restart-deployment-mjobanek-host.yaml
+- restart-deployment-rsenthil-host.yaml
+- restart-deployment-xcoulon-host.yaml
+- retarget-user-alkazako-host.yaml
+- retarget-user-bcook-host.yaml
+- retarget-user-bsutter-host.yaml
+- retarget-user-dfodor-host.yaml
+- retarget-user-ergonzal-host.yaml
+- retarget-user-gbenhaim-host.yaml
+- retarget-user-mjobanek-host.yaml
+- retarget-user-ralphbean-host.yaml
+- retarget-user-saviv-host.yaml
+- view-secrets-alkazako-host.yaml
+- view-secrets-fmuntean-host.yaml
+- view-secrets-krana-host.yaml
+- view-secrets-mjobanek-host.yaml
+- view-secrets-rsenthil-host.yaml
+- view-secrets-xcoulon-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
new file mode 100644
index 00000000..c00b83b7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
new file mode 100644
index 00000000..90f53aac
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
new file mode 100644
index 00000000..e293aa9c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
new file mode 100644
index 00000000..2d5430db
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml
new file mode 100644
index 00000000..9663d47f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
new file mode 100644
index 00000000..6ef1e167
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml
new file mode 100644
index 00000000..55416a96
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml
new file mode 100644
index 00000000..a6e8b055
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml
new file mode 100644
index 00000000..010af4f7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml
new file mode 100644
index 00000000..8bddf5a9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml
new file mode 100644
index 00000000..bebbe38a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
new file mode 100644
index 00000000..3f41b4e6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
new file mode 100644
index 00000000..244609ce
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml
new file mode 100644
index 00000000..f369c099
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
new file mode 100644
index 00000000..223f1454
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml
new file mode 100644
index 00000000..04b8384d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml
new file mode 100644
index 00000000..71d6b7f1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
new file mode 100644
index 00000000..22f18925
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
new file mode 100644
index 00000000..e8195525
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
new file mode 100644
index 00000000..c762a728
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
new file mode 100644
index 00000000..74da3c3a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
new file mode 100644
index 00000000..64438a50
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
new file mode 100644
index 00000000..2081a843
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
new file mode 100644
index 00000000..94c13313
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
new file mode 100644
index 00000000..f555c4c6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
new file mode 100644
index 00000000..4b3dd001
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
new file mode 100644
index 00000000..acbc145e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
new file mode 100644
index 00000000..98c6ebaa
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml
new file mode 100644
index 00000000..dd4e484d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
new file mode 100644
index 00000000..9af9ffe1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml
new file mode 100644
index 00000000..b6921ac7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml
new file mode 100644
index 00000000..4a7c5316
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
new file mode 100644
index 00000000..452e812e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
new file mode 100644
index 00000000..4851d3ff
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
@@ -0,0 +1,28 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - bannedusers
+  verbs:
+  - get
+  - list
+  - create
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
new file mode 100644
index 00000000..85a28bc4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
new file mode 100644
index 00000000..3e843ee2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
@@ -0,0 +1,21 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - delete
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
new file mode 100644
index 00000000..ed8023c5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
@@ -0,0 +1,25 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - operators.coreos.com
+  resources:
+  - catalogsources
+  - operatorgroups
+  - subscriptions
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
new file mode 100644
index 00000000..b7c85259
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -0,0 +1,17 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- approve-user-host.yaml
+- ban-user-host.yaml
+- deactivate-user-host.yaml
+- gdpr-delete-host.yaml
+- install-operator-host.yaml
+- promote-user-host.yaml
+- register-cluster-host.yaml
+- restart-deployment-host.yaml
+- retarget-user-host.yaml
+- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
new file mode 100644
index 00000000..e5df6b50
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
@@ -0,0 +1,31 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - masteruserrecords
+  - spaces
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - nstemplatetiers
+  - usertiers
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml
new file mode 100644
index 00000000..829a4bb8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml
@@ -0,0 +1,81 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - ""
+  resources:
+  - serviceaccounts/token
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - delete
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  - roles
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - delete
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - bannedusers
+  - masteruserrecords
+  - notifications
+  - nstemplatetiers
+  - spaces
+  - spacebindings
+  - spaceprovisionerconfigs
+  - tiertemplates
+  - toolchainclusters
+  - toolchainstatuses
+  - toolchainconfigs
+  - usersignups
+  - usertiers
+  - proxyplugins
+  verbs:
+  - '*'
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
new file mode 100644
index 00000000..b1ec3a1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
new file mode 100644
index 00000000..b13cc33d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spaces
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
new file mode 100644
index 00000000..cadb1082
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
new file mode 100644
index 00000000..9d4d2bb9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-alkazako-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
new file mode 100644
index 00000000..53b3eebb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-mjobanek-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
new file mode 100644
index 00000000..243d641b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-xcoulon-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
new file mode 100644
index 00000000..e7d677e5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-alkazako-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
new file mode 100644
index 00000000..a142577c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-mjobanek-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
new file mode 100644
index 00000000..9998e6fd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-xcoulon-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml
new file mode 100644
index 00000000..f3959f23
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml
@@ -0,0 +1,13 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
+- clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
+- clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
+- clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
+- clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
+- clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml
new file mode 100644
index 00000000..8d520351
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrolebindings
diff --git a/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml
new file mode 100644
index 00000000..a3dae5af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- cluster-scoped
+- namespace-scoped
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml
new file mode 100644
index 00000000..95338b7f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- sandbox-sre-member
+- toolchain-member-operator
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml
new file mode 100644
index 00000000..e515ec65
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- serviceaccounts
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
new file mode 100644
index 00000000..dec628e7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: alkazako
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
new file mode 100644
index 00000000..5ab6b6a5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bcook
+  name: bcook
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
new file mode 100644
index 00000000..371e98c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bkundu
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
new file mode 100644
index 00000000..c9c6cec1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bsutter
+  name: bsutter
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
new file mode 100644
index 00000000..10f2c0fc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: dfodor
+  name: dfodor
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
new file mode 100644
index 00000000..aabae80b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: ergonzal
+  name: ergonzal
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
new file mode 100644
index 00000000..4c928cb0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: fmuntean
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
new file mode 100644
index 00000000..69ed160a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: gbenhaim
+  name: gbenhaim
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml
new file mode 100644
index 00000000..865c94d0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: krana
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
new file mode 100644
index 00000000..8f5c0f1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -0,0 +1,23 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- alkazako.yaml
+- bcook.yaml
+- bkundu.yaml
+- bsutter.yaml
+- dfodor.yaml
+- ergonzal.yaml
+- fmuntean.yaml
+- gbenhaim.yaml
+- krana.yaml
+- mjobanek.yaml
+- pdave.yaml
+- ralphbean.yaml
+- rorai.yaml
+- rsenthil.yaml
+- saviv.yaml
+- xcoulon.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
new file mode 100644
index 00000000..fd23667e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: mjobanek
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
new file mode 100644
index 00000000..ab905ba5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: pdave
+  name: pdave
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
new file mode 100644
index 00000000..26828eda
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: ralphbean
+  name: ralphbean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
new file mode 100644
index 00000000..2fae2717
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: rorai
+  name: rorai
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml
new file mode 100644
index 00000000..05ac5ffe
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: rsenthil
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
new file mode 100644
index 00000000..c814ad9c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: saviv
+  name: saviv
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml
new file mode 100644
index 00000000..bcf2d0f9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: xcoulon
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml
new file mode 100644
index 00000000..ab4975c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- rolebindings
+- roles
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
new file mode 100644
index 00000000..e09ba686
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
new file mode 100644
index 00000000..c326830d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml
new file mode 100644
index 00000000..7246a859
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
new file mode 100644
index 00000000..ea91c195
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml
new file mode 100644
index 00000000..d2e91018
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml
new file mode 100644
index 00000000..a21b2ad3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
new file mode 100644
index 00000000..069eb95e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
new file mode 100644
index 00000000..d77b3807
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bcook-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
new file mode 100644
index 00000000..3eed2bb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bkundu-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
new file mode 100644
index 00000000..2527a3d9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bsutter-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
new file mode 100644
index 00000000..3fa0555d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-dfodor-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
new file mode 100644
index 00000000..f9b6f07a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-ergonzal-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
new file mode 100644
index 00000000..f8961b8f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
new file mode 100644
index 00000000..041c6aee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-gbenhaim-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml
new file mode 100644
index 00000000..1e0f9773
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
new file mode 100644
index 00000000..e6f20631
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
new file mode 100644
index 00000000..7f615584
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-pdave-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
new file mode 100644
index 00000000..e0a7f8a4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-ralphbean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
new file mode 100644
index 00000000..34aa90ad
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-rorai-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml
new file mode 100644
index 00000000..b0044b1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
new file mode 100644
index 00000000..67802bb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-saviv-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml
new file mode 100644
index 00000000..6f026a07
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
new file mode 100644
index 00000000..966ac767
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
new file mode 100644
index 00000000..62df486c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml
new file mode 100644
index 00000000..5aa89459
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
new file mode 100644
index 00000000..de423a2b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -0,0 +1,48 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-edit-alkazako-member.yaml
+- clusterrole-edit-fmuntean-member.yaml
+- clusterrole-edit-krana-member.yaml
+- clusterrole-edit-mjobanek-member.yaml
+- clusterrole-edit-rsenthil-member.yaml
+- clusterrole-edit-xcoulon-member.yaml
+- clusterrole-view-alkazako-member.yaml
+- clusterrole-view-bcook-member.yaml
+- clusterrole-view-bkundu-member.yaml
+- clusterrole-view-bsutter-member.yaml
+- clusterrole-view-dfodor-member.yaml
+- clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-fmuntean-member.yaml
+- clusterrole-view-gbenhaim-member.yaml
+- clusterrole-view-krana-member.yaml
+- clusterrole-view-mjobanek-member.yaml
+- clusterrole-view-pdave-member.yaml
+- clusterrole-view-ralphbean-member.yaml
+- clusterrole-view-rorai-member.yaml
+- clusterrole-view-rsenthil-member.yaml
+- clusterrole-view-saviv-member.yaml
+- clusterrole-view-xcoulon-member.yaml
+- install-operator-alkazako-member.yaml
+- install-operator-mjobanek-member.yaml
+- install-operator-xcoulon-member.yaml
+- register-cluster-alkazako-member.yaml
+- register-cluster-mjobanek-member.yaml
+- register-cluster-xcoulon-member.yaml
+- restart-deployment-alkazako-member.yaml
+- restart-deployment-bkundu-member.yaml
+- restart-deployment-fmuntean-member.yaml
+- restart-deployment-krana-member.yaml
+- restart-deployment-mjobanek-member.yaml
+- restart-deployment-rsenthil-member.yaml
+- restart-deployment-xcoulon-member.yaml
+- view-secrets-alkazako-member.yaml
+- view-secrets-fmuntean-member.yaml
+- view-secrets-krana-member.yaml
+- view-secrets-mjobanek-member.yaml
+- view-secrets-rsenthil-member.yaml
+- view-secrets-xcoulon-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml
new file mode 100644
index 00000000..66ad19ce
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml
new file mode 100644
index 00000000..12d47086
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml
new file mode 100644
index 00000000..12b82d99
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
new file mode 100644
index 00000000..a4b335a1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
new file mode 100644
index 00000000..1c20c6d0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-bkundu-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
new file mode 100644
index 00000000..9cebd881
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml
new file mode 100644
index 00000000..2267bd5c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
new file mode 100644
index 00000000..c8289617
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml
new file mode 100644
index 00000000..c22f22e2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml
new file mode 100644
index 00000000..b5957999
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
new file mode 100644
index 00000000..2ce5d3c5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
new file mode 100644
index 00000000..0880d8fb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml
new file mode 100644
index 00000000..44674178
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
new file mode 100644
index 00000000..8991964c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml
new file mode 100644
index 00000000..43cd4c89
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml
new file mode 100644
index 00000000..77066997
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
new file mode 100644
index 00000000..aff35647
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
@@ -0,0 +1,25 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - operators.coreos.com
+  resources:
+  - catalogsources
+  - operatorgroups
+  - subscriptions
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
new file mode 100644
index 00000000..2f73ef9a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -0,0 +1,11 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- install-operator-member.yaml
+- register-cluster-member.yaml
+- restart-deployment-member.yaml
+- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml
new file mode 100644
index 00000000..7a178ccd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml
@@ -0,0 +1,66 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - ""
+  resources:
+  - serviceaccounts/token
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - delete
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  - roles
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - delete
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - idlers
+  - nstemplatesets
+  - memberstatuses
+  - toolchainclusters
+  - useraccounts
+  - memberoperatorconfigs
+  - spacerequests
+  - spacebindingrequests
+  verbs:
+  - '*'
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
new file mode 100644
index 00000000..5d4dff03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
new file mode 100644
index 00000000..61db037f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
new file mode 100644
index 00000000..5a73e834
--- /dev/null
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -0,0 +1,355 @@
+clusters:
+  host:
+    api: https://api.stone-prd-host1.wdlc.p1.openshiftapps.com:6443
+  members:
+  - api: https://api.stone-prd-m01.84db.p1.openshiftapps.com:6443
+    name: member-1
+  - api: https://api.stone-prd-rh01.pg1f.p1.openshiftapps.com:6443
+    name: member-rh-1
+
+serviceAccounts:
+## service accounts to be used by humans via `sandbox-cli`
+- name: alkazako
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: mjobanek
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      - install-operator
+      - restart-deployment
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: xcoulon
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - gdpr-delete
+      - install-operator
+      - restart-deployment
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: rsenthil
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - view
+      - edit
+
+- name: fmuntean
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - edit
+      - view
+
+- name: krana
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - edit
+      - view
+
+- name: bkundu
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      clusterRoles:
+      - view
+
+- name: rorai
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+#Stone Soup PMs and others with permissions to manage users
+
+- name: pdave
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: bsutter
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: bcook
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: gbenhaim
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: dfodor
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: ergonzal
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: saviv
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: ralphbean
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view 
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
<h3>3: Development changes from 31632b29 to 22a9c816 on Tue Mar 5 16:47:23 2024 </h3>  
 
<details> 
<summary>Git Diff (5818 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
index ee2d63df..31600060 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/kustomization.yaml
@@ -4,3 +4,5 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- sandbox-sre-host.yaml
+- ../../../user-management/production/generated-manifests/host
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml
new file mode 100644
index 00000000..5b7868bf
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/sandbox-sre-host.yaml
@@ -0,0 +1,4 @@
+kind: Namespace
+apiVersion: v1
+metadata:
+  name: sandbox-sre-host
diff --git a/components/sandbox/toolchain-member-operator/production/kustomization.yaml b/components/sandbox/toolchain-member-operator/production/kustomization.yaml
index bdf7ce4f..a3b9f805 100644
--- a/components/sandbox/toolchain-member-operator/production/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/production/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- sandbox-sre-member.yaml
+- ../../user-management/production/generated-manifests/member
diff --git a/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml b/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml
new file mode 100644
index 00000000..701a82bf
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/production/sandbox-sre-member.yaml
@@ -0,0 +1,4 @@
+kind: Namespace
+apiVersion: v1
+metadata:
+  name: sandbox-sre-member
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index 1d0ce7cf..49f0cc1a 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - toolchain-member-operator.yaml
 - sandbox-sre-member.yaml
 - ../../user-management/staging/generated-manifests/member
-
diff --git a/components/sandbox/user-management/production/README.adoc b/components/sandbox/user-management/production/README.adoc
new file mode 100644
index 00000000..738c2164
--- /dev/null
+++ b/components/sandbox/user-management/production/README.adoc
@@ -0,0 +1,9 @@
+To apply any changes done in sandbox-config.yaml file run:
+```
+sandbox-cli adm setup -c sandbox-config.yaml --out-dir generated-manifests/
+```
+
+To generate sandbox.yaml files for all ServiceAccounts listed in sandbox-config.yaml file, run:
+```
+sandbox-cli adm generate-cli-configs -c sandbox-config.yaml -k <./paths/to/all/production-kubeconfigs>
+```
\ No newline at end of file
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
new file mode 100644
index 00000000..cff4d062
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-alkazako-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
new file mode 100644
index 00000000..e1d8d7a8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-mjobanek-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
new file mode 100644
index 00000000..83eca87b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-xcoulon-host
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml
new file mode 100644
index 00000000..0e28cb63
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/clusterrolebindings/kustomization.yaml
@@ -0,0 +1,10 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-register-cluster-extra-permissions-alkazako-host.yaml
+- clusterrole-register-cluster-extra-permissions-mjobanek-host.yaml
+- clusterrole-register-cluster-extra-permissions-xcoulon-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml
new file mode 100644
index 00000000..8d520351
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/cluster-scoped/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrolebindings
diff --git a/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml
new file mode 100644
index 00000000..a3dae5af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- cluster-scoped
+- namespace-scoped
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml
new file mode 100644
index 00000000..9c4618a7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- sandbox-sre-host
+- toolchain-host-operator
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml
new file mode 100644
index 00000000..e515ec65
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- serviceaccounts
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
new file mode 100644
index 00000000..a791c9d6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/alkazako.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: alkazako
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
new file mode 100644
index 00000000..28e1a7dd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bcook.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bcook
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
new file mode 100644
index 00000000..3f4a2cb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bkundu.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bkundu
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
new file mode 100644
index 00000000..a27ff28e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/bsutter.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: bsutter
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
new file mode 100644
index 00000000..98bd1186
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/dfodor.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: dfodor
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
new file mode 100644
index 00000000..ed76fa1a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ergonzal.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: ergonzal
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
new file mode 100644
index 00000000..9938a25b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/fmuntean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: fmuntean
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
new file mode 100644
index 00000000..11298b6e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/gbenhaim.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: gbenhaim
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml
new file mode 100644
index 00000000..579fe23d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/krana.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: krana
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
new file mode 100644
index 00000000..8f5c0f1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/kustomization.yaml
@@ -0,0 +1,23 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- alkazako.yaml
+- bcook.yaml
+- bkundu.yaml
+- bsutter.yaml
+- dfodor.yaml
+- ergonzal.yaml
+- fmuntean.yaml
+- gbenhaim.yaml
+- krana.yaml
+- mjobanek.yaml
+- pdave.yaml
+- ralphbean.yaml
+- rorai.yaml
+- rsenthil.yaml
+- saviv.yaml
+- xcoulon.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
new file mode 100644
index 00000000..f5912c22
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/mjobanek.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: mjobanek
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
new file mode 100644
index 00000000..dc4561c4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/pdave.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: pdave
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
new file mode 100644
index 00000000..250ea743
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/ralphbean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: ralphbean
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
new file mode 100644
index 00000000..4fe9ab04
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rorai.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: rorai
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml
new file mode 100644
index 00000000..e2e78a61
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/rsenthil.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: rsenthil
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
new file mode 100644
index 00000000..192d2566
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/saviv.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: saviv
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml
new file mode 100644
index 00000000..5e54a871
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/sandbox-sre-host/serviceaccounts/xcoulon.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: host
+    provider: sandbox-sre
+    username: xcoulon
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml
new file mode 100644
index 00000000..ab4975c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- rolebindings
+- roles
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
new file mode 100644
index 00000000..00a59d1b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
new file mode 100644
index 00000000..86896855
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
new file mode 100644
index 00000000..b64bbc15
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bkundu-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bkundu-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
new file mode 100644
index 00000000..91c95753
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
new file mode 100644
index 00000000..d03a4bee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
new file mode 100644
index 00000000..5bf61478
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
new file mode 100644
index 00000000..97e08204
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
new file mode 100644
index 00000000..3d91ce59
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml
new file mode 100644
index 00000000..dda3e087
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
new file mode 100644
index 00000000..7f5ee14b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
new file mode 100644
index 00000000..5883bf73
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-pdave-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-pdave-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
new file mode 100644
index 00000000..41e13874
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
new file mode 100644
index 00000000..19574e54
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rorai-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-rorai-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml
new file mode 100644
index 00000000..5f398203
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
new file mode 100644
index 00000000..bf5e9eb3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml
new file mode 100644
index 00000000..64c4e687
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/approve-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: approve-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
new file mode 100644
index 00000000..37ad6c0c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
new file mode 100644
index 00000000..84c1e2fe
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml
new file mode 100644
index 00000000..444db484
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
new file mode 100644
index 00000000..f43f23ee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml
new file mode 100644
index 00000000..448bbb0d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml
new file mode 100644
index 00000000..ea11d550
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/ban-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: ban-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
new file mode 100644
index 00000000..76448c5e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
new file mode 100644
index 00000000..73dae2a0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml
new file mode 100644
index 00000000..2bf47ecb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
new file mode 100644
index 00000000..68820a2e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml
new file mode 100644
index 00000000..1a27244d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml
new file mode 100644
index 00000000..b23585bb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-edit-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-edit-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
new file mode 100644
index 00000000..90ba28ab
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
new file mode 100644
index 00000000..7d3611e4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
new file mode 100644
index 00000000..3f4d86f2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bkundu-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bkundu-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
new file mode 100644
index 00000000..2685b5a6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
new file mode 100644
index 00000000..810555e2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
new file mode 100644
index 00000000..6457834a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
new file mode 100644
index 00000000..e6a04f06
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
new file mode 100644
index 00000000..52ef7dbb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml
new file mode 100644
index 00000000..96f220f8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
new file mode 100644
index 00000000..c32a5a33
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
new file mode 100644
index 00000000..892a28b2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-pdave-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-pdave-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
new file mode 100644
index 00000000..e10ad17e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
new file mode 100644
index 00000000..799ea9db
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rorai-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-rorai-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml
new file mode 100644
index 00000000..3bceeb91
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
new file mode 100644
index 00000000..37e4de7f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml
new file mode 100644
index 00000000..ec50687d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/clusterrole-view-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: clusterrole-view-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
new file mode 100644
index 00000000..e335529c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
new file mode 100644
index 00000000..49c97c4b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
new file mode 100644
index 00000000..26134372
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
new file mode 100644
index 00000000..04de6962
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml
new file mode 100644
index 00000000..ea6790bf
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
new file mode 100644
index 00000000..0f91f5ef
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml
new file mode 100644
index 00000000..1359d94b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml
new file mode 100644
index 00000000..b8f174bc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/deactivate-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: deactivate-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
new file mode 100644
index 00000000..067aa023
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
new file mode 100644
index 00000000..d1d14363
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
new file mode 100644
index 00000000..9f0c6f2b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
new file mode 100644
index 00000000..3258fb03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml
new file mode 100644
index 00000000..af52223e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
new file mode 100644
index 00000000..9c8985a3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml
new file mode 100644
index 00000000..3c2bd67a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml
new file mode 100644
index 00000000..b04d6e03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/gdpr-delete-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: gdpr-delete-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
new file mode 100644
index 00000000..e2988c64
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
new file mode 100644
index 00000000..2b5556de
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml
new file mode 100644
index 00000000..5f00bfd2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/install-operator-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
new file mode 100644
index 00000000..1653c952
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/kustomization.yaml
@@ -0,0 +1,102 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- approve-user-alkazako-host.yaml
+- approve-user-bcook-host.yaml
+- approve-user-bkundu-host.yaml
+- approve-user-bsutter-host.yaml
+- approve-user-dfodor-host.yaml
+- approve-user-ergonzal-host.yaml
+- approve-user-fmuntean-host.yaml
+- approve-user-gbenhaim-host.yaml
+- approve-user-krana-host.yaml
+- approve-user-mjobanek-host.yaml
+- approve-user-pdave-host.yaml
+- approve-user-ralphbean-host.yaml
+- approve-user-rorai-host.yaml
+- approve-user-rsenthil-host.yaml
+- approve-user-saviv-host.yaml
+- approve-user-xcoulon-host.yaml
+- ban-user-alkazako-host.yaml
+- ban-user-fmuntean-host.yaml
+- ban-user-krana-host.yaml
+- ban-user-mjobanek-host.yaml
+- ban-user-rsenthil-host.yaml
+- ban-user-xcoulon-host.yaml
+- clusterrole-edit-alkazako-host.yaml
+- clusterrole-edit-fmuntean-host.yaml
+- clusterrole-edit-krana-host.yaml
+- clusterrole-edit-mjobanek-host.yaml
+- clusterrole-edit-rsenthil-host.yaml
+- clusterrole-edit-xcoulon-host.yaml
+- clusterrole-view-alkazako-host.yaml
+- clusterrole-view-bcook-host.yaml
+- clusterrole-view-bkundu-host.yaml
+- clusterrole-view-bsutter-host.yaml
+- clusterrole-view-dfodor-host.yaml
+- clusterrole-view-ergonzal-host.yaml
+- clusterrole-view-fmuntean-host.yaml
+- clusterrole-view-gbenhaim-host.yaml
+- clusterrole-view-krana-host.yaml
+- clusterrole-view-mjobanek-host.yaml
+- clusterrole-view-pdave-host.yaml
+- clusterrole-view-ralphbean-host.yaml
+- clusterrole-view-rorai-host.yaml
+- clusterrole-view-rsenthil-host.yaml
+- clusterrole-view-saviv-host.yaml
+- clusterrole-view-xcoulon-host.yaml
+- deactivate-user-alkazako-host.yaml
+- deactivate-user-bcook-host.yaml
+- deactivate-user-bsutter-host.yaml
+- deactivate-user-fmuntean-host.yaml
+- deactivate-user-krana-host.yaml
+- deactivate-user-mjobanek-host.yaml
+- deactivate-user-rsenthil-host.yaml
+- deactivate-user-xcoulon-host.yaml
+- gdpr-delete-alkazako-host.yaml
+- gdpr-delete-bcook-host.yaml
+- gdpr-delete-bsutter-host.yaml
+- gdpr-delete-fmuntean-host.yaml
+- gdpr-delete-krana-host.yaml
+- gdpr-delete-mjobanek-host.yaml
+- gdpr-delete-rsenthil-host.yaml
+- gdpr-delete-xcoulon-host.yaml
+- install-operator-alkazako-host.yaml
+- install-operator-mjobanek-host.yaml
+- install-operator-xcoulon-host.yaml
+- promote-user-alkazako-host.yaml
+- promote-user-bcook-host.yaml
+- promote-user-bsutter-host.yaml
+- promote-user-fmuntean-host.yaml
+- promote-user-krana-host.yaml
+- promote-user-mjobanek-host.yaml
+- promote-user-rsenthil-host.yaml
+- promote-user-xcoulon-host.yaml
+- register-cluster-alkazako-host.yaml
+- register-cluster-mjobanek-host.yaml
+- register-cluster-xcoulon-host.yaml
+- restart-deployment-alkazako-host.yaml
+- restart-deployment-fmuntean-host.yaml
+- restart-deployment-krana-host.yaml
+- restart-deployment-mjobanek-host.yaml
+- restart-deployment-rsenthil-host.yaml
+- restart-deployment-xcoulon-host.yaml
+- retarget-user-alkazako-host.yaml
+- retarget-user-bcook-host.yaml
+- retarget-user-bsutter-host.yaml
+- retarget-user-dfodor-host.yaml
+- retarget-user-ergonzal-host.yaml
+- retarget-user-gbenhaim-host.yaml
+- retarget-user-mjobanek-host.yaml
+- retarget-user-ralphbean-host.yaml
+- retarget-user-saviv-host.yaml
+- view-secrets-alkazako-host.yaml
+- view-secrets-fmuntean-host.yaml
+- view-secrets-krana-host.yaml
+- view-secrets-mjobanek-host.yaml
+- view-secrets-rsenthil-host.yaml
+- view-secrets-xcoulon-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
new file mode 100644
index 00000000..c00b83b7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
new file mode 100644
index 00000000..90f53aac
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
new file mode 100644
index 00000000..e293aa9c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
new file mode 100644
index 00000000..2d5430db
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml
new file mode 100644
index 00000000..9663d47f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
new file mode 100644
index 00000000..6ef1e167
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml
new file mode 100644
index 00000000..55416a96
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml
new file mode 100644
index 00000000..a6e8b055
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/promote-user-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: promote-user-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml
new file mode 100644
index 00000000..010af4f7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml
new file mode 100644
index 00000000..8bddf5a9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml
new file mode 100644
index 00000000..bebbe38a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/register-cluster-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
new file mode 100644
index 00000000..3f41b4e6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
new file mode 100644
index 00000000..244609ce
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml
new file mode 100644
index 00000000..f369c099
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
new file mode 100644
index 00000000..223f1454
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml
new file mode 100644
index 00000000..04b8384d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml
new file mode 100644
index 00000000..71d6b7f1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/restart-deployment-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
new file mode 100644
index 00000000..22f18925
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
new file mode 100644
index 00000000..e8195525
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bcook-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-bcook-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
new file mode 100644
index 00000000..c762a728
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-bsutter-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-bsutter-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
new file mode 100644
index 00000000..74da3c3a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-dfodor-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-dfodor-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
new file mode 100644
index 00000000..64438a50
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ergonzal-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-ergonzal-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
new file mode 100644
index 00000000..2081a843
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-gbenhaim-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-gbenhaim-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
new file mode 100644
index 00000000..94c13313
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
new file mode 100644
index 00000000..f555c4c6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-ralphbean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-ralphbean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
new file mode 100644
index 00000000..4b3dd001
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/retarget-user-saviv-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-saviv-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: retarget-user-host
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
new file mode 100644
index 00000000..acbc145e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-alkazako-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-alkazako-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
new file mode 100644
index 00000000..98c6ebaa
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-fmuntean-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-fmuntean-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml
new file mode 100644
index 00000000..dd4e484d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-krana-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-krana-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
new file mode 100644
index 00000000..9af9ffe1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-mjobanek-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-mjobanek-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml
new file mode 100644
index 00000000..b6921ac7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-rsenthil-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-rsenthil-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml
new file mode 100644
index 00000000..4a7c5316
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/rolebindings/view-secrets-xcoulon-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-xcoulon-host
+  namespace: toolchain-host-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-host
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-host
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
new file mode 100644
index 00000000..452e812e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/approve-user-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: approve-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
new file mode 100644
index 00000000..4851d3ff
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/ban-user-host.yaml
@@ -0,0 +1,28 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: ban-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - bannedusers
+  verbs:
+  - get
+  - list
+  - create
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
new file mode 100644
index 00000000..85a28bc4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/deactivate-user-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: deactivate-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
new file mode 100644
index 00000000..3e843ee2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/gdpr-delete-host.yaml
@@ -0,0 +1,21 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: gdpr-delete-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+  - delete
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
new file mode 100644
index 00000000..ed8023c5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/install-operator-host.yaml
@@ -0,0 +1,25 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: install-operator-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - operators.coreos.com
+  resources:
+  - catalogsources
+  - operatorgroups
+  - subscriptions
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
new file mode 100644
index 00000000..b7c85259
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/kustomization.yaml
@@ -0,0 +1,17 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- approve-user-host.yaml
+- ban-user-host.yaml
+- deactivate-user-host.yaml
+- gdpr-delete-host.yaml
+- install-operator-host.yaml
+- promote-user-host.yaml
+- register-cluster-host.yaml
+- restart-deployment-host.yaml
+- retarget-user-host.yaml
+- view-secrets-host.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
new file mode 100644
index 00000000..e5df6b50
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/promote-user-host.yaml
@@ -0,0 +1,31 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: promote-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - masteruserrecords
+  - spaces
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - nstemplatetiers
+  - usertiers
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml
new file mode 100644
index 00000000..829a4bb8
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/register-cluster-host.yaml
@@ -0,0 +1,81 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: register-cluster-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - ""
+  resources:
+  - serviceaccounts/token
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - delete
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  - roles
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - delete
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - bannedusers
+  - masteruserrecords
+  - notifications
+  - nstemplatetiers
+  - spaces
+  - spacebindings
+  - spaceprovisionerconfigs
+  - tiertemplates
+  - toolchainclusters
+  - toolchainstatuses
+  - toolchainconfigs
+  - usersignups
+  - usertiers
+  - proxyplugins
+  verbs:
+  - '*'
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
new file mode 100644
index 00000000..b1ec3a1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/restart-deployment-host.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: restart-deployment-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
new file mode 100644
index 00000000..b13cc33d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/retarget-user-host.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: retarget-user-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - usersignups
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - spaces
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
new file mode 100644
index 00000000..cadb1082
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/host/namespace-scoped/toolchain-host-operator/roles/view-secrets-host.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: host
+    provider: sandbox-sre
+  name: view-secrets-host
+  namespace: toolchain-host-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
new file mode 100644
index 00000000..9d4d2bb9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-alkazako-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
new file mode 100644
index 00000000..53b3eebb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-mjobanek-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
new file mode 100644
index 00000000..243d641b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-member-permissions-xcoulon-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-member-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
new file mode 100644
index 00000000..e7d677e5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-alkazako-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
new file mode 100644
index 00000000..a142577c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-mjobanek-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
new file mode 100644
index 00000000..9998e6fd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
@@ -0,0 +1,19 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-register-cluster-extra-permissions-xcoulon-member
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: register-cluster-extra-permissions
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml
new file mode 100644
index 00000000..f3959f23
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/clusterrolebindings/kustomization.yaml
@@ -0,0 +1,13 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-register-cluster-extra-member-permissions-alkazako-member.yaml
+- clusterrole-register-cluster-extra-member-permissions-mjobanek-member.yaml
+- clusterrole-register-cluster-extra-member-permissions-xcoulon-member.yaml
+- clusterrole-register-cluster-extra-permissions-alkazako-member.yaml
+- clusterrole-register-cluster-extra-permissions-mjobanek-member.yaml
+- clusterrole-register-cluster-extra-permissions-xcoulon-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml
new file mode 100644
index 00000000..8d520351
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/cluster-scoped/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrolebindings
diff --git a/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml
new file mode 100644
index 00000000..a3dae5af
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- cluster-scoped
+- namespace-scoped
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml
new file mode 100644
index 00000000..95338b7f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- sandbox-sre-member
+- toolchain-member-operator
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml
new file mode 100644
index 00000000..e515ec65
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/kustomization.yaml
@@ -0,0 +1,8 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- serviceaccounts
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
new file mode 100644
index 00000000..dec628e7
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/alkazako.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: alkazako
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
new file mode 100644
index 00000000..5ab6b6a5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bcook.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bcook
+  name: bcook
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
new file mode 100644
index 00000000..371e98c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bkundu.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bkundu
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
new file mode 100644
index 00000000..c9c6cec1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/bsutter.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: bsutter
+  name: bsutter
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
new file mode 100644
index 00000000..10f2c0fc
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/dfodor.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: dfodor
+  name: dfodor
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
new file mode 100644
index 00000000..aabae80b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ergonzal.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: ergonzal
+  name: ergonzal
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
new file mode 100644
index 00000000..4c928cb0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/fmuntean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: fmuntean
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
new file mode 100644
index 00000000..69ed160a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/gbenhaim.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: gbenhaim
+  name: gbenhaim
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml
new file mode 100644
index 00000000..865c94d0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/krana.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: krana
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
new file mode 100644
index 00000000..8f5c0f1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/kustomization.yaml
@@ -0,0 +1,23 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- alkazako.yaml
+- bcook.yaml
+- bkundu.yaml
+- bsutter.yaml
+- dfodor.yaml
+- ergonzal.yaml
+- fmuntean.yaml
+- gbenhaim.yaml
+- krana.yaml
+- mjobanek.yaml
+- pdave.yaml
+- ralphbean.yaml
+- rorai.yaml
+- rsenthil.yaml
+- saviv.yaml
+- xcoulon.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
new file mode 100644
index 00000000..fd23667e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/mjobanek.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: mjobanek
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
new file mode 100644
index 00000000..ab905ba5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/pdave.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: pdave
+  name: pdave
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
new file mode 100644
index 00000000..26828eda
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/ralphbean.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: ralphbean
+  name: ralphbean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
new file mode 100644
index 00000000..2fae2717
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rorai.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: rorai
+  name: rorai
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml
new file mode 100644
index 00000000..05ac5ffe
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/rsenthil.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: rsenthil
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
new file mode 100644
index 00000000..c814ad9c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/saviv.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: saviv
+  name: saviv
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml
new file mode 100644
index 00000000..bcf2d0f9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/sandbox-sre-member/serviceaccounts/xcoulon.yaml
@@ -0,0 +1,15 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/compare-options: IgnoreExtraneous
+  labels:
+    operator: member
+    provider: sandbox-sre
+    username: xcoulon
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml
new file mode 100644
index 00000000..ab4975c2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/kustomization.yaml
@@ -0,0 +1,9 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- rolebindings
+- roles
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
new file mode 100644
index 00000000..e09ba686
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
new file mode 100644
index 00000000..c326830d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml
new file mode 100644
index 00000000..7246a859
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
new file mode 100644
index 00000000..ea91c195
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml
new file mode 100644
index 00000000..d2e91018
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml
new file mode 100644
index 00000000..a21b2ad3
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-edit-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-edit-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
new file mode 100644
index 00000000..069eb95e
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
new file mode 100644
index 00000000..d77b3807
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bcook-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bcook-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bcook
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
new file mode 100644
index 00000000..3eed2bb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bkundu-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bkundu-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
new file mode 100644
index 00000000..2527a3d9
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-bsutter-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-bsutter-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: bsutter
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
new file mode 100644
index 00000000..3fa0555d
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-dfodor-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-dfodor-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: dfodor
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
new file mode 100644
index 00000000..f9b6f07a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ergonzal-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-ergonzal-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ergonzal
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
new file mode 100644
index 00000000..f8961b8f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
new file mode 100644
index 00000000..041c6aee
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-gbenhaim-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-gbenhaim-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: gbenhaim
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml
new file mode 100644
index 00000000..1e0f9773
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
new file mode 100644
index 00000000..e6f20631
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
new file mode 100644
index 00000000..7f615584
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-pdave-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-pdave-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: pdave
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
new file mode 100644
index 00000000..e0a7f8a4
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-ralphbean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-ralphbean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: ralphbean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
new file mode 100644
index 00000000..34aa90ad
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rorai-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-rorai-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rorai
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml
new file mode 100644
index 00000000..b0044b1c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
new file mode 100644
index 00000000..67802bb6
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-saviv-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-saviv-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: saviv
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml
new file mode 100644
index 00000000..6f026a07
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/clusterrole-view-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: clusterrole-view-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: view
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
new file mode 100644
index 00000000..966ac767
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
new file mode 100644
index 00000000..62df486c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml
new file mode 100644
index 00000000..5aa89459
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/install-operator-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: install-operator-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
new file mode 100644
index 00000000..de423a2b
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/kustomization.yaml
@@ -0,0 +1,48 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- clusterrole-edit-alkazako-member.yaml
+- clusterrole-edit-fmuntean-member.yaml
+- clusterrole-edit-krana-member.yaml
+- clusterrole-edit-mjobanek-member.yaml
+- clusterrole-edit-rsenthil-member.yaml
+- clusterrole-edit-xcoulon-member.yaml
+- clusterrole-view-alkazako-member.yaml
+- clusterrole-view-bcook-member.yaml
+- clusterrole-view-bkundu-member.yaml
+- clusterrole-view-bsutter-member.yaml
+- clusterrole-view-dfodor-member.yaml
+- clusterrole-view-ergonzal-member.yaml
+- clusterrole-view-fmuntean-member.yaml
+- clusterrole-view-gbenhaim-member.yaml
+- clusterrole-view-krana-member.yaml
+- clusterrole-view-mjobanek-member.yaml
+- clusterrole-view-pdave-member.yaml
+- clusterrole-view-ralphbean-member.yaml
+- clusterrole-view-rorai-member.yaml
+- clusterrole-view-rsenthil-member.yaml
+- clusterrole-view-saviv-member.yaml
+- clusterrole-view-xcoulon-member.yaml
+- install-operator-alkazako-member.yaml
+- install-operator-mjobanek-member.yaml
+- install-operator-xcoulon-member.yaml
+- register-cluster-alkazako-member.yaml
+- register-cluster-mjobanek-member.yaml
+- register-cluster-xcoulon-member.yaml
+- restart-deployment-alkazako-member.yaml
+- restart-deployment-bkundu-member.yaml
+- restart-deployment-fmuntean-member.yaml
+- restart-deployment-krana-member.yaml
+- restart-deployment-mjobanek-member.yaml
+- restart-deployment-rsenthil-member.yaml
+- restart-deployment-xcoulon-member.yaml
+- view-secrets-alkazako-member.yaml
+- view-secrets-fmuntean-member.yaml
+- view-secrets-krana-member.yaml
+- view-secrets-mjobanek-member.yaml
+- view-secrets-rsenthil-member.yaml
+- view-secrets-xcoulon-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml
new file mode 100644
index 00000000..66ad19ce
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml
new file mode 100644
index 00000000..12d47086
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml
new file mode 100644
index 00000000..12b82d99
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/register-cluster-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: register-cluster-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
new file mode 100644
index 00000000..a4b335a1
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
new file mode 100644
index 00000000..1c20c6d0
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-bkundu-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-bkundu-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: bkundu
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
new file mode 100644
index 00000000..9cebd881
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml
new file mode 100644
index 00000000..2267bd5c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
new file mode 100644
index 00000000..c8289617
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml
new file mode 100644
index 00000000..c22f22e2
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml
new file mode 100644
index 00000000..b5957999
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/restart-deployment-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: restart-deployment-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
new file mode 100644
index 00000000..2ce5d3c5
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-alkazako-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-alkazako-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: alkazako
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
new file mode 100644
index 00000000..0880d8fb
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-fmuntean-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-fmuntean-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: fmuntean
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml
new file mode 100644
index 00000000..44674178
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-krana-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-krana-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: krana
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
new file mode 100644
index 00000000..8991964c
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-mjobanek-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-mjobanek-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: mjobanek
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml
new file mode 100644
index 00000000..43cd4c89
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-rsenthil-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-rsenthil-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: rsenthil
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml
new file mode 100644
index 00000000..77066997
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/rolebindings/view-secrets-xcoulon-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-xcoulon-member
+  namespace: toolchain-member-operator
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: view-secrets-member
+subjects:
+- kind: ServiceAccount
+  name: xcoulon
+  namespace: sandbox-sre-member
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
new file mode 100644
index 00000000..aff35647
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/install-operator-member.yaml
@@ -0,0 +1,25 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: install-operator-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - operators.coreos.com
+  resources:
+  - catalogsources
+  - operatorgroups
+  - subscriptions
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
new file mode 100644
index 00000000..2f73ef9a
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/kustomization.yaml
@@ -0,0 +1,11 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- install-operator-member.yaml
+- register-cluster-member.yaml
+- restart-deployment-member.yaml
+- view-secrets-member.yaml
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml
new file mode 100644
index 00000000..7a178ccd
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/register-cluster-member.yaml
@@ -0,0 +1,66 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: register-cluster-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - ""
+  resources:
+  - serviceaccounts/token
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - delete
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  - roles
+  verbs:
+  - get
+  - list
+  - create
+  - patch
+  - update
+- apiGroups:
+  - rbac.authorization.k8s.io
+  resources:
+  - rolebindings
+  verbs:
+  - delete
+- apiGroups:
+  - toolchain.dev.openshift.com
+  resources:
+  - idlers
+  - nstemplatesets
+  - memberstatuses
+  - toolchainclusters
+  - useraccounts
+  - memberoperatorconfigs
+  - spacerequests
+  - spacebindingrequests
+  verbs:
+  - '*'
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
new file mode 100644
index 00000000..5d4dff03
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/restart-deployment-member.yaml
@@ -0,0 +1,22 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: restart-deployment-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - apps
+  resources:
+  - deployments
+  verbs:
+  - get
+  - list
+  - patch
+  - update
diff --git a/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
new file mode 100644
index 00000000..61db037f
--- /dev/null
+++ b/components/sandbox/user-management/production/generated-manifests/member/namespace-scoped/toolchain-member-operator/roles/view-secrets-member.yaml
@@ -0,0 +1,20 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  labels:
+    operator: member
+    provider: sandbox-sre
+  name: view-secrets-member
+  namespace: toolchain-member-operator
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
diff --git a/components/sandbox/user-management/production/sandbox-config.yaml b/components/sandbox/user-management/production/sandbox-config.yaml
new file mode 100644
index 00000000..5a73e834
--- /dev/null
+++ b/components/sandbox/user-management/production/sandbox-config.yaml
@@ -0,0 +1,355 @@
+clusters:
+  host:
+    api: https://api.stone-prd-host1.wdlc.p1.openshiftapps.com:6443
+  members:
+  - api: https://api.stone-prd-m01.84db.p1.openshiftapps.com:6443
+    name: member-1
+  - api: https://api.stone-prd-rh01.pg1f.p1.openshiftapps.com:6443
+    name: member-rh-1
+
+serviceAccounts:
+## service accounts to be used by humans via `sandbox-cli`
+- name: alkazako
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: mjobanek
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - retarget-user
+      - gdpr-delete
+      - install-operator
+      - restart-deployment
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: xcoulon
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - register-cluster
+      - promote-user
+      - gdpr-delete
+      - install-operator
+      - restart-deployment
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - install-operator
+      - restart-deployment
+      - view-secrets
+      - register-cluster
+      clusterRoles:
+      - view
+      - edit
+    clusterRoleBindings:
+      clusterRoles:
+      - register-cluster-extra-permissions
+      - register-cluster-extra-member-permissions
+
+- name: rsenthil
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - view
+      - edit
+
+- name: fmuntean
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - edit
+      - view
+
+- name: krana
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - view-secrets
+      - deactivate-user
+      - ban-user
+      - promote-user
+      - gdpr-delete
+      - restart-deployment
+      clusterRoles:
+      - edit
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      - view-secrets
+      clusterRoles:
+      - edit
+      - view
+
+- name: bkundu
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      roles:
+      - restart-deployment
+      clusterRoles:
+      - view
+
+- name: rorai
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+#Stone Soup PMs and others with permissions to manage users
+
+- name: pdave
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: bsutter
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: bcook
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - deactivate-user
+      - gdpr-delete
+      - retarget-user
+      - promote-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: gbenhaim
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: dfodor
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: ergonzal
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: saviv
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view
+
+- name: ralphbean
+  host:
+    roleBindings:
+    - namespace: toolchain-host-operator
+      roles:
+      - approve-user
+      - retarget-user
+      clusterRoles:
+      - view
+  member:
+    roleBindings:
+    - namespace: toolchain-member-operator
+      clusterRoles:
+      - view 
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
<h3>4: Production changes from 6c6ebd0e to 31632b29 on Tue Mar 5 15:46:53 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..6a08230d
--- /dev/null
+++ b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "4Gi"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/memory
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index aac55d59..43a8dced 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
@@ -38,3 +43,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -0,0 +1,13 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "-threadiness"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "32"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b293dda..9efbb43f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 487e89b0..a908a351 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c9398bca..08d2f704 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6c6ebd0e to 31632b29 on Tue Mar 5 15:46:53 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..6a08230d
--- /dev/null
+++ b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "4Gi"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/memory
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index aac55d59..43a8dced 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
@@ -38,3 +43,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -0,0 +1,13 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "-threadiness"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "32"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b293dda..9efbb43f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 487e89b0..a908a351 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c9398bca..08d2f704 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (42 lines)</summary>  

``` 
./commit-6c6ebd0e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1476,1477d1475
<         - -threadiness
<         - "32"
1505c1503
<             memory: 4Gi
---
>             memory: 2Gi
1507,1508c1505,1506
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
>             memory: 64Mi
./commit-6c6ebd0e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1476,1477d1475
<         - -threadiness
<         - "32"
1505c1503
<             memory: 4Gi
---
>             memory: 2Gi
1507,1508c1505,1506
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
>             memory: 64Mi
./commit-6c6ebd0e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1476,1477d1475
<         - -threadiness
<         - "32"
1505c1503
<             memory: 4Gi
---
>             memory: 2Gi
1507,1508c1505,1506
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
>             memory: 64Mi 
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
<h3>4: Development changes from 6c6ebd0e to 31632b29 on Tue Mar 5 15:46:53 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..6a08230d
--- /dev/null
+++ b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "4Gi"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/memory
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index aac55d59..43a8dced 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
@@ -38,3 +43,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -0,0 +1,13 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "-threadiness"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "32"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b293dda..9efbb43f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 487e89b0..a908a351 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c9398bca..08d2f704 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
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
