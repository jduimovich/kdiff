# kustomize changes tracked by commits 
### This file generated at Wed Jul 17 04:02:43 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b4c0e648 to 9c509186 on Tue Jul 16 20:40:54 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 482e67a6..ba4996f6 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b671ca92..f388f622 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,14 +8,14 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - ../base/rbac
 
 images:
   - name: quay.io/konflux-ci/tekton-results-watcher
     newName: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
+    newTag: dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8855257a..13f1eba7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
@@ -18,7 +18,7 @@ resources:
 images:
   - name: quay.io/konflux-ci/tekton-results-watcher
     newName: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
+    newTag: dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1edcc57f..f9c73951 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 3779bd6b..032751bd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 456a2717..959cf4cb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz 
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
<h3>1: Staging changes from b4c0e648 to 9c509186 on Tue Jul 16 20:40:54 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 482e67a6..ba4996f6 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b671ca92..f388f622 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,14 +8,14 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - ../base/rbac
 
 images:
   - name: quay.io/konflux-ci/tekton-results-watcher
     newName: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
+    newTag: dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8855257a..13f1eba7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
@@ -18,7 +18,7 @@ resources:
 images:
   - name: quay.io/konflux-ci/tekton-results-watcher
     newName: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
+    newTag: dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1edcc57f..f9c73951 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 3779bd6b..032751bd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 456a2717..959cf4cb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-b4c0e648/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1477c1477
<         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
---
>         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
./commit-b4c0e648/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1477c1477
<         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
---
>         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
./commit-b4c0e648/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1477c1477
<         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
---
>         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a 
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
<h3>1: Development changes from b4c0e648 to 9c509186 on Tue Jul 16 20:40:54 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 482e67a6..ba4996f6 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b671ca92..f388f622 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,14 +8,14 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - ../base/rbac
 
 images:
   - name: quay.io/konflux-ci/tekton-results-watcher
     newName: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
+    newTag: dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8855257a..13f1eba7 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
@@ -18,7 +18,7 @@ resources:
 images:
   - name: quay.io/konflux-ci/tekton-results-watcher
     newName: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
+    newTag: dcd5b72748435ed46b9e1487b8a3011dabe2b9b8
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1edcc57f..f9c73951 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 3779bd6b..032751bd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 456a2717..959cf4cb 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1474,7 +1474,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
+        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
         livenessProbe:
           httpGet:
             path: /healthz 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b4c0e648/development/components/pipeline-service/development/kustomize.out.yaml
1317c1317
<         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
---
>         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a 
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
<h3>2: Production changes from d0850ace to b4c0e648 on Tue Jul 16 17:33:43 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index bbe40298..b54b58cc 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -12,10 +12,11 @@ spec:
   selector:
     matchLabels:
       app: proxy
+  minReadySeconds: 60
   strategy:
     rollingUpdate:
-      maxSurge: 25%
-      maxUnavailable: 25%
+      maxSurge: 1
+      maxUnavailable: 0
   template:
     metadata:
       labels:
@@ -62,10 +63,20 @@ spec:
             path: /health
             port: 8080
             scheme: HTTP
-          initialDelaySeconds: 10
+          initialDelaySeconds: 60
           periodSeconds: 60
           successThreshold: 1
           timeoutSeconds: 1
+        readinessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 8080
+            scheme: HTTP
+          initialDelaySeconds: 60
+          periodSeconds: 30
+          successThreshold: 3
+          timeoutSeconds: 1
         ports:
         - containerPort: 8080
           name: web 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-d0850ace/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
