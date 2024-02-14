# kustomize changes tracked by commits 
### This file generated at Wed Feb 14 16:08:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from d7c24f8d to 6774856e on Wed Feb 14 15:46:38 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 075d3b5d..3fa0f1c4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b6aa61d2..d0597a20 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 36fbca8d..1182c236 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 16b6e407..158da839 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d1d8d7e0..614160c7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 20e67416..dbde99c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
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
<h3>1: Staging changes from d7c24f8d to 6774856e on Wed Feb 14 15:46:38 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 075d3b5d..3fa0f1c4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b6aa61d2..d0597a20 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 36fbca8d..1182c236 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 16b6e407..158da839 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d1d8d7e0..614160c7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 20e67416..dbde99c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (57 lines)</summary>  

``` 
./commit-d7c24f8d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1466,1482d1465
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100
./commit-d7c24f8d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1466,1482d1465
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100
./commit-d7c24f8d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1466,1482d1465
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100 
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
<h3>1: Development changes from d7c24f8d to 6774856e on Wed Feb 14 15:46:38 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 075d3b5d..3fa0f1c4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b6aa61d2..d0597a20 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 36fbca8d..1182c236 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 16b6e407..158da839 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d1d8d7e0..614160c7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 20e67416..dbde99c4 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1463,6 +1463,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-d7c24f8d/development/components/pipeline-service/development/kustomize.out.yaml
1535,1551d1534
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100
1719c1702
<         value: 13.14.0
---
>         value: 13.10.0
1756c1739
<     targetRevision: 14.0.5
---
>     targetRevision: 12.2.7 
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
<h3>2: Production changes from c6191fc3 to d7c24f8d on Wed Feb 14 14:15:02 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index a44151ff..752535da 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 0f8b7e5d..01b74964 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=70369e567be3dbd90fef3345a1466ed239edf454
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index a710340b..354b572f 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=70369e567be3dbd90fef3345a1466ed239edf454
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index ea9ec4bf..a26135a5 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c6191fc3 to d7c24f8d on Wed Feb 14 14:15:02 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index a44151ff..752535da 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 0f8b7e5d..01b74964 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=70369e567be3dbd90fef3345a1466ed239edf454
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index a710340b..354b572f 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=70369e567be3dbd90fef3345a1466ed239edf454
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index ea9ec4bf..a26135a5 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c6191fc3 to d7c24f8d on Wed Feb 14 14:15:02 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index a44151ff..752535da 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -1,6 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
 - https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 0f8b7e5d..01b74964 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=70369e567be3dbd90fef3345a1466ed239edf454
diff --git a/components/spi/overlays/development/kustomization.yaml b/components/spi/overlays/development/kustomization.yaml
index a710340b..354b572f 100644
--- a/components/spi/overlays/development/kustomization.yaml
+++ b/components/spi/overlays/development/kustomization.yaml
@@ -2,17 +2,17 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=70369e567be3dbd90fef3345a1466ed239edf454
 
 namespace: spi-system
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
 patches:
   - target:
diff --git a/components/spi/overlays/staging/base/kustomization.yaml b/components/spi/overlays/staging/base/kustomization.yaml
index ea9ec4bf..a26135a5 100644
--- a/components/spi/overlays/staging/base/kustomization.yaml
+++ b/components/spi/overlays/staging/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_aws?ref=70369e567be3dbd90fef3345a1466ed239edf454
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/prometheus/base?ref=70369e567be3dbd90fef3345a1466ed239edf454
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,10 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 4cc7d82ee84cbe8b270d7a9c0977cda262535f7c
+    newTag: 70369e567be3dbd90fef3345a1466ed239edf454
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from bf8d1f33 to c6191fc3 on Wed Feb 14 13:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/authentication/base/all/component-maintainer.yaml b/components/authentication/base/all/component-maintainer.yaml
index 80bb213f..0b2bf992 100644
--- a/components/authentication/base/all/component-maintainer.yaml
+++ b/components/authentication/base/all/component-maintainer.yaml
@@ -59,3 +59,4 @@ rules:
     verbs:
       - get
       - patch
+      - delete
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index a68b1c45..229f8bf9 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -4,4 +4,5 @@ resources:
 - grafana-operator.yaml
 - grafana-app.yaml
 - dashboards
+- rbac
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
diff --git a/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml b/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml
new file mode 100644
index 00000000..c18c22a5
--- /dev/null
+++ b/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml
@@ -0,0 +1,12 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-grafana-maintainers
+  namespace: appstudio-grafana
+subjects:
+  - kind: Group
+    name: konflux-o11y
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/monitoring/grafana/base/rbac/kustomization.yaml b/components/monitoring/grafana/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..ff6b3bb9
--- /dev/null
+++ b/components/monitoring/grafana/base/rbac/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - grafana-maintainers.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-bf8d1f33/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
78d77
<   - delete 
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
<h3>3: Staging changes from bf8d1f33 to c6191fc3 on Wed Feb 14 13:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/authentication/base/all/component-maintainer.yaml b/components/authentication/base/all/component-maintainer.yaml
index 80bb213f..0b2bf992 100644
--- a/components/authentication/base/all/component-maintainer.yaml
+++ b/components/authentication/base/all/component-maintainer.yaml
@@ -59,3 +59,4 @@ rules:
     verbs:
       - get
       - patch
+      - delete
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index a68b1c45..229f8bf9 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -4,4 +4,5 @@ resources:
 - grafana-operator.yaml
 - grafana-app.yaml
 - dashboards
+- rbac
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
diff --git a/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml b/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml
new file mode 100644
index 00000000..c18c22a5
--- /dev/null
+++ b/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml
@@ -0,0 +1,12 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-grafana-maintainers
+  namespace: appstudio-grafana
+subjects:
+  - kind: Group
+    name: konflux-o11y
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/monitoring/grafana/base/rbac/kustomization.yaml b/components/monitoring/grafana/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..ff6b3bb9
--- /dev/null
+++ b/components/monitoring/grafana/base/rbac/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - grafana-maintainers.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-bf8d1f33/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
78d77
<   - delete 
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
<h3>3: Development changes from bf8d1f33 to c6191fc3 on Wed Feb 14 13:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/authentication/base/all/component-maintainer.yaml b/components/authentication/base/all/component-maintainer.yaml
index 80bb213f..0b2bf992 100644
--- a/components/authentication/base/all/component-maintainer.yaml
+++ b/components/authentication/base/all/component-maintainer.yaml
@@ -59,3 +59,4 @@ rules:
     verbs:
       - get
       - patch
+      - delete
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index a68b1c45..229f8bf9 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -4,4 +4,5 @@ resources:
 - grafana-operator.yaml
 - grafana-app.yaml
 - dashboards
+- rbac
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
diff --git a/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml b/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml
new file mode 100644
index 00000000..c18c22a5
--- /dev/null
+++ b/components/monitoring/grafana/base/rbac/grafana-maintainers.yaml
@@ -0,0 +1,12 @@
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: appstudio-grafana-maintainers
+  namespace: appstudio-grafana
+subjects:
+  - kind: Group
+    name: konflux-o11y
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: component-maintainer
diff --git a/components/monitoring/grafana/base/rbac/kustomization.yaml b/components/monitoring/grafana/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..ff6b3bb9
--- /dev/null
+++ b/components/monitoring/grafana/base/rbac/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - grafana-maintainers.yaml 
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
<h3>4: Production changes from 77c6b0c4 to bf8d1f33 on Wed Feb 14 13:25:36 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index af5e2102..4b36db18 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:aab6d47217b59d98e949ea161f65b98980b56862dfa01fe82e6a221eb246df9e
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index d19c4360..abafc99c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=b9afdb997985d2d60b904ec71eb2475ca6b710ca
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=34351ebdaa15577a2a1f7fd9550018667551fbcb
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=62fb6b030f68c33442ba051ea58d8ace463fb791
+      - verify_ec_task_git_revision=a1a29bdef9936090713597febbbb1523611d7a80
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-77c6b0c4/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
378c378
<   verify_ec_task_git_revision: a1a29bdef9936090713597febbbb1523611d7a80
---
>   verify_ec_task_git_revision: 62fb6b030f68c33442ba051ea58d8ace463fb791
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:aab6d47217b59d98e949ea161f65b98980b56862dfa01fe82e6a221eb246df9e
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8 
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
<h3>4: Staging changes from 77c6b0c4 to bf8d1f33 on Wed Feb 14 13:25:36 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index af5e2102..4b36db18 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:aab6d47217b59d98e949ea161f65b98980b56862dfa01fe82e6a221eb246df9e
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index d19c4360..abafc99c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=b9afdb997985d2d60b904ec71eb2475ca6b710ca
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=34351ebdaa15577a2a1f7fd9550018667551fbcb
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=62fb6b030f68c33442ba051ea58d8ace463fb791
+      - verify_ec_task_git_revision=a1a29bdef9936090713597febbbb1523611d7a80
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-77c6b0c4/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
378c378
<   verify_ec_task_git_revision: a1a29bdef9936090713597febbbb1523611d7a80
---
>   verify_ec_task_git_revision: 62fb6b030f68c33442ba051ea58d8ace463fb791
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:aab6d47217b59d98e949ea161f65b98980b56862dfa01fe82e6a221eb246df9e
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8 
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
<h3>4: Development changes from 77c6b0c4 to bf8d1f33 on Wed Feb 14 13:25:36 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index af5e2102..4b36db18 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:aab6d47217b59d98e949ea161f65b98980b56862dfa01fe82e6a221eb246df9e
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index d19c4360..abafc99c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=b9afdb997985d2d60b904ec71eb2475ca6b710ca
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=34351ebdaa15577a2a1f7fd9550018667551fbcb
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=62fb6b030f68c33442ba051ea58d8ace463fb791
+      - verify_ec_task_git_revision=a1a29bdef9936090713597febbbb1523611d7a80
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-77c6b0c4/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a1a29bdef9936090713597febbbb1523611d7a80@sha256:3b971f2885da135b773616cc522fa5bce521d6f5881aab4fce2604bd83bfcc42
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:62fb6b030f68c33442ba051ea58d8ace463fb791@sha256:33a6aa933a6ae139b25ddb13307d98d3edb118c5b4b1337986d8cf4032961cc3
378c378
<   verify_ec_task_git_revision: a1a29bdef9936090713597febbbb1523611d7a80
---
>   verify_ec_task_git_revision: 62fb6b030f68c33442ba051ea58d8ace463fb791
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
636c636
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
660c660
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
687c687
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8
706c706
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:52269b3729b24d601d0a1d4d6b9c0425b702dd2a5d6b049c73a8fa3eaa662a5f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-2689d04@sha256:aab6d47217b59d98e949ea161f65b98980b56862dfa01fe82e6a221eb246df9e
732c732
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-8229928@sha256:0e697db0d42416a23a58cc52597057dd12f7eb71bd8930c95564706126c15df6
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-e3f6361@sha256:4ca82fc103e1eb9aa6be280262a29da7e0979a1e9148b04bacf7d056ac8c88c8 
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