522d521
<   minReadySeconds: 60
529,530c528,529
<       maxSurge: 1
<       maxUnavailable: 0
---
>       maxSurge: 25%
>       maxUnavailable: 25%
548c547
<           initialDelaySeconds: 60
---
>           initialDelaySeconds: 10
557,566d555
<         readinessProbe:
<           failureThreshold: 3
<           httpGet:
<             path: /health
<             port: 8080
<             scheme: HTTP
<           initialDelaySeconds: 60
<           periodSeconds: 30
<           successThreshold: 3
<           timeoutSeconds: 1
./commit-d0850ace/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
522d521
<   minReadySeconds: 60
529,530c528,529
<       maxSurge: 1
<       maxUnavailable: 0
---
>       maxSurge: 25%
>       maxUnavailable: 25%
548c547
<           initialDelaySeconds: 60
---
>           initialDelaySeconds: 10
557,566d555
<         readinessProbe:
<           failureThreshold: 3
<           httpGet:
<             path: /health
<             port: 8080
<             scheme: HTTP
<           initialDelaySeconds: 60
<           periodSeconds: 30
<           successThreshold: 3
<           timeoutSeconds: 1 
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
<h3>2: Staging changes from d0850ace to b4c0e648 on Tue Jul 16 17:33:43 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index bbe40298..b54b58cc 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -12,10 +12,11 @@ spec:
   selector:
     matchLabels:
       app: proxy
+  minReadySeconds: 60
   strategy:
     rollingUpdate:
-      maxSurge: 25%
-      maxUnavailable: 25%
+      maxSurge: 1
+      maxUnavailable: 0
   template:
     metadata:
       labels:
@@ -62,10 +63,20 @@ spec:
             path: /health
             port: 8080
             scheme: HTTP
-          initialDelaySeconds: 10
+          initialDelaySeconds: 60
           periodSeconds: 60
           successThreshold: 1
           timeoutSeconds: 1
+        readinessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 8080
+            scheme: HTTP
+          initialDelaySeconds: 60
+          periodSeconds: 30
+          successThreshold: 3
+          timeoutSeconds: 1
         ports:
         - containerPort: 8080
           name: web 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-d0850ace/staging/components/ui/staging/kustomize.out.yaml
522d521
<   minReadySeconds: 60
529,530c528,529
<       maxSurge: 1
<       maxUnavailable: 0
---
>       maxSurge: 25%
>       maxUnavailable: 25%
548c547
<           initialDelaySeconds: 60
---
>           initialDelaySeconds: 10
557,566d555
<         readinessProbe:
<           failureThreshold: 3
<           httpGet:
<             path: /health
<             port: 8080
<             scheme: HTTP
<           initialDelaySeconds: 60
<           periodSeconds: 30
<           successThreshold: 3
<           timeoutSeconds: 1 
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
<h3>2: Development changes from d0850ace to b4c0e648 on Tue Jul 16 17:33:43 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/proxy.yaml b/components/ui/base/proxy/proxy.yaml
index bbe40298..b54b58cc 100644
--- a/components/ui/base/proxy/proxy.yaml
+++ b/components/ui/base/proxy/proxy.yaml
@@ -12,10 +12,11 @@ spec:
   selector:
     matchLabels:
       app: proxy
+  minReadySeconds: 60
   strategy:
     rollingUpdate:
-      maxSurge: 25%
-      maxUnavailable: 25%
+      maxSurge: 1
+      maxUnavailable: 0
   template:
     metadata:
       labels:
@@ -62,10 +63,20 @@ spec:
             path: /health
             port: 8080
             scheme: HTTP
-          initialDelaySeconds: 10
+          initialDelaySeconds: 60
           periodSeconds: 60
           successThreshold: 1
           timeoutSeconds: 1
+        readinessProbe:
+          failureThreshold: 3
+          httpGet:
+            path: /health
+            port: 8080
+            scheme: HTTP
+          initialDelaySeconds: 60
+          periodSeconds: 30
+          successThreshold: 3
+          timeoutSeconds: 1
         ports:
         - containerPort: 8080
           name: web 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
./commit-d0850ace/development/components/ui/development/kustomize.out.yaml
522d521
<   minReadySeconds: 60
529,530c528,529
<       maxSurge: 1
<       maxUnavailable: 0
---
>       maxSurge: 25%
>       maxUnavailable: 25%
548c547
<           initialDelaySeconds: 60
---
>           initialDelaySeconds: 10
557,566d555
<         readinessProbe:
<           failureThreshold: 3
<           httpGet:
<             path: /health
<             port: 8080
<             scheme: HTTP
<           initialDelaySeconds: 60
<           periodSeconds: 30
<           successThreshold: 3
<           timeoutSeconds: 1 
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
<h3>3: Production changes from d1834044 to d0850ace on Tue Jul 16 16:24:58 2024 </h3>  
 
<details> 
<summary>Git Diff (143 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index be93a9f0..b671ca92 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
   - ../base/rbac
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 87e17763..5436cd5f 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -16,6 +16,9 @@ resources:
   - ../../base/certificates
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index b16e780d..9817a9c1 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b0089757..e2b70968 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 6257b081..ce40c073 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 48dd0008..f4e8771b 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 18952610..8855257a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -16,6 +16,9 @@ resources:
   - ../../base/certificates
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-d1834044/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1347c1347
<         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
./commit-d1834044/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1347c1347
<         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
./commit-d1834044/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1347c1347
<         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
./commit-d1834044/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1347c1347
<         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954 
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
<h3>3: Staging changes from d1834044 to d0850ace on Tue Jul 16 16:24:58 2024 </h3>  
 
<details> 
<summary>Git Diff (143 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index be93a9f0..b671ca92 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
   - ../base/rbac
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 87e17763..5436cd5f 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -16,6 +16,9 @@ resources:
   - ../../base/certificates
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index b16e780d..9817a9c1 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b0089757..e2b70968 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 6257b081..ce40c073 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 48dd0008..f4e8771b 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 18952610..8855257a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -16,6 +16,9 @@ resources:
   - ../../base/certificates
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
  
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
<h3>3: Development changes from d1834044 to d0850ace on Tue Jul 16 16:24:58 2024 </h3>  
 
<details> 
<summary>Git Diff (143 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index be93a9f0..b671ca92 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
   - ../base/rbac
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 87e17763..5436cd5f 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=c8432d3352db3ff70828caeb500e86e6bf0cbcdd
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=da64420f8df634736b1aff727155e626ec832dd1
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -16,6 +16,9 @@ resources:
   - ../../base/certificates
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
 
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index b16e780d..9817a9c1 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b0089757..e2b70968 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 6257b081..ce40c073 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 48dd0008..f4e8771b 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1344,7 +1344,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c18a1079e58315454fb3ddf2ea9dc3c5cd4dc954
+        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -2022,8 +2022,8 @@ spec:
     enable-cluster-resolver: true
     enable-git-resolver: true
     enable-hub-resolver: true
-    enable-tekton-oci-bundles: true
     enable-step-actions: true
+    enable-tekton-oci-bundles: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 18952610..8855257a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -16,6 +16,9 @@ resources:
   - ../../base/certificates
 
 images:
+  - name: quay.io/konflux-ci/tekton-results-watcher
+    newName: quay.io/redhat-appstudio/tekton-results-watcher
+    newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
  
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
<h3>4: Production changes from ac9b2e35 to d1834044 on Tue Jul 16 15:35:28 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index ed907b9b..7833ea07 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,9 +1,7 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- gabemontero
 - stuartwdouglas
 
 reviewers:
-- gabemontero
 - stuartwdouglas 
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
<h3>4: Staging changes from ac9b2e35 to d1834044 on Tue Jul 16 15:35:28 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index ed907b9b..7833ea07 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,9 +1,7 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- gabemontero
 - stuartwdouglas
 
 reviewers:
-- gabemontero
 - stuartwdouglas 
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
<h3>4: Development changes from ac9b2e35 to d1834044 on Tue Jul 16 15:35:28 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/OWNERS b/components/jvm-build-service/OWNERS
index ed907b9b..7833ea07 100644
--- a/components/jvm-build-service/OWNERS
+++ b/components/jvm-build-service/OWNERS
@@ -1,9 +1,7 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
-- gabemontero
 - stuartwdouglas
 
 reviewers:
-- gabemontero
 - stuartwdouglas 
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
